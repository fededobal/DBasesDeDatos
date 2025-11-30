SELECT nombre, edad, raza, peso
FROM Mascota M
WHERE M.codMascota IN ( -- para que no se repitan mascotas
  (SELECT S.codMascota
  FROM Supervision S
  WHERE S.matricula = 'MP 1000')
  INTERSECT
  (SELECT S.codMascota
  FROM Supervision S
  WHERE S.matricula = 'MN 4545')
)