--------------------------------------------------------------------------------
-- 3.1.sql
--------------------------------------------------------------------------------

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
DECLARE latest_owner_id INT;
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
VALUES ('Panos', 'Ioannidis', 00112233, 'panos277@hotmail.com', '2299066795',
        ROW('AEK', '2172'), 'SCIR', 1999,
        85601262, 999.99, now(), null);

INSERT INTO temp_car_service(first_name, last_name, afm, email, phone,
                             plate, model_id, manufacturing_date,
                             tech_id, cost, start_date, end_date)
VALUES ('SAKIS', 'NIKAS', 22112233, 'asdasdasd@hotmail.com', '1909888887',
        ROW('PAO', '1234'), 'GOLF', 2000,
        85601262, 100.99, now(), null);

-- This car exist
INSERT INTO temp_car_service(first_name, last_name, afm, email, phone,
                             plate, model_id, manufacturing_date,
                             tech_id, cost, start_date, end_date)
VALUES ('Thanos', 'Paravantis', 99887766, 'thanos@hotmail.com', '0987654321',
        ROW('LTS','6048'), 'R32', 1999,
        85601262, 999.99, now(), null);
-- end dummy data

--------------------------------------------------------------------------------
-- 3.2.sql
--------------------------------------------------------------------------------

DROP FUNCTION IF EXISTS cursor_example();

DROP TYPE IF EXISTS temp_type;

CREATE TYPE temp_type AS (
	title character(60),
	plate plate_num,
	first_name character(60),
	last_name character(60),
	service_count bigint
);

CREATE OR REPLACE FUNCTION cursor_example()
RETURNS SETOF temp_type AS $$
DECLARE
	sample_cursor CURSOR FOR SELECT car_models.title, car_warehouse.plate, customers.first_name, customers.last_name, COUNT(car_models.id) AS service_count
		FROM service_history INNER JOIN car_warehouse ON service_history.car_warehouse_id = car_warehouse.id INNER JOIN customers ON car_warehouse.owner_id = customers.afm INNER JOIN car_models ON car_warehouse.model_id = car_models.id
		WHERE service_history.start_date <= date_trunc('year', now()) - interval '1 year' OR service_history.end_date <= date_trunc('year', now()) - interval '1 year'
		GROUP BY car_models.id, car_warehouse.plate, customers.afm
		HAVING COUNT(car_models.id) > 1
		ORDER BY service_count DESC;
	results temp_type;
BEGIN
	OPEN sample_cursor;

	LOOP
		FETCH sample_cursor INTO results;

		EXIT WHEN NOT FOUND;
		RETURN NEXT results;
	END LOOP;

	CLOSE sample_cursor;
	RETURN;
END; $$

LANGUAGE plpgsql;

SELECT * FROM cursor_example();