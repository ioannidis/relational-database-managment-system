
SELECT  sale_history.salesman_id, ROUND(SUM(sale_history.prices - buy_history.prices)::numeric,2)
   FROM 
			(SELECT salesman_id,SUM(price) prices FROM sales_history
			WHERE action='buy'
			GROUP BY salesman_id
			ORDER BY salesman_id ASC)buy_history,
			
			(SELECT salesman_id,SUM(price) prices FROM sales_history
			WHERE action='sale'
			GROUP BY salesman_id
			ORDER BY salesman_id ASC)sale_history

   GROUP BY sale_history.salesman_id
   ORDER BY sale_history.salesman_id