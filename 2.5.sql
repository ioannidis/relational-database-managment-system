-- Prepei na mas dieukrinisoun an orizoun os ergasia tin enarksi i tin liksi, an einai i to 1 i to allo to ienai to parakato
-- Leei gia ton X, opote emeis ipothetoume oti leei gia ton mastora me id 3
SELECT first_name,last_name,car_id,start_date,end_date
FROM employee INNER JOIN service_history ON employee.id=service_history.tech_id
WHERE employee.id = 3 AND (end_date > NOW() - INTERVAL '1 month'
OR (end_date IS NULL AND start_date > NOW() - INTERVAL '1 month'))


-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
SELECT first_name,last_name,car_id,start_date,end_date
FROM employee
RIGHT JOIN service_history ON employee.id=service_history.tech_id
WHERE end_date > NOW() - INTERVAL '30 days'
OR	start_date > NOW() - INTERVAL '30 days'
OR end_date IS NULL
