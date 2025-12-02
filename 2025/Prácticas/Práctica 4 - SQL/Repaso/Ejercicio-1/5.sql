SELECT i.nombre
FROM Ingrediente i INNER JOIN Receta r ON i.idIng = r.idIng 
INNER JOIN HistorialCocina hc ON r.idPlato = hc.idPlato
GROUP BY i.idIng, i.nombre
HAVING(COUNT(DISTINCT hc.idChef) > 2)