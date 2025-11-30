SELECT DISTINCT V.*, largo, max_toneladas, cant_ruedas, tiene_acoplado
FROM Vehiculo V NATURAL JOIN Camion C NATURAL JOIN Service S
WHERE (cant_ruedas BETWEEN 4 AND 8) AND (fecha > '2024-11-29')
ORDER BY marca, modelo, patente
