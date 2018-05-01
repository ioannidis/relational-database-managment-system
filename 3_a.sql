-- Erotima 3a
DROP TRIGGER IF EXISTS carExists ON service_history;
CREATE TRIGGER carExists
  BEFORE INSERT ON service_history
  FOR EACH ROW
  EXECUTE PROCEDURE carExists();

DROP FUNCTION IF EXISTS carExists();
CREATE FUNCTION carExists()
  RETURNS TRIGGER AS
$BODY$
BEGIN
  IF NOT EXISTS(SELECT id from car_warehouse WHERE car_warehouse.id = NEW.car_id ) THEN
    INSERT INTO car_warehouse(id, owner_id, plate, make_id, model_id, manufacturing_date, condition)
    VALUES (99999, null, null, 2, 22, 2009, 'used');
  END IF;
  RETURN NEW;
END;
$BODY$
LANGUAGE 'plpgsql';

-- To problima einai oti ama den iparxei idi to amaksi mesa mesa sto car_warehouse kai prepei na dimiourgithei,
-- tha prepei, ipoxreotika afou einai metaxeirismeno, kata tin dimiourgia tou na exei owner_id, kai plate_num...
-- kati to opoio den einai efikto giati sto insert into den parexontai auta ta dedomena
INSERT INTO service_history(car_id, tech_id, cost, start_date, end_date) VALUES (99999, 11, 999.99, now(), null);

-- Mia lisi tha einai itan i dimiourgia temp table... Alla kai pali den exoume elegxo an iparxei o idioktitis...
DROP TABLE temp_car_service;
CREATE TEMPORARY TABLE temp_car_service(
  id SERIAL NOT NULL ,
  owner_id INT ,
  plate PLATE_NUM,
  make_id INT NOT NULL,
  model_id INT NOT NULL,
  manufacturing_date NUMERIC(4,0),
  car_id INT NOT NULL,
  tech_id INT NOT NULL,
  cost FLOAT NOT NULL ,
  start_date DATE NOT NULL ,
  end_date DATE,

  PRIMARY KEY (id)
);

DROP FUNCTION IF EXISTS carExists2();
CREATE FUNCTION carExists2()
  RETURNS TRIGGER AS
$BODY$
DECLARE latest_car_id INT;
BEGIN
  IF NOT EXISTS(SELECT id from car_warehouse WHERE car_warehouse.id = NEW.car_id ) THEN
    INSERT INTO car_warehouse(owner_id, plate, make_id, model_id, manufacturing_date, condition)
    VALUES (NEW.owner_id, NEW.plate, NEW.model_id, NEW.make_id, NEW.manufacturing_date, 'used');

    SELECT id INTO latest_car_id FROM car_warehouse
    ORDER BY id DESC LIMIT 1;

    INSERT INTO service_history(car_id, tech_id, cost, start_date, end_date) VALUES (latest_car_id, NEW.tech_id, NEW.cost, NEW.start_date, NEW.end_date);
  ELSE
    INSERT INTO service_history(car_id, tech_id, cost, start_date, end_date) VALUES (NEW.car_id, NEW.tech_id, NEW.cost, NEW.start_date, NEW.end_date);
  END IF;
  RETURN NEW;
END;
$BODY$
LANGUAGE 'plpgsql';

DROP TRIGGER IF EXISTS carExists2 ON temp_car_service;
CREATE TRIGGER carExists2
  BEFORE INSERT ON temp_car_service
  FOR EACH ROW
  EXECUTE PROCEDURE carExists2();


INSERT INTO temp_car_service(owner_id, plate, make_id, model_id, manufacturing_date, car_id, tech_id, cost, start_date, end_date)
VALUES (274, ROW('AEK', '2172'), 2, 22, 1999, 47799, 11, 999.99, now(), null);
