WITH RECURSIVE newton(step, solution, delta) AS
(
  VALUES(0, 1.0, 1.0)
  UNION
  SELECT step + 1,
         (solution + 3.0 / solution) / 2,
         solution - (solution + 3.0 / solution) / 2
    FROM newton
    WHERE ABS(delta) > 0.00001
)
SELECT solution AS result
  FROM newton
  ORDER BY step DESC
  LIMIT 1;
