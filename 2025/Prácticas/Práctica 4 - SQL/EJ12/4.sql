SELECT DNIB, nombYApB, direccionB, telefonoContacto, mail
FROM Barbero B
WHERE EXISTS (
  SELECT *
  FROM Atencion A
  WHERE valor > 5000 AND A.codEmpleado = B.codEmpleado
)