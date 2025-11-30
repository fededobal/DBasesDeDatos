SELECT DISTINCT nombreClub, ciudad
FROM Club NATURAL JOIN Complejo NATURAL JOIN Cancha NATURAL JOIN Entrenamiento NATURAL JOIN Entrenador
WHERE nombreEntrenador = 'Marcos Perez'