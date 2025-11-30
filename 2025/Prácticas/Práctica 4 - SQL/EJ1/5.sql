SELECT nombreP, descripcion, precio, stock, COUNT(D.idProducto) AS cantVentas
FROM Producto P 
LEFT JOIN Detalle D ON P.idProducto = D.idProducto
GROUP BY P.idProducto, P.nombreP, P.descripcion, P.precio


