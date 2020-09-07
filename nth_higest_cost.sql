-- 1.1)

DECLARE @n INT;
SET @n = 1;

SELECT db_sorted.Cost as HigestCost, @n as nth
FROM (
  SELECT
    ROW_NUMBER() OVER (ORDER BY db.Cost DESC) AS row_n, *
  FROM kinver.dbo.cost_data as db
) as db_sorted
WHERE row_n = @n
