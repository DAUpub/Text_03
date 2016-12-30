WITH RECURSIVE rec(v) AS
(
  VALUES(2)
  UNION
  SELECT dst FROM graph1_edges, rec WHERE src = v
)
SELECT * FROM rec;
