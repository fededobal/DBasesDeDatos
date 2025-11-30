SELECT nombreComplejo
FROM Complejo CO
WHERE EXISTS (
  SELECT *
  FROM Entrenador E1 NATURAL JOIN Entrenamiento E2 NATURAL JOIN Cancha CA
  WHERE nombreEntrenador = 'Jorge Gonzalez' AND CA.IdComplejo = CO.IdComplejo
)
ORDER BY nombreComplejo