SELECT nombre, precio_parte
FROM Parte P
WHERE NOT EXISTS (
  SELECT *
  FROM Service_Parte SP1
  WHERE YEAR(fecha) = 2025
  AND NOT EXISTS (
    SELECT *
    FROM Service_Parte SP2
    WHERE P.cod_parte = SP2.cod_parte
    AND SP1.patente = SP2.patente
    AND SP1.fecha = SP2.fecha
  )
)