USE [BD_Muebleria]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 07/09/2018 10:31:35 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[id_articulo] [int] NOT NULL,
	[SKU] [uniqueidentifier] NULL,
	[Descripcion] [text] NULL,
	[in_stock] [bit] NULL,
	[precio_u] [money] NULL,
	[Fotografia] [image] NULL,
	[id_prov] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 07/09/2018 10:31:35 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[id_depto] [int] NOT NULL,
	[nombre_depto] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_depto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 07/09/2018 10:31:35 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [int] NOT NULL,
	[id_depto] [int] NOT NULL,
	[id_turno] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ap_Paterno] [varchar](20) NULL,
	[Ap_Materno] [varchar](20) NULL,
	[Edad] [int] NULL,
	[Telefono] [varchar](15) NULL,
	[fecha_ingreso] [datetime] NULL,
	[Fotografia] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 07/09/2018 10:31:35 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id_prov] [int] NOT NULL,
	[nombre_prov] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 07/09/2018 10:31:35 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Turno](
	[id_turno] [int] NOT NULL,
	[nombre_turno] [varchar](30) NULL,
	[Horario] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD FOREIGN KEY([id_prov])
REFERENCES [dbo].[Proveedor] ([id_prov])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([id_depto])
REFERENCES [dbo].[Departamento] ([id_depto])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([id_turno])
REFERENCES [dbo].[Turno] ([id_turno])
GO
