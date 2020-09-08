-- 1.2)

DECLARE @n INT;
SET @n = 2;

SELECT @n as 'row_nr',
 CASE WHEN COUNT(*) > 0
       THEN SUM(db_sorted.Cost)  
       ELSE Null
 END as HigestCost

FROM (
	SELECT
		ROW_NUMBER() OVER (ORDER BY db.Cost DESC) AS row_n, *
	FROM kinver.dbo.cost_data as db
	) as db_sorted
WHERE db_sorted.row_n = @n

