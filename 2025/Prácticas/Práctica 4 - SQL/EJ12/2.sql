SELECT DNIB, nombYApB, direccionB, telefonoContacto, mail, COUNT(*) AS cantidadAtenciones
FROM Barbero B NATURAL JOIN Atencion A
WHERE YEAR(fecha) = 2023
GROUP BY DNIB, nombYApB, direccionB, telefonoContacto, mail