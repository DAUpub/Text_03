WITH RECURSIVE rec(i, s) AS
(
  VALUES(1, 1)
  UNION
  SELECT i + 1, s + i + 1 FROM rec WHERE i < 5
)
SELECT * FROM rec ORDER BY i;
