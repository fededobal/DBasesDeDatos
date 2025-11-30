SELECT DISTINCT nombre, edad, raza, peso, telefonoContacto
FROM Mascota M NATURAL JOIN Supervision S NATURAL JOIN Veterinario V
WHERE nombYAp = 'Oscar Lopez'
ORDER BY nombre, raza