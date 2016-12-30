WITH RECURSIVE rec(n) AS /* テーブル名はrecursiveのrec */
(
  VALUES(1)
  UNION
  SELECT n + 1 FROM rec WHERE n < 10
)
SELECT n FROM rec;


