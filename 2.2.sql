SELECT date_part('month', start_date) AS start_month, ROUND(AVG(cost)::numeric,2) as "costs" 
FROM public.service_history 
GROUP BY start_month
ORDER BY start_month ASC