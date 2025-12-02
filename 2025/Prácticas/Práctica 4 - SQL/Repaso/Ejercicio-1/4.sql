SELECT c.nombre, c.especialidad, c.sueldo
FROM Chef c
WHERE EXISTS (
  SELECT *
  FROM HistorialCocina hc
  WHERE hc.idChef = c.idChef AND YEAR(hc.fecha) = 2023
) AND NOT EXISTS (
  SELECT *
  FROM HistorialCocina hc
  WHERE hc.idChef = c.idChef AND YEAR(hc.fecha) = 2024
)