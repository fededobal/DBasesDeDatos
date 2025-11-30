(SELECT nombreP, descripcion, precio, stock
FROM Producto NATURAL JOIN Detalle NATURAL JOIN Factura NATURAL JOIN Cliente 
WHERE DNI = 45789456 AND apellido != "Garcia")

