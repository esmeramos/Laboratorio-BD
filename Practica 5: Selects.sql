use bdMuebleria


--Selects basicos
Select Articulo.id_articulo as ID, Descripcion as Articulo, cantidad as Cantidad_existente
from Inventario INNER JOIN Articulo
ON Inventario.id_articulo=Articulo.id_articulo
Select * from MetodoEnvio where id_metodo=1
Select Nombre + ' ' + Ap_paterno + ' ' + Ap_materno as Nombre_Completo,
Email.email as Correo_Electronico from Cliente INNER JOIN Email
ON Cliente.id_email=Email.id_email
Select id_venta, tipo_pago as Metodo_de_pago from DetalleVenta INNER JOIN Pago
ON DetalleVenta.clave_pago=Pago.clave_pago
Select id_venta, DetalleVenta.id_envio, fechahora_enviado as Enviado_en from DetalleVenta INNER JOIN Envio
ON DetalleVenta.id_envio=Envio.id_envio

--Selects Join
Select Municipio, Estado , clave_codigop from Estado INNER JOIN Municipio on
Estado.id_estado=Municipio.id_estado  
Select Nombre_prov as Proveedor, Numero+' '+ Calle as Direccion, Telefono from Proveedor LEFT JOIN Direccion 
on Proveedor.id_direccion=Direccion.id_direccion
LEFT JOIN Telefono on Proveedor.id_telefono=Telefono.id_telefono
Select email, telefono from Proveedor 
RIGHT JOIN Email on Proveedor.id_email=Email.id_email
RIGHT JOIN Telefono on Proveedor.id_telefono=Telefono.id_telefono
where id_prov=2
Select * from Cliente CROSS Join Telefono

--Selects con uso de where
Select id_direccion, numero, calle from Direccion where numero LIKE '1%'
Select * from Telefono where tipo_tel='Celular' ORDER BY telefono 
Select Venta.id_venta, DetalleVenta.id_articulo as Articulo_vendido, cant_vendida as Cantidad,
Total from Venta INNER JOIN DetalleVenta ON Venta.id_venta=DetalleVenta.id_venta
WHERE Total>1000
Select * from Email where email like '%@gmail.com'
Select * from Departamento where id_depto=102

--Select con funciones de agregacion
Select AVG(precio_u) as Promedio_Precios from ListadePrecios
Select MAX (precio_u) as Precio_Mayor from ListadePrecios 
Select COUNT(*) as Total_Registros from Telefono where tipo_tel='Casa' group by id_telefono
Select SUM(Total) as Suma_de_ventas from Venta
Select COUNT(tipo_tel) as num_registros, tipo_tel From Telefono
Group by tipo_tel  Having count (tipo_tel)>1


--Select con join y group by
Select Direccion.id_direccion, Direccion.numero, DIRECCION.Calle, Colonia.Colonia, Municipio.Municipio, Estado.Estado from Direccion
INNER JOIN Colonia on Direccion.id_colonia=Colonia.id_colonia
INNER JOIN Municipio on Direccion.id_municipio=Municipio.id_municipio
INNER JOIN Estado on Direccion.id_estado=Estado.id_estado
GROUP BY Direccion.id_direccion, Direccion.numero, DIRECCION.Calle, Colonia.Colonia, Municipio.Municipio, Estado.Estado
