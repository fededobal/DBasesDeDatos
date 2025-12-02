SELECT Repu.nombre, Repu.stock, COUNT(DISTINCT Repa.codTec) AS cantTecnicos
FROM Repuesto Repu LEFT JOIN RepuestoReparacion RR ON(Repu.codRep = RR.codRep) LEFT JOIN Reparacion Repa ON(RR.nroReparac = Repa.nroReparac)
GROUP BY Repu.codRep, Repu.nombre, Repu.stock