(SELECT nombreEntrenador, fechaNacimiento, direccion
FROM Entrenador NATURAL JOIN Entrenamiento NATURAL JOIN Cancha NATURAL JOIN Complejo NATURAL JOIN Club
WHERE nombreClub = 'Everton')
INTERSECT
(SELECT nombreEntrenador, fechaNacimiento, direccion
FROM Entrenador NATURAL JOIN Entrenamiento NATURAL JOIN Cancha NATURAL JOIN Complejo NATURAL JOIN Club
WHERE nombreClub = 'Estrella de Berisso')