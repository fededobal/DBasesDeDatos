SELECT denominacion, precio, stock, SUM(cantidad) AS cantidadVendidaOctubre2025
FROM Item I NATURAL JOIN DetallePedido DP NATURAL JOIN Pedido P
WHERE (MONTH(fecha) = 10 AND YEAR(fecha) = 2025)
GROUP BY codItem, denominacion, precio, stock
HAVING (SUM(cantidad) > 100)