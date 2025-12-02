SELECT T.nombre, T.especialidad
FROM Tecnico T
WHERE NOT EXISTS (
  SELECT *
  FROM Reparacion R
  WHERE (R.codTec = T.codTec)
)
ORDER BY T.nombre