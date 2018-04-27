-- Zitaei kai einai ta montela, oxi poia ienai to montela ton pelaton pou exoun erthei perissoteres fores gia services
-- model_id, onoma, poses fores exei erthei auto to montelo gia service
-- 44,	Vanquish,	109

DROP VIEW IF EXISTS COUNT_MODELS;
CREATE VIEW COUNT_MODELS AS (
    SELECT
    model_id,
    count(model_id) AS num_of_model
  FROM service_history
    INNER JOIN car_warehouse ON service_history.car_id = car_warehouse.id
  GROUP BY model_id
);

SELECT cm.model_id, car_models.title, cm.num_of_model
FROM COUNT_MODELS AS cm INNER JOIN car_models ON cm.model_id = car_models.id
WHERE cm.num_of_model = (SELECT max(num_of_model) AS maximum FROM COUNT_MODELS);

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
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
