SELECT codItem, denominacion, precio, stock
FROM Item I
WHERE EXISTS (
  SELECT *
  FROM DetallePedido DP1 NATURAL JOIN Pedido P1
  WHERE DP1.nroPedido = P1.nroPedido AND DP1.codItem = I.codItem AND YEAR(fecha) = 2025
  AND NOT EXISTS (
    SELECT *
    FROM DetallePedido DP2 NATURAL JOIN Pedido P2
    WHERE DP2.nroPedido = P2.nroPedido AND DP2.codItem = I.codItem AND YEAR(fecha) <> 2025
  )
)