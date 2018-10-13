Select * from Direccion
Select * from MetodoEnvio
Select * from Turno
Select * from Telefono
Select * from Email
Select * from Area_Trabajo
Select * from Departamento
Select * from Estado
Select * from Municipio

Select id_direccion, numero, calle from Direccion where numero LIKE '1%'
Select * from Telefono where tipo_tel='Celular' ORDER BY telefono 
Select * from MetodoEnvio where id_metodo=1
Select * from Email where email like '%@gmail.com'
Select * from Departamento where id_depto=102

Select Municipio, Estado , clave_codigop from Estado INNER JOIN Municipio on
Estado.id_estado=Municipio.id_estado  
Select Nombre_prov, Numero, Calle, Telefono from Proveedor LEFT JOIN Direccion 
on Proveedor.id_direccion=Direccion.id_direccion
LEFT JOIN Telefono on Proveedor.id_telefono=Telefono.id_telefono
Select email, telefono from Proveedor 
RIGHT JOIN Email on Proveedor.id_email=Email.id_email
RIGHT JOIN Telefono on Proveedor.id_telefono=Telefono.id_telefono
where id_prov=2
Select * from Cliente CROSS Join Telefono

Select COUNT(*) as Total_Registros from Telefono where tipo_tel='Casa' group by id_telefono
Select AVG(precio_u) as Promedio_Precios from ListadePrecios
Select MAX (precio_u) as Precio_Mayor from ListadePrecios 
Select COUNT(tipo_tel) as num_registros, tipo_tel From Telefono Group by tipo_tel  Having count (tipo_tel)>1
Select SUM(precio_u) as Suma from ListadePrecios

Select Direccion.id_direccion, Direccion.numero, DIRECCION.Calle, Colonia.Colonia, Municipio.Municipio, Estado.Estado from Direccion
INNER JOIN Colonia on Direccion.id_colonia=Colonia.id_colonia
INNER JOIN Municipio on Direccion.id_municipio=Municipio.id_municipio
INNER JOIN Estado on Direccion.id_estado=Estado.id_estado
GROUP BY Direccion.id_direccion, Direccion.numero, DIRECCION.Calle, Colonia.Colonia, Municipio.Municipio, Estado.Estado