WITH RECURSIVE rec(a, b) AS
(
  VALUES(256, 224)
  UNION
  SELECT b, a % b FROM rec WHERE b <> 0
)
SELECT a AS gcd FROM rec WHERE b = 0;
