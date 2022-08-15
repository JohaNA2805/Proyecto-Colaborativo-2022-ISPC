# Proyecto-Colaborativo-2022-ISPC
Equipo integrado por : 
12. Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022./
SELECT 
    p.id_perro AS Identificador,
    p.nombre AS NombreMascota,
    p.fecha_nacimiento AS FechaDeNacimiento,
    p.sexo AS Sexo,
    p.dni_dueno AS Dueno
FROM
    perro p
WHERE
    p.sexo = 'H'
        AND YEAR(p.fecha_nacimiento) BETWEEN 2020 AND 2022;
