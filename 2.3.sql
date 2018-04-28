DROP VIEW IF EXISTS SALES;
CREATE VIEW SALES AS (
  SELECT
    A.salesman_id,
    sum(A.price) AS sale
  FROM sales_history AS A
  WHERE A.action = 'sale'
  GROUP BY A.salesman_id
);

DROP VIEW IF EXISTS BUYS;
CREATE VIEW BUYS AS (
  SELECT
    A.salesman_id,
    sum(A.price) AS buy
  FROM sales_history AS A
  WHERE A.action = 'buy'
  GROUP BY A.salesman_id
);

DROP VIEW IF EXISTS PROFIT;
CREATE VIEW PROFIT AS (
  SELECT
     SALES.salesman_id,
     (SALES.sale - BUYS.buy) AS profit
   FROM SALES NATURAL JOIN BUYS
);

SELECT salesman_id, employee.first_name, employee.last_name, profit
FROM PROFIT INNER JOIN employee ON PROFIT.salesman_id = employee.id
WHERE profit = (SELECT max(profit) FROM PROFIT);

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx
SELECT finalResults.employeeId,MAX(results) maximumProfit
FROM(
	SELECT  buy_history.salesman_id AS employeeId,ROUND((sale_history.prices-buy_history.prices)::numeric,2) results
    FROM 
			(SELECT salesman_id ,SUM(price) prices FROM sales_history
			WHERE action='buy'
			GROUP BY salesman_id
			ORDER BY prices DESC)buy_history,
			
			(SELECT salesman_id,SUM(price) prices FROM sales_history
			WHERE action='sale'
			GROUP BY salesman_id
			ORDER BY prices DESC)sale_history
    WHERE buy_history.salesman_id=sale_history.salesman_id
    ORDER BY results DESC)finalResults
WHERE finalResults.results=(SELECT MAX(results) maximumProfit FROM(
										SELECT  buy_history.salesman_id AS employeeId,ROUND((sale_history.prices-buy_history.prices)::numeric,2) results
    									FROM 
											(SELECT salesman_id ,SUM(price) prices FROM sales_history
											WHERE action='buy'
											GROUP BY salesman_id
											ORDER BY prices DESC)buy_history,
			
											(SELECT salesman_id,SUM(price) prices FROM sales_history
											WHERE action='sale'
											GROUP BY salesman_id
											ORDER BY prices DESC)sale_history
    									WHERE buy_history.salesman_id=sale_history.salesman_id
										ORDER BY results DESC)finalResults)
GROUP BY finalResults.employeeId
