(SELECT nombreP, descripcion, precio, stock 
FROM Producto)
EXCEPT
(SELECT nombreP, descripcion, precio, stock 
FROM Producto NATURAL JOIN Detalle NATURAL JOIN Factura NATURAL JOIN Cliente WHERE telefono LIKE "221%")

