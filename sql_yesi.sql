create database peluqueriacanina;
use peluqueriacanina;

-- Tabla dueno 
 
create table dueno(
dni int,
nombre varchar (20),
apellido varchar (20),
telefono varchar (12), 
direccion varchar (50),
constraint pk_cc primary key (dni) )
;
-- Tabla perro 

create table perro (
id_perro int,
nombre varchar (20),
fecha_nac date,
sexo varchar (9),
dni_dueno int,
constraint pk_cm primary key (id_perro),
constraint pf_fdueno foreign key (dni_dueno) references dueno (dni) )
;

-- Tabla historial

create table historial (
id_historial int,
fecha date,
Perro int, 
descripcion varchar (100),
monto float, 
constraint pk_cn primary key (id_historial),
constraint pk_fperro foreign key (Perro) references perro (id_perro) )
;
#datos tabla dueno

insert into dueno (dni, nombre, apellido, telefono, direccion ) values 
(36610676, 'yesica', 'gomez', '3512444444', 'siempre viva 123');

insert into dueno (dni, nombre, apellido, telefono, direccion ) values 
(35090916, 'marcos', 'brangi', '3513235678', 'san antonio 234');

insert into dueno (dni, nombre, apellido, telefono, direccion ) values 
(42892573, 'paloma', 'godoy', '3512446798', 'manuel huicque 4321');

insert into dueno (dni, nombre, apellido, telefono, direccion ) values 
(21987727, 'selene', 'brangi', '3543441196', 'manuel ortega 456');

#datos tabla perro

insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) values
(13 ,'luli', '26/02/2011', 'femenino', '36610676');

insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) values
(12, 'nala', '12/05/2020', 'femenino', '42892573');

insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) values
(5, 'apolo', '07/04/2022', 'masculino', '21987727');

insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) values
(2, 'michelin', '16/10/2021', 'masculino' , '35090916');

#datos tabla historial

insert into historial (id_historial, fecha, perro, descripcion, monto) values
(15, '10/08/2022', 5, 'bano y corte', 1200);

insert into historial (id_historial, fecha, perro, descripcion, monto) values
(9, '11/08/2022', 12, 'bano', 850);

insert into historial (id_historial, fecha, perro, descripcion, monto) values
(8, '12/08/2022', 13, 'bano y corte', 2000);

insert into historial (id_historial, fecha, perro, descripcion, monto) values
(7, '12/08/2022', 2, 'bano y corte', 1800);

# actualizacion de direccion de un cliente a LIBERTAD 123
 
update dueno
set direccion='Libertad 123'
where dni='36610676'