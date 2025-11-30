SELECT nombreEntrenador, fechaNacimiento, direccion
FROM Entrenador E1
WHERE EXISTS (
  SELECT *
  FROM Entrenamiento E2
  WHERE YEAR(fecha) = 2023 AND E1.IdEntrenador = E2.IdEntrenador
)