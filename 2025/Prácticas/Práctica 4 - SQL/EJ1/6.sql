((SELECT nombre, apellido, DNI, telefono, direccion
FROM Cliente NATURAL JOIN Factura NATURAL JOIN Detalle NATURAL JOIN Producto
WHERE nombreP = "prod1")
INTERSECT
(SELECT nombre, apellido, DNI, telefono, direccion
FROM Cliente NATURAL JOIN Factura NATURAL JOIN Detalle NATURAL JOIN Producto
WHERE nombreP = "prod2"))
EXCEPT
(SELECT nombre, apellido, DNI, telefono, direccion
FROM Cliente NATURAL JOIN Factura NATURAL JOIN Detalle NATURAL JOIN Producto
WHERE nombreP = "prod3")
