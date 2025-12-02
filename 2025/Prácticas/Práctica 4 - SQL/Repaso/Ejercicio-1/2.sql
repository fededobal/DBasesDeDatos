SELECT c.nombre, c.especialidad
FROM Chef c
WHERE NOT EXISTS (
  SELECT *
  FROM Plato p
  WHERE NOT EXISTS (
    SELECT *
    FROM HistorialCocina hc
    WHERE hc.idChef = c.idChef AND hc.idPlato = p.idPlato
  )
)