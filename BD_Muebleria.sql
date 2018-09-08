create database BD_Muebleria
begin transaction
create table Empleado(id_empleado integer PRIMARY KEY not null,
id_depto integer REFERENCES Departamento (id_depto)not null, 
id_turno integer REFERENCES Turno (id_turno) not null, 
Nombre varchar(50),
 Ap_Paterno varchar (20), 
 Ap_Materno varchar (20), 
 Edad integer, 
 Telefono varchar (15), 
 fecha_ingreso datetime, 
 Fotografia image)
create table Departamento(id_depto integer PRIMARY KEY not null,
nombre_depto varchar (30)) 
create table Turno(id_turno integer PRIMARY KEY not null,
nombre_turno varchar(30),
Horario varchar (20))
create table Articulo(id_articulo integer PRIMARY KEY not null,
SKU uniqueidentifier,
Descripcion text,
in_stock bit,
precio_u money,
Fotografia image,
id_prov integer REFERENCES Proveedor (id_prov) not null)
create table Proveedor (id_prov integer PRIMARY KEY not null,
nombre_prov varchar(30))

Select * from Empleado
Select * from Departamento
Select * from Turno
Select * from Proveedor
Select * from Articulo