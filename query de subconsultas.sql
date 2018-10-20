use bdMuebleria

Select * from Articulo
Select * from ListadePrecios
Select * from Proveedor
Select * from Direccion
Select * from Cliente
Select * from Estado


Select *
FROM (
Select id_depto, COUNT (id_depto) as Cantidad from Articulo group by id_depto
) as Deptos
where Deptos.Cantidad>=1

Create view Vista_Articulo_Depto
AS
Select id_articulo, Descripcion, Articulo.id_depto, Nombre_Depto
from Articulo INNER JOIN Departamento on Articulo.id_depto=Departamento.id_depto
Where Articulo.id_depto=100

Create view Vista_Clientes_Edo
AS
Select Nombre+ ' '+ Ap_paterno+' ' + Ap_materno as NombreCompleto,
Calle+' '+numero as Dirección
FROM Cliente INNER JOIN Direccion on Cliente.id_direccion=Direccion.id_direccion
INNER JOIN Estado ON Estado.id_estado=Direccion.id_estado
WHERE Direccion.id_estado=30

Create view Vista_Prov_Articulo
AS
Select id_articulo, Descripcion, Nombre_prov 
from Articulo INNER JOIN Proveedor on Articulo.id_prov=Proveedor.id_prov
Where Articulo.id_prov=1

Create view Vista_Empleado_Ingreso
AS
Select id_empleado, Nombre+' '+Ap_Paterno+' '+Ap_materno as NombreCompleto, fecha_ingreso 
FROM Empleado
Where fecha_ingreso>='20080101'

Create view Vista_Articulo_Precio
AS
Select Articulo.id_articulo, Descripcion, precio_u 
FROM Articulo INNER JOIN ListadePrecios ON Articulo.id_articulo=ListadePrecios.id_articulo
WHERE ListadePrecios.precio_u>=500

Create procedure Proc_Articulo_Depto(
@depto_id int) AS
BEGIN
Select id_articulo, Descripcion, Articulo.id_depto, Nombre_Depto
from Articulo INNER JOIN Departamento on Articulo.id_depto=Departamento.id_depto
Where Articulo.id_depto=@depto_id
END
EXEC Proc_Articulo_Depto 101

Create procedure Proc_Clientes_Edo(
@estado varchar(50)) AS
BEGIN
Select Nombre+ ' '+ Ap_paterno+' ' + Ap_materno as NombreCompleto,
Calle+' '+numero as Dirección
FROM Cliente INNER JOIN Direccion on Cliente.id_direccion=Direccion.id_direccion
INNER JOIN Estado ON Estado.id_estado=Direccion.id_estado
WHERE Estado.Estado like @estado
END
Exec Proc_Clientes_Edo 'Puebla'

Create procedure Proc_Prov_Articulo(
@prov_id int) AS
BEGIN
Select id_articulo, Descripcion, Nombre_prov 
from Articulo INNER JOIN Proveedor on Articulo.id_prov=Proveedor.id_prov
Where Articulo.id_prov=@prov_id
END
EXEC Proc_Prov_Articulo 1 

Create procedure Proc_Empleado_Ingreso(
@fecha date) AS
BEGIN
Select id_empleado, Nombre+' '+Ap_Paterno+' '+Ap_materno as NombreCompleto, fecha_ingreso 
FROM Empleado
Where fecha_ingreso>=@fecha
end
exec Proc_Empleado_Ingreso '20080101'

Create procedure Proc_Articulo_Precio(
@precio money) AS
begin
Select Articulo.id_articulo, Descripcion, precio_u 
FROM Articulo INNER JOIN ListadePrecios ON Articulo.id_articulo=ListadePrecios.id_articulo
WHERE ListadePrecios.precio_u>=@precio
end
exec Proc_Articulo_Precio 200

DECLARE @query nvarchar (MAX)
DECLARE @columna nvarchar (MAX) = 'NombreCompleto'
set @query = 'select Nombre+ Ap_paterno+ Ap_materno as '+@columna + ' from Cliente'
exec (@query)

Create function Funcion(
@id_art int) returns int
as
begin
	return @id_art
end

Select dbo.Funcion(10419668)