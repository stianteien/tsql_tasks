-- 1.1)

DECLARE @n INT;
SET @n = 2;

SELECT *
FROM Shipments
ORDER BY Shipments.Cost
LIMIT 1 OFFSET @n	