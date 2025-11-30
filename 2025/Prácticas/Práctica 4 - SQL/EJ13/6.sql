DELETE FROM Entrenamiento E1
WHERE EXISTS (
  SELECT *
  FROM Entrenador E2
  WHERE nombreEntrenador = 'Juan Perez' AND E1.IdEntrenador = E2.IdEntrenador
)