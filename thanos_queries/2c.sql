SELECT
	employee.first_name,
	employee.last_name,
	A.profit,
	B.costs,
	ROUND(A.profit - B.costs) AS tziros
FROM
	(SELECT salesman_id, SUM(price) AS profit FROM sales_history WHERE action = 'sale' GROUP BY salesman_id) AS A
INNER JOIN
	(SELECT salesman_id, SUM(price) AS costs FROM sales_history WHERE action = 'buy' GROUP BY salesman_id) AS B
ON
	A.salesman_id = B.salesman_id
INNER JOIN
	employee
ON
	employee.id = A.salesman_id
WHERE
	ROUND(A.profit - B.costs) = (SELECT MAX(ROUND(A.profit - B.costs)) AS tziros
									FROM (SELECT salesman_id, SUM(price) AS profit FROM sales_history WHERE action = 'sale' GROUP BY salesman_id) AS A
									INNER JOIN (SELECT salesman_id, SUM(price) AS costs FROM sales_history WHERE action = 'buy' GROUP BY salesman_id) AS B
									ON A.salesman_id = B.salesman_id)

------------------------

SELECT
	employee.first_name,
	employee.last_name,
	A.profit,
	B.costs,
	ROUND(A.profit - B.costs) AS tziros -- to round borei na paralifthei
FROM
	(SELECT salesman_id, SUM(price) AS profit FROM sales_history WHERE action = 'sale' GROUP BY salesman_id) AS A
INNER JOIN
	(SELECT salesman_id, SUM(price) AS costs FROM sales_history WHERE action = 'buy' GROUP BY salesman_id) AS B
ON
	A.salesman_id = B.salesman_id
INNER JOIN
	employee
ON
	employee.id = A.salesman_id

------------------------

SELECT MAX(ROUND(A.profit - B.costs)) AS tziros
FROM (SELECT salesman_id, SUM(price) AS profit FROM sales_history WHERE action = 'sale' GROUP BY salesman_id) AS A
INNER JOIN SELECT salesman_id, SUM(price) AS costs FROM sales_history WHERE action = 'buy' GROUP BY salesman_id) AS B
ON A.salesman_id = B.salesman_id
