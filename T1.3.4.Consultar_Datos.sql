SELECT * FROM accidente AS a
INNER JOIN lesionado AS l ON l.id = a.id_lesionado
INNER JOIN vehiculo AS v ON v.id_tipo_de_vehiculo = a.id_vehiculo
INNER JOIN objeto_colision AS oc ON oc.id = a.id_objeto_colision
INNER JOIN municipio AS m ON m.id = a.id_municipio
INNER JOIN departamento AS d ON d.codigo_departamento = a.id_departamento