SELECT B.nroBox, B.m2, B.ubicacion, B.capacidad, M.nombre
FROM Box B NATURAL JOIN Supervision S NATURAL JOIN Mascota M
WHERE YEAR(S.fechaEntra) = 2024