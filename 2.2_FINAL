SELECT
	to_char(start_date, 'Month') as month,
	ROUND(AVG(cost)::numeric, 2) as avg_profit
FROM
	service_history
GROUP BY
	to_char(start_date, 'Month')
ORDER BY
	avg_profit DESC
