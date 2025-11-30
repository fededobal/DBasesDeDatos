DELETE FROM DetallePedido DP
WHERE DP.nroPedido IN (
  SELECT P.nroPedido
  FROM Pedido P NATURAL JOIN Cliente C
  WHERE C.DNI = 40123456
);

DELETE FROM Pedido
WHERE idCliente IN (
  SELECT idCliente
  FROM Cliente C
  WHERE C.DNI = 40123456
);