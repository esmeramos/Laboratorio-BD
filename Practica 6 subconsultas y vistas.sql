use bdMuebleria

--Subconsultas
Select *
FROM (
Select id_depto, COUNT (id_depto) as Cantidad from Articulo group by id_depto
) as Deptos
where Deptos.Cantidad>=1

Select Descripcion from Articulo INNER JOIN DetalleVenta
ON Articulo.id_articulo=DetalleVenta.id_articulo
where cant_vendida< 
	(
	Select MAX (cant_vendida) from DetalleVenta 
	 )
Select Nombre + ' '+ Ap_paterno+' '+Ap_materno as Nombre_Completo, id_venta
from Empleado INNER JOIN Venta on Empleado.id_empleado=Venta.id_empleado
where Empleado.fecha_ingreso = (
Select fecha_ingreso from Empleado as e where e.fecha_ingreso<'20130101'
)


--Vistas

Create view Vista_Articulo_Precio
AS
Select Articulo.id_articulo, Descripcion, precio_u 
FROM Articulo INNER JOIN ListadePrecios ON Articulo.id_articulo=ListadePrecios.id_articulo
WHERE ListadePrecios.precio_u>=500
Select * from Vista_Articulo_Precio

Create view Vista_Articulo_Depto
AS
Select id_articulo, Descripcion, Articulo.id_depto, Nombre_Depto
from Articulo INNER JOIN Departamento on Articulo.id_depto=Departamento.id_depto
Where Articulo.id_depto=100
Select * from Vista_Articulo_Depto

Create view Vista_Clientes_Edo
AS
Select Nombre+ ' '+ Ap_paterno+' ' + Ap_materno as NombreCompleto,
Calle+' '+numero as Dirección
FROM Cliente INNER JOIN Direccion on Cliente.id_direccion=Direccion.id_direccion
INNER JOIN Estado ON Estado.id_estado=Direccion.id_estado
WHERE Direccion.id_estado=30
Select * from Vista_Clientes_Edo

Create view Vista_Prov_Articulo
AS
Select id_articulo, Descripcion, Nombre_prov 
from Articulo INNER JOIN Proveedor on Articulo.id_prov=Proveedor.id_prov
Where Articulo.id_prov=1
Select * from Vista_Prov_Articulo

Create view Vista_Empleado_Ingreso
AS
Select id_empleado, Nombre+' '+Ap_Paterno+' '+Ap_materno as NombreCompleto, fecha_ingreso 
FROM Empleado
Where fecha_ingreso>='20080101'
Select * from Vista_Empleado_Ingreso


--Consulta dinamica
DECLARE @query nvarchar (MAX)
DECLARE @columna nvarchar (MAX) = 'NombreCompleto'
set @query = 'select Nombre+ Ap_paterno+ Ap_materno as '+@columna + ' from Cliente'
exec (@query)

