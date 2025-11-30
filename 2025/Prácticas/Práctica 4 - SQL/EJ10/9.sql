SELECT patente, modelo, marca, peso, km
FROM Vehiculo
WHERE patente IN ( -- para que no hayan repetidos
  SELECT patente
  FROM Service
  WHERE YEAR(fecha) = 2024)