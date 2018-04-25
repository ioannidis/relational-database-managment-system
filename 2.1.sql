SELECT results.title,MAX(results.total_count) maxResults
FROM(
	SELECT car_models.title, COUNT(*) total_count 
	FROM(
		SELECT public.service_history.car_id AS cars
		FROM public.service_history
		INNER JOIN car_warehouse ON public.service_history.car_id=public.car_warehouse.id)y
	INNER JOIN car_models ON y.cars = public.car_models.id
	GROUP BY title
	ORDER BY COUNT(*) DESC)results
WHERE  results.total_count = (SELECT MAX(results.total_count) FROM(
				SELECT car_models.title, COUNT(*) total_count 
				FROM(
				SELECT public.service_history.car_id AS cars
				FROM public.service_history
				INNER JOIN car_warehouse ON public.service_history.car_id=public.car_warehouse.id)y
				INNER JOIN car_models ON y.cars = public.car_models.id
				GROUP BY title
				ORDER BY COUNT(*) DESC)results)
GROUP BY title
