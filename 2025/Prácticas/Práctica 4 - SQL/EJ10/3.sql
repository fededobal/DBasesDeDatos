SELECT nombre, precio_parte
FROM Parte NATURAL JOIN Service_Parte SP
WHERE precio > 4000
GROUP BY cod_parte, nombre, precio_parte
HAVING(COUNT(cod_parte) > 30)

