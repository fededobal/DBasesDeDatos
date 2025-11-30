SELECT DNI, nombre, apellido, telefono
FROM Cliente C INNER JOIN Localidad L ON(C.cp = L.codigoPostal)
WHERE (nombreL = 'La Plata') AND NOT EXISTS (
  SELECT *
  FROM Pedido P
  WHERE YEAR(fecha) = 2025 AND MONTH(fecha) < 7 AND P.idCliente = C.idCliente
)
ORDER BY apellido, nombre