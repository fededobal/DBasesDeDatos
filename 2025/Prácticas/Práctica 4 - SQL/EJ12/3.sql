SELECT razon_social, direccion, telefono
FROM Barberia B
WHERE EXISTS (
  SELECT *
  FROM Atencion A NATURAL JOIN Cliente C
  WHERE DNI = 22283566 AND A.codBarberia = B.codBarberia
)
ORDER BY razon_social, direccion