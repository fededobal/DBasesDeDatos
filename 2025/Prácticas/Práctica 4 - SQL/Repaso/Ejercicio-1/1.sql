SELECT p.nombre, p.precio, SUM(cantidad_gramos) as cantGramos
FROM Plato p INNER JOIN Receta r ON(p.idPlato = r.idPlato)
GROUP BY p.idPlato, p.nombre, p.precio
HAVING(SUM(cantidad_gramos) > 400)