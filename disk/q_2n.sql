WITH RECURSIVE rec(n) AS
(
  VALUES(1)
  UNION
  SELECT 2 * n FROM rec WHERE n < 100
)
SELECT n FROM rec ORDER BY n;
