--------------------------------------------------------------------------------
-- 2.1.sql
--------------------------------------------------------------------------------

DROP VIEW IF EXISTS COUNT_MODELS CASCADE;

CREATE VIEW COUNT_MODELS AS (
  SELECT
    car_models.title,
    COUNT(car_models.id) AS num_of_model
  FROM
    car_warehouse
    INNER JOIN car_models ON car_warehouse.model_id = car_models.id
  GROUP BY
    car_models.title
);

SELECT
    *
FROM
    COUNT_MODELS
WHERE
    COUNT_MODELS.num_of_model = (SELECT max(num_of_model) AS maximum FROM COUNT_MODELS);

--------------------------------------------------------------------------------
-- 2.2.sql
--------------------------------------------------------------------------------

SELECT
	to_char(start_date, 'Month') as month,
	ROUND(AVG(cost)::numeric, 2) as avg_profit
FROM
	service_history
GROUP BY
	to_char(start_date, 'Month')
ORDER BY
	avg_profit DESC

--------------------------------------------------------------------------------
-- 2.3.sql
--------------------------------------------------------------------------------

DROP VIEW IF EXISTS SALES CASCADE;
CREATE VIEW SALES AS (
  SELECT
    A.salesman_id,
    SUM(A.price) AS sale
  FROM
    sales_history AS A
  WHERE
    A.action = 'sale'
  GROUP BY
    A.salesman_id
);

DROP VIEW IF EXISTS BUYS CASCADE;
CREATE VIEW BUYS AS (
  SELECT
    A.salesman_id,
    SUM(A.price) AS buy
  FROM
    sales_history AS A
  WHERE
    A.action = 'buy'
  GROUP BY
    A.salesman_id
);

DROP VIEW IF EXISTS PROFIT CASCADE;
CREATE VIEW PROFIT AS (
  SELECT
    SALES.salesman_id,
    (SALES.sale - BUYS.buy) AS profit
  FROM
    SALES
    NATURAL JOIN BUYS
);

SELECT
    salesman_id,
    employee.first_name,
    employee.last_name,
    profit
FROM
    PROFIT
    INNER JOIN employee ON PROFIT.salesman_id = employee.afm
WHERE
    profit = (SELECT MAX(profit) FROM PROFIT);

--------------------------------------------------------------------------------
-- 2.4.sql
--------------------------------------------------------------------------------

SELECT
    *
FROM
    service_history
WHERE
    end_date IS NULL

--------------------------------------------------------------------------------
-- 2.5.sql
--------------------------------------------------------------------------------

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

--------------------------------------------------------------------------------
-- 2.6.sql
--------------------------------------------------------------------------------

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
