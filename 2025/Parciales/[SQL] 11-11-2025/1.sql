SELECT DNI, nombre, apellido, direccion, nombreL
FROM Localidad INNER JOIN Cliente C ON(codigoPostal = cp)
WHERE EXISTS (
  SELECT *
  FROM Pedido P NATURAL JOIN DetallePedido
  WHERE C.idCliente = P.idCliente AND precioUnitario > 100000
);