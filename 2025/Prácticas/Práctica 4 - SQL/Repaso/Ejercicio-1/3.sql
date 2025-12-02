SELECT c.nombre
FROM Chef c
WHERE EXISTS (
  SELECT *
  FROM Plato p INNER JOIN HistorialCocina hc ON(p.idPlato = hc.idPlato)
  WHERE p.categoria = 'Principal' AND hc.idChef = c.idChef
) AND NOT EXISTS (
  SELECT *
  FROM Plato p INNER JOIN HistorialCocina hc ON(p.idPlato = hc.idPlato)
  WHERE p.categoria <> 'Principal' AND hc.idChef = c.idChef
)