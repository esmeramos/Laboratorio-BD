USE [bdMuebleria]
GO
/****** Object:  View [dbo].[Vista_Articulo_Depto]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_Articulo_Depto]
AS
Select id_articulo, Descripcion, Articulo.id_depto, Nombre_Depto
from Articulo INNER JOIN Departamento on Articulo.id_depto=Departamento.id_depto
Where Articulo.id_depto=100
GO
/****** Object:  View [dbo].[Vista_Articulo_Precio]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_Articulo_Precio]
AS
Select Articulo.id_articulo, Descripcion, precio_u 
FROM Articulo INNER JOIN ListadePrecios ON Articulo.id_articulo=ListadePrecios.id_articulo
WHERE ListadePrecios.precio_u>=500
GO
/****** Object:  View [dbo].[Vista_Clientes_Edo]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_Clientes_Edo]
AS
Select Nombre+ ' '+ Ap_paterno+' ' + Ap_materno as NombreCompleto,
Calle+' '+numero as Dirección
FROM Cliente INNER JOIN Direccion on Cliente.id_direccion=Direccion.id_direccion
INNER JOIN Estado ON Estado.id_estado=Direccion.id_estado
WHERE Direccion.id_estado=30
GO
/****** Object:  View [dbo].[Vista_Empleado_Ingreso]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_Empleado_Ingreso]
AS
Select id_empleado, Nombre+' '+Ap_Paterno+' '+Ap_materno as NombreCompleto, fecha_ingreso 
FROM Empleado
Where fecha_ingreso>='20080101'
GO
/****** Object:  View [dbo].[Vista_Prov_Articulo]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Vista_Prov_Articulo]
AS
Select id_articulo, Descripcion, Nombre_prov 
from Articulo INNER JOIN Proveedor on Articulo.id_prov=Proveedor.id_prov
Where Articulo.id_prov=1
GO
/****** Object:  StoredProcedure [dbo].[Proc_Articulo_Depto]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Proc_Articulo_Depto](
@depto_id int) AS
BEGIN
Select id_articulo, Descripcion, Articulo.id_depto, Nombre_Depto
from Articulo INNER JOIN Departamento on Articulo.id_depto=Departamento.id_depto
Where Articulo.id_depto=@depto_id
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Articulo_Precio]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Proc_Articulo_Precio](
@precio money) AS
begin
Select Articulo.id_articulo, Descripcion, precio_u 
FROM Articulo INNER JOIN ListadePrecios ON Articulo.id_articulo=ListadePrecios.id_articulo
WHERE ListadePrecios.precio_u>=@precio
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_Clientes_Edo]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Proc_Clientes_Edo](
@estado varchar(50)) AS
BEGIN
Select Nombre+ ' '+ Ap_paterno+' ' + Ap_materno as NombreCompleto,
Calle+' '+numero as Dirección
FROM Cliente INNER JOIN Direccion on Cliente.id_direccion=Direccion.id_direccion
INNER JOIN Estado ON Estado.id_estado=Direccion.id_estado
WHERE Estado.Estado like @estado
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Empleado_Ingreso]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Proc_Empleado_Ingreso](
@fecha date) AS
BEGIN
Select id_empleado, Nombre+' '+Ap_Paterno+' '+Ap_materno as NombreCompleto, fecha_ingreso 
FROM Empleado
Where fecha_ingreso>=@fecha
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_Prov_Articulo]    Script Date: 20/10/2018 12:23:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Proc_Prov_Articulo](
@prov_id int) AS
BEGIN
Select id_articulo, Descripcion, Nombre_prov 
from Articulo INNER JOIN Proveedor on Articulo.id_prov=Proveedor.id_prov
Where Articulo.id_prov=@prov_id
END
GO
