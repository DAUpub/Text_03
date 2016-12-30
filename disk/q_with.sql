WITH tbl(a, b) AS
(
  VALUES(2, 3), (3, 4), (4, 5)
)
SELECT SUM(a) AS total FROM tbl;
