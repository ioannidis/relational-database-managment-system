DROP VIEW IF EXISTS COUNT_MODELS;

CREATE VIEW COUNT_MODELS AS (
  SELECT
    car_models.title,
    COUNT(car_models.id) AS num_of_model
  FROM
    car_warehouse
    INNER JOIN car_models ON car_warehouse.model_id = car_models.id
  GROUP BY
    car_models.title
);

SELECT
    *
FROM
    COUNT_MODELS
WHERE
    COUNT_MODELS.num_of_model = (SELECT max(num_of_model) AS maximum FROM COUNT_MODELS);