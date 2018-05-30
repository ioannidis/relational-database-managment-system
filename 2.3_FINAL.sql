DROP VIEW IF EXISTS SALES CASCADE;
CREATE VIEW SALES AS (
  SELECT
    A.salesman_id,
    SUM(A.price) AS sale
  FROM
    sales_history AS A
  WHERE
    A.action = 'sale'
  GROUP BY
    A.salesman_id
);

DROP VIEW IF EXISTS BUYS CASCADE;
CREATE VIEW BUYS AS (
  SELECT
    A.salesman_id,
    SUM(A.price) AS buy
  FROM
    sales_history AS A
  WHERE
    A.action = 'buy'
  GROUP BY
    A.salesman_id
);

DROP VIEW IF EXISTS PROFIT CASCADE;
CREATE VIEW PROFIT AS (
  SELECT
    SALES.salesman_id,
    (SALES.sale - BUYS.buy) AS profit
  FROM
    SALES
    NATURAL JOIN BUYS
);

SELECT
    salesman_id,
    employee.first_name,
    employee.last_name,
    profit
FROM
    PROFIT
    INNER JOIN employee ON PROFIT.salesman_id = employee.afm
WHERE
    profit = (SELECT MAX(profit) FROM PROFIT);
