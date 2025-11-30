SELECT V.matricula, CUIT, nombYAp, direccion, telefono, COUNT(*) AS cantidadSupervisiones
FROM Veterinario V NATURAL JOIN Supervision S
WHERE S.fechaSale IS NOT NULL AND (MONTH(S.fechaSale) = 1 AND YEAR(S.fechaSale) = 2024)
GROUP BY V.matricula, CUIT, nombYAp, direccion, telefono