-- Temporary table
DROP TABLE IF EXISTS temp_car_service;
CREATE TEMPORARY TABLE temp_car_service(
  id SERIAL NOT NULL ,
  -- customer
  first_name VARCHAR(60) NOT NULL ,
  last_name VARCHAR(60) NOT NULL ,
  afm NUMERIC(8,0) NOT NULL,
  email VARCHAR(60) NOT NULL,
  phone VARCHAR(10) NOT NULL,
  -- car_warhouse
  plate PLATE_NUM,
  model_id VARCHAR(20) NOT NULL,
  manufacturing_date NUMERIC(4,0),
  -- service history
  tech_id NUMERIC(8,0) NOT NULL,
  cost FLOAT NOT NULL ,
  start_date DATE NOT NULL ,
  end_date DATE,

  PRIMARY KEY (id)
);

-- Function that will be called by trigger
DROP FUNCTION IF EXISTS carExists();
CREATE FUNCTION carExists()
  RETURNS TRIGGER AS
$BODY$
DECLARE latest_car_id INT;
BEGIN
  IF NOT EXISTS(SELECT plate AS a FROM car_warehouse WHERE plate = NEW.plate::plate_num) THEN

    -- Firstly we insert the new customer
    INSERT INTO customers(afm, first_name, last_name, email, phone)
    VALUES (NEW.afm, NEW.first_name, NEW.last_name, NEW.email, NEW.phone);

    -- Secondly we insert the car in the car warehouse
    INSERT INTO car_warehouse(owner_id, plate, model_id, manufacturing_date, condition)
    VALUES (NEW.afm, NEW.plate, NEW.model_id, NEW.manufacturing_date, 'used');

    -- Then we select the car's id to use it later
    SELECT id INTO latest_car_id FROM car_warehouse
    ORDER BY id DESC LIMIT 1;

    -- Finally we insert tha data in service_history
    INSERT INTO service_history(car_warehouse_id, tech_id, cost, start_date, end_date) VALUES (latest_car_id, NEW.tech_id, NEW.cost, NEW.start_date, NEW.end_date);

  ELSE
    -- We select the id of the car based on plate number
    SELECT id INTO latest_car_id
    FROM car_warehouse WHERE plate = NEW.plate::plate_num;

    -- We insert the data in the service_history table
    INSERT INTO service_history(car_warehouse_id, tech_id, cost, start_date, end_date) VALUES (latest_car_id, NEW.tech_id, NEW.cost, NEW.start_date, NEW.end_date);

  END IF;
  RETURN NEW;
END;
$BODY$
LANGUAGE 'plpgsql';

-- Trigger creation
DROP TRIGGER IF EXISTS carExists ON temp_car_service;
CREATE TRIGGER carExists
  BEFORE INSERT ON temp_car_service
  FOR EACH ROW
  EXECUTE PROCEDURE carExists();

-- Dummy data for testing
INSERT INTO temp_car_service(first_name, last_name, afm, email, phone,
                             plate, model_id, manufacturing_date,
                             tech_id, cost, start_date, end_date)
VALUES ('Giannis', 'Kontoulis', 99112233, 'ikontoulis@unipi.gr', '2101425859',
        ROW('ZXM', '2172'), 'SCIR', 2011,
        85601262, 150.99, now(), null);

INSERT INTO temp_car_service(first_name, last_name, afm, email, phone,
                             plate, model_id, manufacturing_date,
                             tech_id, cost, start_date, end_date)
VALUES ('Pertos', 'Petrou', 32659814, 'ppetrou@unipi.gr', '2101425860',
        ROW('ZXN', '2173'), 'GOLF', 2000,
        85601262, 100.99, now(), null);

-- This car exist
INSERT INTO temp_car_service(first_name, last_name, afm, email, phone,
                             plate, model_id, manufacturing_date,
                             tech_id, cost, start_date, end_date)
VALUES ('Melany', 'Keitley', 76954758, 'thanos@hotmail.com', '0987654321',
        ROW('LTS','6048'), 'S4', 2010,
        85601262, 340.99, now(), null);
-- end dummy data
