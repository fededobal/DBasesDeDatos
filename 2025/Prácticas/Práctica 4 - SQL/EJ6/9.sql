SELECT Repu.nombre, Repu.stock, Repu.precio
FROM Repuesto Repu
WHERE NOT EXISTS (
  SELECT *
  FROM Tecnico T
  WHERE NOT EXISTS (
    SELECT *
    FROM RepuestoReparacion RR INNER JOIN Reparacion Repa ON(RR.nroReparac = Repa.nroReparac)
    WHERE (Repa.codTec = T.codTec AND RR.codRep = Repu.codRep)
  )
)