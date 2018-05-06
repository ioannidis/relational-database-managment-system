SELECT
	car_models.title,
	car_models.code,
	car_warehouse.plate,
	customers.first_name,
	customers.last_name,
	COUNT(car_models.code) as service_count
FROM
	service_history
	INNER JOIN car_warehouse ON service_history.car_id = car_warehouse.id
	INNER JOIN customers ON car_warehouse.owner_id = customers.id
	INNER JOIN car_models ON car_warehouse.model_id = car_models.id
GROUP BY
	car_models.id,
	car_warehouse.plate,
	customers.id
HAVING
	COUNT(car_models.code) > 1
ORDER BY
	service_count DESC
