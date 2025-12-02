SELECT T.nombre, T.especialidad
FROM Tecnico T
WHERE EXISTS (
  SELECT *
  FROM Reparacion R1
  WHERE YEAR(R1.fecha) = 2022 AND (T.codTec = R1.codTec)
) AND NOT EXISTS (
  SELECT *
  FROM Reparacion R2
  WHERE YEAR(R2.fecha) <> 2022 AND (T.codTec = R2.codTec)
)