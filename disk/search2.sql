WITH RECURSIVE rec(v, route) AS
(
  VALUES(2, ARRAY[2])
  UNION
  SELECT dst, route || dst
    FROM graph1_edges, rec
    WHERE src = v
      AND dst <> ALL(route)
)
SELECT * FROM rec
  ORDER BY v, array_length(route, 1), route;
