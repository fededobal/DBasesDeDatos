SELECT CUIT, V.matricula, nombYAp, direccion, telefono
FROM Veterinario V
WHERE NOT EXISTS (
  SELECT *
  FROM Supervision S
  WHERE fechaSale IS NULL AND S.matricula = V.matricula
)