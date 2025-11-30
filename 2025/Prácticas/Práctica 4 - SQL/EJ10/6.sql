SELECT V.patente, modelo, marca, peso
FROM Vehiculo V NATURAL JOIN Auto A
WHERE A.es_electrico