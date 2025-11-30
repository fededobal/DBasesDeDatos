SELECT V.patente, V.modelo, V.marca, A.es_electrico, A.tipo_motor
FROM (
    (SELECT patente
    FROM Service S
    WHERE S.descripcion = 'Cambio de aceite' AND S.km_service < 13000)
    UNION
    (SELECT S.patente
    FROM Service S 
    NATURAL JOIN Service_Parte SP
    NATURAL JOIN Parte P
    WHERE S.descripcion = 'Inspección general' AND P.nombre = 'Filtro de combustible')
) AS AutosUnicos
JOIN Vehiculo V ON AutosUnicos.patente = V.patente
JOIN Auto A ON AutosUnicos.patente = A.patente;