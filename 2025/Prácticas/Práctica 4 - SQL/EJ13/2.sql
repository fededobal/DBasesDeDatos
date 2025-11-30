SELECT nombreCancha, COUNT(*) AS cantidadEntrenamientos
FROM Entrenamiento E NATURAL JOIN Cancha C1 NATURAL JOIN Complejo C2
WHERE YEAR(fecha) = 2022 AND nombreComplejo = 'Complejo 1'
GROUP BY C1.IdCancha, nombreCancha