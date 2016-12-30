WITH RECURSIVE collatz(step, fn) AS
(
  VALUES(0, 3)
  UNION
  SELECT
    step + 1,
    CASE
      WHEN fn % 2 = 0 THEN fn / 2
      ELSE 3 * fn + 1
      END
    FROM collatz
    WHERE fn <> 1
)
SELECT * FROM collatz ORDER BY step;
