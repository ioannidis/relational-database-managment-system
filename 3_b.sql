DROP FUNCTION IF EXISTS cursor_example;

DROP TYPE IF EXISTS temp_type;

CREATE TYPE temp_type AS (
	title character(60),
	id numeric,
	service_count bigint
);

CREATE OR REPLACE FUNCTION cursor_example()
RETURNS SETOF temp_type AS $$
DECLARE
	sample_cursor CURSOR FOR SELECT title, car_warehouse.id, COUNT(*) total_count
		FROM service_history
		INNER JOIN car_warehouse ON service_history.car_id = car_warehouse.id
		INNER JOIN car_models ON car_warehouse.model_id = car_models.id
		WHERE (end_date <= NOW() - INTERVAL '1 year'
		OR start_date <= NOW() - INTERVAL '1 year')
		GROUP BY title,car_warehouse.id
		HAVING COUNT(*) > 1
		ORDER BY total_count DESC;
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
