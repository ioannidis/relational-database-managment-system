-- Temporary table
DROP TABLE temp_car_service;
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
  make_id INT NOT NULL,
  model_id INT NOT NULL,
  manufacturing_date NUMERIC(4,0),
  -- service history
  tech_id INT NOT NULL,
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
DECLARE latest_owner_id INT;
BEGIN
  IF NOT EXISTS(SELECT plate as a from car_warehouse WHERE plate = NEW.plate::plate_num) THEN

    -- Firstly we instert the new customer
    INSERT INTO customers(first_name, last_name, afm, email, phone)
    VALUES (NEW.first_name, NEW.last_name, NEW.afm, NEW.email, NEW.phone);

    -- Then we select his id to use it later
    SELECT id INTO latest_owner_id FROM customers
    ORDER BY id DESC LIMIT 1;

    -- Secondly we insert the car in the car warehouse
    INSERT INTO car_warehouse(owner_id, plate, make_id, model_id, manufacturing_date, condition)
    VALUES (latest_owner_id, NEW.plate, NEW.model_id, NEW.make_id, NEW.manufacturing_date, 'used');

    -- Then we select the car's id to use it later
    SELECT id INTO latest_car_id FROM car_warehouse
    ORDER BY id DESC LIMIT 1;

    -- Finally we insert tha data in service_history
    INSERT INTO service_history(car_id, tech_id, cost, start_date, end_date) VALUES (latest_car_id, NEW.tech_id, NEW.cost, NEW.start_date, NEW.end_date);

  ELSE
    -- We select the id of the car based on plate number
    SELECT id INTO latest_car_id
    FROM car_warehouse WHERE plate = NEW.plate;

    -- We insert the data in the service_history table
    INSERT INTO service_history(car_id, tech_id, cost, start_date, end_date) VALUES (latest_car_id, NEW.tech_id, NEW.cost, NEW.start_date, NEW.end_date);

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
                             plate, make_id, model_id, manufacturing_date,
                             tech_id, cost, start_date, end_date)
VALUES ('Panos', 'Ioannidis', 00112233, 'panos277@hotmail.com', '2299066795',
        ROW('AEK', '2172'), 2, 22, 1999,
        11, 999.99, now(), null);

INSERT INTO temp_car_service(first_name, last_name, afm, email, phone,
                             plate, make_id, model_id, manufacturing_date,
                             tech_id, cost, start_date, end_date)
VALUES ('SAKIS', 'NIKAS', 22112233, 'asdasdasd@hotmail.com', '0909888887',
        ROW('PAO', '1234'), 3, 33, 2000,
        3, 100.99, now(), null);

-- This car exist
INSERT INTO temp_car_service(first_name, last_name, afm, email, phone,
                             plate, make_id, model_id, manufacturing_date,
                             tech_id, cost, start_date, end_date)
VALUES ('Thanos', 'Paravantis', 99887766, 'thanos@hotmail.com', '0987654321',
        ROW('LTS','6048'), 2, 22, 1999,
        11, 999.99, now(), null);
-- end dummy data
