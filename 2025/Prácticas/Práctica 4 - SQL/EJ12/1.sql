SELECT C.DNI, C.nombYAp, C.direccionC, C.fechaNacimiento, C.celular
FROM Cliente C
WHERE C.nroCliente NOT IN (
  SELECT A.nroCliente
  FROM Atencion A
  WHERE YEAR(A.fecha) = 2024
)