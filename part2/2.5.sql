SELECT
    first_name,
    last_name,
    car_warehouse_id,
    start_date,
    end_date
FROM
    employee
    INNER JOIN service_history ON employee.afm = service_history.tech_id
WHERE
    employee.afm = 85601262 
    AND (end_date > NOW() - INTERVAL '1 month' OR (end_date IS NULL AND start_date > NOW() - INTERVAL '1 month'))
