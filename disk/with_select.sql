WITH tbl(n) AS
(
  SELECT n FROM series30 WHERE n <= 10
)
SELECT * FROM tbl WHERE n % 2 = 0;
