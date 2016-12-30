WITH RECURSIVE fib(i, num, pre) AS
(
  VALUES(1, 1, 0)
  UNION
  SELECT i + 1, num + pre, num
    FROM fib
    WHERE num + pre < 100
)
SELECT i, num
  FROM fib
  ORDER BY i;
