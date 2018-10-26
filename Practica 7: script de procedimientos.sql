USE [bdMuebleria]
GO
/****** Object:  Table [dbo].[Area_Trabajo]    Script Date: 25/10/2018 10:11:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area_Trabajo](
	[id_area] [int] NOT NULL,
	[nombre_area] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[id_articulo] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Imagen] [image] NULL,
	[id_depto] [int] NOT NULL,
	[id_prov] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ap_paterno] [varchar](50) NULL,
	[Ap_materno] [varchar](50) NULL,
	[id_direccion] [int] NOT NULL,
	[id_email] [int] NULL,
	[id_telefono] [int] NULL,
	[id_telefono2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodigoPostal]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodigoPostal](
	[clave_codigop] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_codigop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colonia]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colonia](
	[id_colonia] [int] NOT NULL,
	[Colonia] [varchar](50) NULL,
	[id_municipio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_colonia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[id_depto] [int] NOT NULL,
	[Nombre_depto] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_depto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[id_dv] [int] NOT NULL,
	[id_venta] [int] NOT NULL,
	[id_articulo] [int] NOT NULL,
	[cant_vendida] [int] NULL,
	[clave_precio] [int] NOT NULL,
	[clave_pago] [int] NULL,
	[id_envio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[id_direccion] [int] NOT NULL,
	[numero] [varchar](10) NULL,
	[Calle] [varchar](50) NULL,
	[id_colonia] [int] NOT NULL,
	[id_municipio] [int] NOT NULL,
	[id_estado] [int] NOT NULL,
	[clave_codigop] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[id_email] [int] NOT NULL,
	[email] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ap_paterno] [varchar](50) NULL,
	[Ap_materno] [varchar](50) NULL,
	[Edad] [int] NULL,
	[id_telefono] [int] NULL,
	[fecha_ingreso] [date] NULL,
	[Fotografia] [image] NULL,
	[id_Turno] [int] NOT NULL,
	[id_area] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envio]    Script Date: 25/10/2018 10:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envio](
	[id_envio] [int] NOT NULL,
	[id_metodo] [int] NOT NULL,
	[fechahora_enviado] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_envio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[id_estado] [int] NOT NULL,
	[Estado] [varchar](50) NULL,
	[clave_codigop] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[clave] [int] NOT NULL,
	[id_articulo] [int] NOT NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListadePrecios]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListadePrecios](
	[clave_precio] [int] NOT NULL,
	[id_articulo] [int] NOT NULL,
	[precio_u] [money] NULL,
	[inicio_vigencia] [date] NULL,
	[termina_vigencia] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_precio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetodoEnvio]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodoEnvio](
	[id_metodo] [int] NOT NULL,
	[Metodo] [varchar](10) NULL,
	[Descripcion] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_metodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[id_municipio] [int] NOT NULL,
	[Municipio] [varchar](50) NULL,
	[id_estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[clave_pago] [int] NOT NULL,
	[tipo_pago] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id_prov] [int] NOT NULL,
	[Nombre_prov] [varchar](50) NULL,
	[id_telefono] [int] NOT NULL,
	[id_direccion] [int] NOT NULL,
	[id_email] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[id_telefono] [int] NOT NULL,
	[telefono] [varchar](15) NULL,
	[tipo_tel] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[id_Turno] [int] NOT NULL,
	[Turno] [varchar](20) NULL,
	[Hora_entrada] [time](7) NULL,
	[Hora_salida] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 25/10/2018 10:11:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[id_venta] [int] NOT NULL,
	[fecha_hora] [datetime] NULL,
	[id_empleado] [int] NULL,
	[id_cliente] [int] NULL,
	[Subtotal] [money] NULL,
	[Impuesto] [money] NULL,
	[Total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Area_Trabajo] ([id_area], [nombre_area]) VALUES (521, N'Ventas')
INSERT [dbo].[Area_Trabajo] ([id_area], [nombre_area]) VALUES (522, N'Recursos Humanos')
INSERT [dbo].[Area_Trabajo] ([id_area], [nombre_area]) VALUES (523, N'Seguridad')
INSERT [dbo].[Area_Trabajo] ([id_area], [nombre_area]) VALUES (524, N'Gerencia')
INSERT [dbo].[Articulo] ([id_articulo], [Descripcion], [Imagen], [id_depto], [id_prov]) VALUES (10419668, N'Refrigerador Mabe 18 pies cúbicos acero', NULL, 100, 2)
INSERT [dbo].[Articulo] ([id_articulo], [Descripcion], [Imagen], [id_depto], [id_prov]) VALUES (18520580, N'Smart Gear Power Charger Phone Mount', NULL, 104, 3)
INSERT [dbo].[Articulo] ([id_articulo], [Descripcion], [Imagen], [id_depto], [id_prov]) VALUES (39234719, N'Cuisinart Air Fryer Toaster Oven', NULL, 101, 6)
INSERT [dbo].[Articulo] ([id_articulo], [Descripcion], [Imagen], [id_depto], [id_prov]) VALUES (39344776, N'Celebrate Halloween Together Black Cat Soap Pump', NULL, 107, 1)
INSERT [dbo].[Articulo] ([id_articulo], [Descripcion], [Imagen], [id_depto], [id_prov]) VALUES (52928255, N'Hot Wheels Super Ultimate Garage Play Set', NULL, 103, 1)
INSERT [dbo].[Articulo] ([id_articulo], [Descripcion], [Imagen], [id_depto], [id_prov]) VALUES (61021618, N'SONOMA Goods for Life™ Patio Antigravity Chair', NULL, 106, 7)
INSERT [dbo].[Articulo] ([id_articulo], [Descripcion], [Imagen], [id_depto], [id_prov]) VALUES (69964100, N'San Miguel LED Beachcrest Lightscape Table Decor', NULL, 105, 5)
INSERT [dbo].[Articulo] ([id_articulo], [Descripcion], [Imagen], [id_depto], [id_prov]) VALUES (77376779, N'Toshiba Canvio for Desktop 4TB External Hard Drive', NULL, 102, 4)
INSERT [dbo].[Cliente] ([id_cliente], [Nombre], [Ap_paterno], [Ap_materno], [id_direccion], [id_email], [id_telefono], [id_telefono2]) VALUES (1, N'Rocio Esmeralda', N'Ramos', N'Niño', 302, 1, 2, 1)
INSERT [dbo].[Cliente] ([id_cliente], [Nombre], [Ap_paterno], [Ap_materno], [id_direccion], [id_email], [id_telefono], [id_telefono2]) VALUES (2, N'Armando', N'Garza', N'Rodriguez', 300, 2, 3, 5)
INSERT [dbo].[Cliente] ([id_cliente], [Nombre], [Ap_paterno], [Ap_materno], [id_direccion], [id_email], [id_telefono], [id_telefono2]) VALUES (3, N'Helena', N'Perez', N'Sanchez', 303, 6, 8, 9)
INSERT [dbo].[Cliente] ([id_cliente], [Nombre], [Ap_paterno], [Ap_materno], [id_direccion], [id_email], [id_telefono], [id_telefono2]) VALUES (4, N'Victor', N'Vasquez', N'Ramos', 302, 9, 10, NULL)
INSERT [dbo].[Cliente] ([id_cliente], [Nombre], [Ap_paterno], [Ap_materno], [id_direccion], [id_email], [id_telefono], [id_telefono2]) VALUES (5, N'Elizabeth', N'Gonzalez', N'Piña', 304, 5, 6, 1)
INSERT [dbo].[CodigoPostal] ([clave_codigop]) VALUES (44970)
INSERT [dbo].[CodigoPostal] ([clave_codigop]) VALUES (52300)
INSERT [dbo].[CodigoPostal] ([clave_codigop]) VALUES (64100)
INSERT [dbo].[CodigoPostal] ([clave_codigop]) VALUES (64102)
INSERT [dbo].[CodigoPostal] ([clave_codigop]) VALUES (72000)
INSERT [dbo].[CodigoPostal] ([clave_codigop]) VALUES (83000)
INSERT [dbo].[Colonia] ([id_colonia], [Colonia], [id_municipio]) VALUES (500, N'San Bernabe', 50)
INSERT [dbo].[Colonia] ([id_colonia], [Colonia], [id_municipio]) VALUES (501, N'5 de Mayo', 51)
INSERT [dbo].[Colonia] ([id_colonia], [Colonia], [id_municipio]) VALUES (502, N'San Francisco', 52)
INSERT [dbo].[Colonia] ([id_colonia], [Colonia], [id_municipio]) VALUES (503, N'Chapultepec', 53)
INSERT [dbo].[Colonia] ([id_colonia], [Colonia], [id_municipio]) VALUES (504, N'Hermosillo Centro', 54)
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (100, N'Línea Blanca')
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (101, N'Electrodomésticos')
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (102, N'Cómputo y Electrónica')
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (103, N'Juguetes')
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (104, N'Celulares')
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (105, N'Decoración')
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (106, N'Patio')
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (107, N'Baño')
INSERT [dbo].[Departamento] ([id_depto], [Nombre_depto]) VALUES (108, N'Cocina')
INSERT [dbo].[DetalleVenta] ([id_dv], [id_venta], [id_articulo], [cant_vendida], [clave_precio], [clave_pago], [id_envio]) VALUES (20305, 56647902, 10419668, 1, 701048, 202, 867)
INSERT [dbo].[DetalleVenta] ([id_dv], [id_venta], [id_articulo], [cant_vendida], [clave_precio], [clave_pago], [id_envio]) VALUES (20306, 56647904, 18520580, 1, 701049, 201, 868)
INSERT [dbo].[DetalleVenta] ([id_dv], [id_venta], [id_articulo], [cant_vendida], [clave_precio], [clave_pago], [id_envio]) VALUES (20307, 56647906, 39234719, 1, 701050, 201, 869)
INSERT [dbo].[DetalleVenta] ([id_dv], [id_venta], [id_articulo], [cant_vendida], [clave_precio], [clave_pago], [id_envio]) VALUES (20308, 56647908, 39344776, 5, 701047, 200, 870)
INSERT [dbo].[DetalleVenta] ([id_dv], [id_venta], [id_articulo], [cant_vendida], [clave_precio], [clave_pago], [id_envio]) VALUES (20309, 56647910, 52928255, 1, 701046, 200, 871)
INSERT [dbo].[DetalleVenta] ([id_dv], [id_venta], [id_articulo], [cant_vendida], [clave_precio], [clave_pago], [id_envio]) VALUES (20310, 56647911, 69964100, 5, 701052, 202, 872)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (300, N'1031 C', N'Escarola', 500, 50, 30, 64102)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (301, N'2024', N'José Alcalá', 501, 51, 31, 44970)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (302, N'1243', N'Calle 6 Nte', 502, 52, 32, 72000)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (303, N'560', N'Vicente Guerrero', 503, 53, 33, 52300)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (304, N'845', N'Calle de la Reforma', 504, 54, 34, 83000)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (305, N'1021 A', N'Avenida Camino de la Pradera', 500, 50, 30, 64102)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (306, N'1016 B', N'Nogales', 500, 50, 30, 64102)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (307, N'1066 C', N'De la Saabana', 500, 50, 30, 64102)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (308, N'1047 A', N'Arboledas', 500, 50, 30, 64102)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (309, N'1055 A', N'Roble', 500, 50, 30, 64102)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (310, N'1025 B', N'Ébano', 500, 50, 30, 64102)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (311, N'1099 C', N'Abedul', 500, 50, 30, 64102)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (312, N'2027', N'Francisco Quintero', 501, 51, 31, 44970)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (313, N'2026', N'Emiliano Zapata', 501, 51, 31, 44970)
INSERT [dbo].[Direccion] ([id_direccion], [numero], [Calle], [id_colonia], [id_municipio], [id_estado], [clave_codigop]) VALUES (314, N'2034', N'Miguel Hidalgo', 501, 51, 31, 44970)
INSERT [dbo].[Email] ([id_email], [email]) VALUES (1, N'cliente1@yahoo.com.mx')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (2, N'customer@gmail.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (3, N'customer1@hotmail.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (4, N'cliente@outlook.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (5, N'custom@optonline.net')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (6, N'cliente099@comcast.net')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (7, N'cliente23@live.com.mx')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (8, N'customer00@ymail.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (9, N'cliente3@gmail.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (12, N'proveedor@hotmail.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (13, N'proveedores@grupox.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (14, N'proveedor0@optonline.net')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (15, N'proveedor32@live.com.mx')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (16, N'rox200199@hotmail.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (17, N'provedory@ymail.com')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (18, N'pr0veedor@live.com.mx')
INSERT [dbo].[Email] ([id_email], [email]) VALUES (20, N'proveedor@farm.mx')
INSERT [dbo].[Empleado] ([id_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Edad], [id_telefono], [fecha_ingreso], [Fotografia], [id_Turno], [id_area]) VALUES (1900547, N'Sam', N'Tijerina', N'Sanchez', 25, 25, CAST(N'2012-05-07' AS Date), NULL, 2, 521)
INSERT [dbo].[Empleado] ([id_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Edad], [id_telefono], [fecha_ingreso], [Fotografia], [id_Turno], [id_area]) VALUES (1916390, N'Emil', N'Lomeli', N'Ramirez', 18, 21, CAST(N'2018-02-03' AS Date), NULL, 1, 521)
INSERT [dbo].[Empleado] ([id_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Edad], [id_telefono], [fecha_ingreso], [Fotografia], [id_Turno], [id_area]) VALUES (1917540, N'Perla', N'Hernandez', N'Cupertino', 23, 22, CAST(N'2016-08-05' AS Date), NULL, 1, 521)
INSERT [dbo].[Empleado] ([id_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Edad], [id_telefono], [fecha_ingreso], [Fotografia], [id_Turno], [id_area]) VALUES (1925368, N'Rosie', N'Gomez', N'Saldaña', 20, 23, CAST(N'2017-09-04' AS Date), NULL, 1, 521)
INSERT [dbo].[Empleado] ([id_empleado], [Nombre], [Ap_paterno], [Ap_materno], [Edad], [id_telefono], [fecha_ingreso], [Fotografia], [id_Turno], [id_area]) VALUES (1985463, N'Eduardo', N'Lopez', N'Perez', 27, 24, CAST(N'2013-07-08' AS Date), NULL, 2, 521)
INSERT [dbo].[Envio] ([id_envio], [id_metodo], [fechahora_enviado]) VALUES (867, 3, CAST(N'2018-01-21T09:00:00.000' AS DateTime))
INSERT [dbo].[Envio] ([id_envio], [id_metodo], [fechahora_enviado]) VALUES (868, 3, CAST(N'2018-03-02T09:00:00.000' AS DateTime))
INSERT [dbo].[Envio] ([id_envio], [id_metodo], [fechahora_enviado]) VALUES (869, 3, CAST(N'2018-06-23T09:00:00.000' AS DateTime))
INSERT [dbo].[Envio] ([id_envio], [id_metodo], [fechahora_enviado]) VALUES (870, 2, CAST(N'2018-10-17T09:00:00.000' AS DateTime))
INSERT [dbo].[Envio] ([id_envio], [id_metodo], [fechahora_enviado]) VALUES (871, 2, CAST(N'2018-05-16T08:00:00.000' AS DateTime))
INSERT [dbo].[Envio] ([id_envio], [id_metodo], [fechahora_enviado]) VALUES (872, 1, CAST(N'2018-02-15T08:00:00.000' AS DateTime))
INSERT [dbo].[Estado] ([id_estado], [Estado], [clave_codigop]) VALUES (30, N'Nuevo León', 64102)
INSERT [dbo].[Estado] ([id_estado], [Estado], [clave_codigop]) VALUES (31, N'Jalisco', 44970)
INSERT [dbo].[Estado] ([id_estado], [Estado], [clave_codigop]) VALUES (32, N'Puebla', 72000)
INSERT [dbo].[Estado] ([id_estado], [Estado], [clave_codigop]) VALUES (33, N'Estado de Mexico', 52300)
INSERT [dbo].[Estado] ([id_estado], [Estado], [clave_codigop]) VALUES (34, N'Sonora', 83000)
INSERT [dbo].[Inventario] ([clave], [id_articulo], [cantidad]) VALUES (300, 10419668, 100)
INSERT [dbo].[Inventario] ([clave], [id_articulo], [cantidad]) VALUES (301, 18520580, 300)
INSERT [dbo].[Inventario] ([clave], [id_articulo], [cantidad]) VALUES (302, 39234719, 250)
INSERT [dbo].[Inventario] ([clave], [id_articulo], [cantidad]) VALUES (303, 39344776, 1000)
INSERT [dbo].[Inventario] ([clave], [id_articulo], [cantidad]) VALUES (304, 52928255, 600)
INSERT [dbo].[Inventario] ([clave], [id_articulo], [cantidad]) VALUES (305, 61021618, 150)
INSERT [dbo].[Inventario] ([clave], [id_articulo], [cantidad]) VALUES (306, 69964100, 530)
INSERT [dbo].[Inventario] ([clave], [id_articulo], [cantidad]) VALUES (307, 77376779, 475)
INSERT [dbo].[ListadePrecios] ([clave_precio], [id_articulo], [precio_u], [inicio_vigencia], [termina_vigencia]) VALUES (701046, 52928255, 400.0000, CAST(N'2018-10-11' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[ListadePrecios] ([clave_precio], [id_articulo], [precio_u], [inicio_vigencia], [termina_vigencia]) VALUES (701047, 39344776, 120.0000, CAST(N'2018-10-11' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[ListadePrecios] ([clave_precio], [id_articulo], [precio_u], [inicio_vigencia], [termina_vigencia]) VALUES (701048, 10419668, 11200.0000, CAST(N'2018-10-11' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[ListadePrecios] ([clave_precio], [id_articulo], [precio_u], [inicio_vigencia], [termina_vigencia]) VALUES (701049, 18520580, 200.0000, CAST(N'2018-10-11' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[ListadePrecios] ([clave_precio], [id_articulo], [precio_u], [inicio_vigencia], [termina_vigencia]) VALUES (701050, 39234719, 1200.0000, CAST(N'2018-10-11' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[ListadePrecios] ([clave_precio], [id_articulo], [precio_u], [inicio_vigencia], [termina_vigencia]) VALUES (701051, 61021618, 2800.0000, CAST(N'2018-10-11' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[ListadePrecios] ([clave_precio], [id_articulo], [precio_u], [inicio_vigencia], [termina_vigencia]) VALUES (701052, 69964100, 150.0000, CAST(N'2018-10-11' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[ListadePrecios] ([clave_precio], [id_articulo], [precio_u], [inicio_vigencia], [termina_vigencia]) VALUES (701053, 77376779, 500.0000, CAST(N'2018-10-11' AS Date), CAST(N'2019-11-10' AS Date))
INSERT [dbo].[MetodoEnvio] ([id_metodo], [Metodo], [Descripcion]) VALUES (1, N'Un día', N'Entrega en 1 día hábil')
INSERT [dbo].[MetodoEnvio] ([id_metodo], [Metodo], [Descripcion]) VALUES (2, N'Dos dias', N'Entrega en 2 días hábiles')
INSERT [dbo].[MetodoEnvio] ([id_metodo], [Metodo], [Descripcion]) VALUES (3, N'Estándar', N'Entrega entre 3-5 días hábiles')
INSERT [dbo].[Municipio] ([id_municipio], [Municipio], [id_estado]) VALUES (50, N'Monterrey', 30)
INSERT [dbo].[Municipio] ([id_municipio], [Municipio], [id_estado]) VALUES (51, N'Guadalajara', 31)
INSERT [dbo].[Municipio] ([id_municipio], [Municipio], [id_estado]) VALUES (52, N'Puebla de Zaragoza', 32)
INSERT [dbo].[Municipio] ([id_municipio], [Municipio], [id_estado]) VALUES (53, N'Chapultepec', 33)
INSERT [dbo].[Municipio] ([id_municipio], [Municipio], [id_estado]) VALUES (54, N'Hermosillo', 34)
INSERT [dbo].[Pago] ([clave_pago], [tipo_pago]) VALUES (200, N'Efectivo')
INSERT [dbo].[Pago] ([clave_pago], [tipo_pago]) VALUES (201, N'Tarjeta de débito')
INSERT [dbo].[Pago] ([clave_pago], [tipo_pago]) VALUES (202, N'Tarjeta de crédito')
INSERT [dbo].[Proveedor] ([id_prov], [Nombre_prov], [id_telefono], [id_direccion], [id_email]) VALUES (1, N'Elemental Soluciones', 6, 300, 12)
INSERT [dbo].[Proveedor] ([id_prov], [Nombre_prov], [id_telefono], [id_direccion], [id_email]) VALUES (2, N'Leo Albert', 1, 301, 13)
INSERT [dbo].[Proveedor] ([id_prov], [Nombre_prov], [id_telefono], [id_direccion], [id_email]) VALUES (3, N'Smart Gear', 11, 305, 14)
INSERT [dbo].[Proveedor] ([id_prov], [Nombre_prov], [id_telefono], [id_direccion], [id_email]) VALUES (4, N'Toshiba', 12, 306, 15)
INSERT [dbo].[Proveedor] ([id_prov], [Nombre_prov], [id_telefono], [id_direccion], [id_email]) VALUES (5, N'Greats Choice', 13, 307, 16)
INSERT [dbo].[Proveedor] ([id_prov], [Nombre_prov], [id_telefono], [id_direccion], [id_email]) VALUES (6, N'Cuisinart', 14, 308, 17)
INSERT [dbo].[Proveedor] ([id_prov], [Nombre_prov], [id_telefono], [id_direccion], [id_email]) VALUES (7, N'Sonoma Goods for Life', 15, 309, 18)
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (1, N'81259675', N'Casa')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (2, N'21589635', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (3, N'82647530', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (5, N'81256379', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (6, N'81236590', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (8, N'21363047', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (9, N'81828386', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (10, N'82868985', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (11, N'81259876', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (12, N'65987423', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (13, N'23659874', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (14, N'81828589', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (15, N'81236578', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (16, N'81237467', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (17, N'81545856', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (18, N'81969598', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (19, N'81232024', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (20, N'81363532', N'Trabajo')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (21, N'81256598', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (22, N'81257898', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (23, N'8256598', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (24, N'81828385', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (25, N'81255889', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (26, N'81859630', N'Celular')
INSERT [dbo].[Telefono] ([id_telefono], [telefono], [tipo_tel]) VALUES (27, N'81147410', N'Celular')
INSERT [dbo].[Turno] ([id_Turno], [Turno], [Hora_entrada], [Hora_salida]) VALUES (1, N'Día', CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[Turno] ([id_Turno], [Turno], [Hora_entrada], [Hora_salida]) VALUES (2, N'Tarde', CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Venta] ([id_venta], [fecha_hora], [id_empleado], [id_cliente], [Subtotal], [Impuesto], [Total]) VALUES (56647902, CAST(N'2018-01-20T16:28:00.000' AS DateTime), 1900547, 1, 11200.0000, 1792.0000, 12992.0000)
INSERT [dbo].[Venta] ([id_venta], [fecha_hora], [id_empleado], [id_cliente], [Subtotal], [Impuesto], [Total]) VALUES (56647904, CAST(N'2018-03-01T10:54:00.000' AS DateTime), 1916390, 2, 200.0000, 32.0000, 232.0000)
INSERT [dbo].[Venta] ([id_venta], [fecha_hora], [id_empleado], [id_cliente], [Subtotal], [Impuesto], [Total]) VALUES (56647906, CAST(N'2018-06-22T09:38:00.000' AS DateTime), 1917540, 3, 1200.0000, 192.0000, 1392.0000)
INSERT [dbo].[Venta] ([id_venta], [fecha_hora], [id_empleado], [id_cliente], [Subtotal], [Impuesto], [Total]) VALUES (56647908, CAST(N'2018-10-16T08:11:00.000' AS DateTime), 1925368, 4, 960.0000, 153.6000, 1113.6000)
INSERT [dbo].[Venta] ([id_venta], [fecha_hora], [id_empleado], [id_cliente], [Subtotal], [Impuesto], [Total]) VALUES (56647910, CAST(N'2018-05-15T14:35:00.000' AS DateTime), 1985463, 5, 400.0000, 64.0000, 464.0000)
INSERT [dbo].[Venta] ([id_venta], [fecha_hora], [id_empleado], [id_cliente], [Subtotal], [Impuesto], [Total]) VALUES (56647911, CAST(N'2018-02-14T18:08:00.000' AS DateTime), 1985463, 1, 750.0000, 120.0000, 870.0000)
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD FOREIGN KEY([id_depto])
REFERENCES [dbo].[Departamento] ([id_depto])
GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD FOREIGN KEY([id_prov])
REFERENCES [dbo].[Proveedor] ([id_prov])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direccion] ([id_direccion])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([id_email])
REFERENCES [dbo].[Email] ([id_email])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([id_telefono])
REFERENCES [dbo].[Telefono] ([id_telefono])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([id_telefono2])
REFERENCES [dbo].[Telefono] ([id_telefono])
GO
ALTER TABLE [dbo].[Colonia]  WITH CHECK ADD FOREIGN KEY([id_municipio])
REFERENCES [dbo].[Municipio] ([id_municipio])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([clave_precio])
REFERENCES [dbo].[ListadePrecios] ([clave_precio])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([clave_pago])
REFERENCES [dbo].[Pago] ([clave_pago])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([id_articulo])
REFERENCES [dbo].[Articulo] ([id_articulo])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([id_envio])
REFERENCES [dbo].[Envio] ([id_envio])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([id_venta])
REFERENCES [dbo].[Venta] ([id_venta])
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD FOREIGN KEY([clave_codigop])
REFERENCES [dbo].[CodigoPostal] ([clave_codigop])
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD FOREIGN KEY([id_colonia])
REFERENCES [dbo].[Colonia] ([id_colonia])
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estado] ([id_estado])
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD FOREIGN KEY([id_municipio])
REFERENCES [dbo].[Municipio] ([id_municipio])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([id_area])
REFERENCES [dbo].[Area_Trabajo] ([id_area])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([id_telefono])
REFERENCES [dbo].[Telefono] ([id_telefono])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([id_Turno])
REFERENCES [dbo].[Turno] ([id_Turno])
GO
ALTER TABLE [dbo].[Envio]  WITH CHECK ADD FOREIGN KEY([id_metodo])
REFERENCES [dbo].[MetodoEnvio] ([id_metodo])
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD FOREIGN KEY([clave_codigop])
REFERENCES [dbo].[CodigoPostal] ([clave_codigop])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([id_articulo])
REFERENCES [dbo].[Articulo] ([id_articulo])
GO
ALTER TABLE [dbo].[ListadePrecios]  WITH CHECK ADD FOREIGN KEY([id_articulo])
REFERENCES [dbo].[Articulo] ([id_articulo])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estado] ([id_estado])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direccion] ([id_direccion])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([id_email])
REFERENCES [dbo].[Email] ([id_email])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([id_telefono])
REFERENCES [dbo].[Telefono] ([id_telefono])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleado] ([id_empleado])
GO
/****** Object:  StoredProcedure [dbo].[Proc_Articulo_Depto]    Script Date: 25/10/2018 10:11:51 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Articulo_Precio]    Script Date: 25/10/2018 10:11:51 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Clientes_Edo]    Script Date: 25/10/2018 10:11:51 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Empleado_Ingreso]    Script Date: 25/10/2018 10:11:51 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Prov_Articulo]    Script Date: 25/10/2018 10:11:51 p. m. ******/
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
