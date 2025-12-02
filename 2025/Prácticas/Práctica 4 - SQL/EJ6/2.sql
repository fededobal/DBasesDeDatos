(SELECT R.nombre, R.stock, R.precio
FROM Repuesto R INNER JOIN RepuestoReparacion RR ON(R.codRep = RR.codRep) INNER JOIN Reparacion Repa ON(RR.nroReparac = Repa.nroReparac)
WHERE YEAR(fecha) = 2023)
EXCEPT
(SELECT R.nombre, R.stock, R.precio
FROM Repuesto R INNER JOIN RepuestoReparacion RR ON(R.codRep = RR.codRep) INNER JOIN Reparacion Repa ON(RR.nroReparac = Repa.nroReparac) NATURAL JOIN Tecnico T
WHERE T.nombre = "José Gonzalez")