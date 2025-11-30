SELECT nroTicket, total, fecha, hora, DNI
FROM Cliente NATURAL JOIN Factura NATURAL JOIN Detalle NATURAL JOIN Producto
WHERE nombreP = "prod38" OR (fecha BETWEEN 2023-1-1 AND 2023-12-31)

