USE [bdMuebleria]
GO
/****** Object:  Table [dbo].[Area_Trabajo]    Script Date: 06/10/2018 04:31:09 p. m. ******/
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
/****** Object:  Table [dbo].[CodigoPostal]    Script Date: 06/10/2018 04:31:10 p. m. ******/
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
/****** Object:  Table [dbo].[Colonia]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[Departamento]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[Direccion]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[Email]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[Estado]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[MetodoEnvio]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[Municipio]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[Pago]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[Telefono]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
/****** Object:  Table [dbo].[Turno]    Script Date: 06/10/2018 04:31:11 p. m. ******/
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
ALTER TABLE [dbo].[Colonia]  WITH CHECK ADD FOREIGN KEY([id_municipio])
REFERENCES [dbo].[Municipio] ([id_municipio])
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
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD FOREIGN KEY([clave_codigop])
REFERENCES [dbo].[CodigoPostal] ([clave_codigop])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estado] ([id_estado])
GO
