create database PeluqueriaCanina;
use PeluqueriaCanina;
--  tabla Dueno

create table Dueno(
DNI int,
Nombre varchar (25) not null,
Apellido varchar (20)not null,
Telefono bigint,
Direccion varchar (30),
 constraint pk_cd primary key (DNI)
 );
 -- insertar datos del dueno
 insert into Dueno values (40234546,'Lucia','Rodriguez',424356,'Cayetano silva 234')
 insert into Dueno values ( 37234453,'Mateo','Roldan',459670,'Rosario 1056')
 
 -- ejercicio 9
 update Dueno
 set Direccion= 'Libertad 123'
 
-- tabla perro
create table Perro (
Id_Perro int (30) not null ,
Nombre varchar (25) not null,
Fecha_Nac date  not null,
sexo varchar (25),
DNI_Dueno int (25),
constraint pk_cp primary key (Id_Perro),
constraint  fk_fdd foreign key (DNI_Dueno) references Dueno (DNI)
);
-- insertar datos de perros
insert into Perro values (1,'Dante','12-feb-20','Macho',37543245)
select Nombre from Perro

update Perro
set Fecha_nac= '23-may-2022'

-- 12.	Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
select Id_perro as identificador,
Nombre as identificador,
Fecha_nac as Fecha_nac,
sexo as sexo,
from Perro
where  sexo = "macho"  and year (Fecha_nac)between 2020 and 2022

-- tabla historial
create table Historial (
Id_Historial int not null,
fecha date not null,
perro int not null,
Descripcion varchar (250),
monto float ,
constraint pk_ch primary key (Id_Historial),
constraint fk_fp foreign key (perro) references Perro (Id_Perro))

-- insertar datos historial
insert into Historial values (12,'17-mar-22',3,'control',1500)


