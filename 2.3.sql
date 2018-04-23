
SELECT  a.salesman_id, ROUND(SUM(a.price)::numeric,2) - ROUND(SUM(b.price)::numeric,2)
   FROM sales_history a, sales_history b
   WHERE a.salesman_id = b.salesman_id AND a.action ='sale' AND b.action='buy'
   GROUP BY a.salesman_id
   ORDER BY a.salesman_id




