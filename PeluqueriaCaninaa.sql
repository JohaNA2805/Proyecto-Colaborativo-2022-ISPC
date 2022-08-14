--A. Crear Base de Datos y Tablas según Modelo Relacional.
---B. Realizar puntos 1 y 2
---C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)
---D. Subir Script .sql con todos los puntos mencionados a su rama personal del GitHub grupal

if OBJECT_ID ('PeluqueriaCanina') is not null
drop table PeluqueriaCanina;

create database PeluqueriaCanina

use PeluqueriaCanina

go


create table dueno(
 id_dni int not null,
 nombre varchar (20) not null,
  apellido varchar (20),
  telefono float not null,
  direccion varchar
  CONSTRAINT PK_dueno PRIMARY KEY (id_dni)
);
create table Perro(
 id_Perro int not null,
 nombre varchar (20) not null,
  Fecha_nacimiento varchar (20) not null,
  Sexo varchar not null,
  id_dni int not null
  CONSTRAINT PK_Perro PRIMARY KEY (id_Perro)
  CONSTRAINT FK_Perro_dueno FOREIGN KEY (id_dni) REFERENCES dueno (id_dni));

 create table Historial(
 id_historial int not null,
 fecha varchar (20) not null,
 id_Perro int  not null,
 Descripcion varchar not null,
 Monto int not null
 CONSTRAINT PK_Historial PRIMARY KEY (id_historial)
 CONSTRAINT FK_Historial_Perro FOREIGN KEY (id_Perro) REFERENCES Perro (id_Perro));

 --Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro

 SELECT *
FROM Perro, dueno
WHERE Perro.nombre = dueno.nombre AND dueno.nombre = 'Pedro';
 