SELECT title,car_warehouse.id,COUNT(*) total_count FROM service_history
INNER JOIN car_warehouse ON service_history.car_id=car_warehouse.id
INNER JOIN car_models ON car_warehouse.model_id=car_models.id
WHERE (end_date <= NOW() - INTERVAL '1 year'
OR	start_date <= NOW() - INTERVAL '1 year')
GROUP BY title,car_warehouse.id
HAVING COUNT(*) > 1
ORDER BY total_count DESC