SELECT public.car_models.title, COUNT(*) total_count 
FROM(
		SELECT public.service_history.car_id AS cars
		FROM public.service_history
		INNER JOIN car_warehouse ON public.service_history.car_id=public.car_warehouse.id)y
INNER JOIN car_models ON y.cars = public.car_models.id
GROUP BY title
ORDER BY COUNT(*) DESC
LIMIT 1
