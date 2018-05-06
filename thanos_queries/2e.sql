SELECT
	employee.first_name,
	employee.last_name,
	service_history.car_id,
	service_history.start_date,
	service_history.end_date
FROM
	service_history
	INNER JOIN employee ON employee.id = service_history.tech_id
WHERE
	service_history.tech_id = 1
	AND (
		service_history.start_date >= date_trunc('month', now()) - interval '1 month'
		OR
		service_history.end_date >= date_trunc('month', now()) - interval '1 month'
	)
