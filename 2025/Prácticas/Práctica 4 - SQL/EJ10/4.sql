DELETE FROM Service_Parte SP
WHERE (SP.fecha, SP.patente) IN (
  SELECT S.fecha, S.patente
  FROM Service S 
  NATURAL JOIN Vehiculo V 
  NATURAL JOIN Camion C
  WHERE V.km > 250000
);

DELETE FROM Service S
WHERE (S.patente) IN (
  SELECT C.patente
  FROM Camion C 
  NATURAL JOIN Vehiculo V
  WHERE V.km > 250000
);

DELETE FROM Camion C
WHERE (C.patente) IN (
  SELECT patente
  FROM Vehiculo
  WHERE km > 250000
);

DELETE FROM Vehiculo V
WHERE V.patente NOT IN (
  SELECT patente
  FROM Auto A
) AND km > 250000;