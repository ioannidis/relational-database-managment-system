SELECT first_name,last_name,car_id,start_date,end_date
FROM employee
RIGHT JOIN service_history ON employee.id=service_history.tech_id
WHERE end_date > NOW() - INTERVAL '30 days'
OR	start_date > NOW() - INTERVAL '30 days'
OR end_date IS NULL