-- 2.1)

WITH cte AS (
   SELECT *,
         ROW_NUMBER() OVER (PARTITION BY SalesChannel ORDER BY Cost DESC) AS rn
   FROM kinver.dbo.cars_data
)

SELECT SalesChannel, Brand, Cost
FROM cte
WHERE rn BETWEEN 1 and 3