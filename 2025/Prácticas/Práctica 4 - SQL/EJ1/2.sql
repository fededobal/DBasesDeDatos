(SELECT nombre,apellido,DNI,telefono,direccion FROM Cliente NATURAL JOIN Factura WHERE (fecha BETWEEN 2024-1-1 AND 2024-12-31)) 
EXCEPT 
(SELECT nombre,apellido,DNI,telefono,direccion FROM Cliente NATURAL JOIN Factura WHERE (fecha < 2024-1-1 AND fecha > 2024-12-31))
