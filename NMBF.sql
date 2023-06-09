USE [master]
GO
/****** Object:  Database [NMBF1]    Script Date: 23/05/2020 05:51:10 p. m. ******/
CREATE DATABASE [NMBF1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NMBF1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\NMBF1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NMBF1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\NMBF1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NMBF1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NMBF1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NMBF1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NMBF1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NMBF1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NMBF1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NMBF1] SET ARITHABORT OFF 
GO
ALTER DATABASE [NMBF1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NMBF1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NMBF1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NMBF1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NMBF1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NMBF1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NMBF1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NMBF1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NMBF1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NMBF1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NMBF1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NMBF1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NMBF1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NMBF1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NMBF1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NMBF1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NMBF1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NMBF1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NMBF1] SET  MULTI_USER 
GO
ALTER DATABASE [NMBF1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NMBF1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NMBF1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NMBF1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NMBF1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NMBF1] SET QUERY_STORE = OFF
GO
USE [NMBF1]
GO
/****** Object:  Table [dbo].[Alimentos]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alimentos](
	[ID_Alimento] [varchar](50) NOT NULL,
	[Num] [int] NULL,
	[Nombre] [varchar](max) NULL,
	[CarboHidratosGr] [float] NULL,
	[ProteinasGr] [float] NULL,
	[GrasasGr] [float] NULL,
 CONSTRAINT [PK_Alimentos] PRIMARY KEY CLUSTERED 
(
	[ID_Alimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[Id] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[IdCliente] [varchar](50) NOT NULL,
	[Cliente] [varchar](max) NOT NULL,
	[Empleado] [varchar](max) NOT NULL,
	[Asunto] [text] NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Citas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes2]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes2](
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Contacto] [nvarchar](50) NOT NULL,
	[Sexo] [char](10) NOT NULL,
	[Cod] [varchar](50) NOT NULL,
	[Num] [int] NOT NULL,
 CONSTRAINT [PK_clientes2_1] PRIMARY KEY CLUSTERED 
(
	[Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosFC]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosFC](
	[Peso] [float] NOT NULL,
	[Altura] [float] NOT NULL,
	[Edad] [int] NOT NULL,
	[Embarazo] [nvarchar](50) NULL,
	[Alergia] [varchar](50) NULL,
	[ActividadF] [nvarchar](50) NOT NULL,
	[cod_cliente] [varchar](50) NOT NULL,
	[Fecha] [date] NOT NULL,
	[EFisico] [nvarchar](50) NOT NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_DatosFC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EtiquetasAlimentos]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EtiquetasAlimentos](
	[ID] [int] NOT NULL,
	[IDAlimento] [varchar](50) NOT NULL,
	[Caracteristica] [varchar](50) NULL,
 CONSTRAINT [PK_EtiquetasAlimentos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GustosC]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GustosC](
	[CodC] [char](10) NOT NULL,
	[Pollo] [char](10) NULL,
	[Cerdo] [char](10) NOT NULL,
	[Tocino] [char](10) NULL,
	[Pescado] [char](10) NULL,
	[Res] [char](10) NULL,
	[Aguacate] [char](10) NULL,
	[Brocoli] [char](10) NULL,
	[Esparragos] [char](10) NULL,
	[Coliflor] [char](10) NULL,
	[Calabazin] [char](10) NULL,
	[Champiñon] [char](10) NULL,
	[Huevo] [char](10) NULL,
	[Mantequilla] [char](10) NULL,
	[Nueces] [char](10) NULL,
	[Queso] [char](10) NULL,
	[Pastas] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PTDieta]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PTDieta](
	[IDTDieta] [varchar](50) NOT NULL,
	[Etiqueta] [nchar](10) NOT NULL,
	[Num] [int] NOT NULL,
 CONSTRAINT [PK_PTDieta] PRIMARY KEY CLUSTERED 
(
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TDietas]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TDietas](
	[ID] [varchar](50) NOT NULL,
	[NombreTD] [varchar](max) NOT NULL,
	[Carbohidratos] [float] NOT NULL,
	[Lipidos] [float] NOT NULL,
	[Proteinas] [float] NOT NULL,
	[FCalorias] [float] NOT NULL,
	[Num] [int] NULL,
	[TipoF] [varchar](50) NULL,
 CONSTRAINT [PK_TDietas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 23/05/2020 05:51:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Nombre] [varchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Puesto] [varchar](50) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento01', 1, N'Leche Chocolatada', 10, 3, 1.1000000238418579)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento010', 10, N'Yogur con durazno', 9, 3, 0.05000000074505806)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento011', 11, N'Yogur con fibras y frutas', 12.5, 4.6999998092651367, 0.20000000298023224)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento012', 12, N'Yogur con cereal azucarado', 21, 3.7999999523162842, 2.2000000476837158)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento013', 13, N'Yogur descremado saborizado', 4.4000000953674316, 3.5999999046325684, 0.05000000074505806)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento014', 14, N'Yogur descremado y AllBran', 12.5, 5.0999999046325684, 0.40000000596046448)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento015', 15, N'Yogur descremado con Frutas', 9, 2.7999999523162842, 0.029999999329447746)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento016', 16, N'Yogur descremado con Corn Flakes', 11.399999618530273, 4.1999998092651367, 0.039999999105930328)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento017', 17, N'Queso Philadelphia ligth', 6.5999999046325684, 10, 16.600000381469727)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento018', 18, N'Queso blanco Diet', 7.4000000953674316, 9.8999996185302734, 3.5)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento019', 19, N'Queso camembert-brie', 0, 26.700000762939453, 29.700000762939453)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento02', 2, N'Pan integral', 36.799999237060547, 13.399999618530273, 3)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento020', 20, N'Queso Cheddar Argentino', 0, 26, 30)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento03', 3, N'Clara de huevo', 1, 11, 0.20000000298023224)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento04', 4, N'Leche descremada en polvo', 5.0999999046325684, 3.5, 0.10000000149011612)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento05', 5, N'Leche entera', 4.5, 3, 3)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento06', 6, N'Leche entera azucarada', 10, 3, 3)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento07', 7, N'Leche descremada', 4.6999998092651367, 3.0999999046325684, 1.5)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento08', 8, N'Leche cultivada descremada', 4.3000001907348633, 3.5999999046325684, 0.10000000149011612)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr]) VALUES (N'Alimento09', 9, N'Yogur con cereales', 9, 3, 0.05000000074505806)
INSERT [dbo].[Citas] ([Id], [Fecha], [IdCliente], [Cliente], [Empleado], [Asunto], [Estado]) VALUES (1, CAST(N'2020-05-15' AS Date), N'Cliente011', N'Lola', N'Cristhian', N'Revision', N'Hecho')
INSERT [dbo].[Citas] ([Id], [Fecha], [IdCliente], [Cliente], [Empleado], [Asunto], [Estado]) VALUES (2, CAST(N'2020-05-28' AS Date), N'Cliente011', N'Lola', N'Cristhian', N'Revision', N'Pendiente')
INSERT [dbo].[Citas] ([Id], [Fecha], [IdCliente], [Cliente], [Empleado], [Asunto], [Estado]) VALUES (3, CAST(N'2020-05-28' AS Date), N'Cliente04', N'pepe', N'Cristhian', N'Revision', N'Pendiente')
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'Rodrigo', N'Rodriguez', N'Rodriguez', N'1111111111', N'M         ', N'Cliente010', 10)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'Lola', N'Vaca', N'Cola', N'1278541113', N'F         ', N'Cliente011', 11)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'Antonio', N'Rodrigez', N'Gomez', N'12452132', N'M         ', N'Cliente012', 12)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'Laura', N'Gonzales', N'Gonzales', N'121454521123', N'F         ', N'Cliente013', 13)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'prueba1', N'prueba1', N'prueba1', N'878787877', N'M         ', N'Cliente05', 5)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'lolae', N'Perez', N'hernandez', N'1278541112', N'M         ', N'Cliente07', 7)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (86, 1.75, 18, N'No', N'Leche', N'Nula', N'Cliente05', CAST(N'2020-09-02' AS Date), N'Sobrepeso', 5)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (95, 1.77, 25, N'No', N'Leche', N'1-2 veces a la semana', N'Cliente08', CAST(N'2020-02-26' AS Date), N'Obesidad', 17)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (110, 1.84, 21, N'No', N'Lactosa', N'Nula', N'Cliente010', CAST(N'2020-05-12' AS Date), N'Obesidad', 22)
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (7, N'Alimento01', N'Bebida')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (8, N'Alimento01', N'Leche')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (9, N'Alimento01', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (10, N'Alimento02', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (11, N'Alimento02', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (12, N'Alimento03', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (13, N'Alimento03', N'Huevo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (14, N'Alimento04', N'Leche')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (15, N'Alimento04', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (16, N'Alimento04', N'Bebida')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (17, N'Alimento05', N'Bebida')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (18, N'Alimento05', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (19, N'Alimento05', N'Leche')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (20, N'Alimento06', N'Bebida')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (21, N'Alimento06', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (22, N'Alimento06', N'Leche')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (23, N'Alimento06', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (24, N'Alimento07', N'Bebida')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (25, N'Alimento07', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (26, N'Alimento07', N'Leche')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (27, N'Alimento08', N'Leche')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (28, N'Alimento08', N'Bebida')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (29, N'Alimento08', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (30, N'Alimento09', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (31, N'Alimento09', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (32, N'Alimento010', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (33, N'Alimento010', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (34, N'Alimento010', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (35, N'Alimento011', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (36, N'Alimento011', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (37, N'Alimento011', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (38, N'Alimento012', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (39, N'Alimento012', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (40, N'Alimento012', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (41, N'Alimento012', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (42, N'Alimento013', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (43, N'Alimento013', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (44, N'Alimento014', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (45, N'Alimento014', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (46, N'Alimento014', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (47, N'Alimento016', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (48, N'Alimento016', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (49, N'Alimento016', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (50, N'Alimento015', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (51, N'Alimento015', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (52, N'Alimento015', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (53, N'Alimento017', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (54, N'Alimento017', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (55, N'Alimento017', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (56, N'Alimento018', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (57, N'Alimento018', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (58, N'Alimento018', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (59, N'Alimento019', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (60, N'Alimento019', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (61, N'Alimento019', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (62, N'Alimento020', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (63, N'Alimento020', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (64, N'Alimento020', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (65, N'Alimento021', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (66, N'Alimento021', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (67, N'Alimento021', N'Simple')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente05 ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'Si        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente010', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente08 ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'Si        ', N'Si        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'Si        ', N'No        ', N'Si        ')
INSERT [dbo].[PTDieta] ([IDTDieta], [Etiqueta], [Num]) VALUES (N'TDieta05', N'Golosina  ', 1)
INSERT [dbo].[PTDieta] ([IDTDieta], [Etiqueta], [Num]) VALUES (N'TDieta05', N'Pan       ', 2)
INSERT [dbo].[TDietas] ([ID], [NombreTD], [Carbohidratos], [Lipidos], [Proteinas], [FCalorias], [Num], [TipoF]) VALUES (N'TDieta05', N'Dibeticos', 20, 70, 10, 0, 5, N'NP')
INSERT [dbo].[usuarios] ([Nombre], [Email], [Password], [Usuario], [Puesto]) VALUES (N'Cristhian', N'Cristhianarmando2001@gmail.com', N'1234', N'Admin', N'SuperAdmin')
INSERT [dbo].[usuarios] ([Nombre], [Email], [Password], [Usuario], [Puesto]) VALUES (N'Pepe', N'Pepe@gmail.com', N'1234', N'Pepe', N'Consultador')
INSERT [dbo].[usuarios] ([Nombre], [Email], [Password], [Usuario], [Puesto]) VALUES (N'Pepe2', N'EmailP@gmail.com', N'1234', N'Pepe2', N'Admin')
ALTER TABLE [dbo].[EtiquetasAlimentos]  WITH CHECK ADD  CONSTRAINT [FK_EtiquetasAlimentos_EtiquetasAlimentos] FOREIGN KEY([ID])
REFERENCES [dbo].[EtiquetasAlimentos] ([ID])
GO
ALTER TABLE [dbo].[EtiquetasAlimentos] CHECK CONSTRAINT [FK_EtiquetasAlimentos_EtiquetasAlimentos]
GO
USE [master]
GO
ALTER DATABASE [NMBF1] SET  READ_WRITE 
GO
