SELECT
	car_models.title,
	car_warehouse.plate,
	customers.first_name,
	customers.last_name,
	COUNT(car_models.id) AS service_count
FROM
	service_history
	INNER JOIN car_warehouse ON service_history.car_warehouse_id = car_warehouse.id
	INNER JOIN customers ON car_warehouse.owner_id = customers.afm
	INNER JOIN car_models ON car_warehouse.model_id = car_models.id
WHERE
	service_history.start_date <= date_trunc('year', now()) - interval '1 year'
	OR
	service_history.end_date <= date_trunc('year', now()) - interval '1 year'
GROUP BY
	car_models.id,
	car_warehouse.plate,
	customers.afm
HAVING
	COUNT(car_models.id) > 1
ORDER BY
	service_count DESC
