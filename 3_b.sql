DROP FUNCTION IF EXISTS cursor_example;

DROP TYPE IF EXISTS temp_type;

CREATE TYPE temp_type AS (
	title character(60),
	code character(60),
	plate plate_num,
	first_name character(60),
	last_name character(60),
	service_count bigint
);

CREATE OR REPLACE FUNCTION cursor_example()
RETURNS SETOF temp_type AS $$
DECLARE
	sample_cursor CURSOR FOR SELECT car_models.title,
		car_models.code,
		car_warehouse.plate, customers.first_name,
		customers.last_name, COUNT(car_models.code) as service_count
		FROM service_history
		INNER JOIN car_warehouse ON service_history.car_id = car_warehouse.id
		INNER JOIN customers ON car_warehouse.owner_id = customers.id
		INNER JOIN car_models ON car_warehouse.model_id = car_models.id
		GROUP BY car_models.id, car_warehouse.plate, customers.id
		HAVING COUNT(car_models.code) > 1
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
