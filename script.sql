USE [master]
GO
/****** Object:  Database [NMBF1]    Script Date: 17/06/2020 09:18:27 p. m. ******/
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
/****** Object:  Table [dbo].[Alimentos]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
	[Kcalorias] [float] NULL,
 CONSTRAINT [PK_Alimentos] PRIMARY KEY CLUSTERED 
(
	[ID_Alimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
/****** Object:  Table [dbo].[clientes2]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
/****** Object:  Table [dbo].[DatosFC]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
/****** Object:  Table [dbo].[EtiquetasAlimentos]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
/****** Object:  Table [dbo].[GustosC]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
/****** Object:  Table [dbo].[PTDieta]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
/****** Object:  Table [dbo].[TDietas]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
/****** Object:  Table [dbo].[usuarios]    Script Date: 17/06/2020 09:18:28 p. m. ******/
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
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento01', 1, N'Leche Chocolatada', 10, 3, 1.1, 62)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento010', 10, N'Yogur con durazno', 9, 3, 0.05, 48)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0100', 100, N'Arenque en salmuera', 0, 21, 15, 219)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0101', 101, N'Atun en aceite', 0, 24.2, 20.5, 288)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0102', 102, N'Atun en agua', 0, 28, 0.8, 127)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0103', 103, N'Caviar en lata', 3.3, 26.9, 15, 262)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0104', 104, N'Sardinas en aceite', 0, 23.4, 13.2, 238)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0105', 105, N'Almeja', 2, 12.6, 1.6, 76)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0106', 106, N'calamar', 0, 16.4, 0.9, 78)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0107', 107, N'langosta', 0.5, 16.2, 1.9, 88)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0108', 108, N'langostino', 0, 17.9, 4.3, 115)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0109', 109, N'Mejillon', 3.2, 14.4, 2.1, 95)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento011', 11, N'Yogur con fibras y frutas', 12.5, 4.7, 0.2, 71)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0110', 110, N'Ostra', 3.5, 5.8, 0.5, 44)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0111', 111, N'Pulpo', 0, 12.6, 0.3, 56)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0112', 112, N'Vieira', 3.4, 14.8, 0.1, 78)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0113', 113, N'Acelga', 4.6, 2.4, 0.3, 25)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0114', 114, N'Achicoria', 3.8, 1.8, 0.3, 20)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0115', 115, N'Morron rojo', 5.1, 0.8, 0.2, 24)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0116', 116, N'Alcuacil', 6.9, 2.8, 0.2, 33)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0117', 117, N'brotes de alfalfa', 9.5, 6, 0.4, 52)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0118', 118, N'Apio', 3.3, 1.1, 0, 21)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0119', 119, N'Arvejas', 14.4, 6.3, 0.4, 84)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento012', 12, N'Yogur con cereal azucarado', 21, 3.8, 2.2, 119)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0120', 120, N'Batata', 26.3, 1.7, 0.4, 114)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0121', 121, N'Berenjena', 5.6, 1.2, 0.2, 25)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0122', 122, N'Berro', 3, 2.2, 0.3, 19)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0123', 123, N'Brocoli', 5.9, 3.6, 0.3, 32)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0124', 124, N'Calabaza', 6.5, 1, 0.1, 26)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0125', 125, N'Piña', 13.7, 0.4, 0.2, 52)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0126', 126, N'Banana', 22.2, 1.1, 0.2, 85)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0127', 127, N'Cereza', 14.3, 1.2, 0.3, 58)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0128', 128, N'Ciruela', 11.9, 0.6, 0.2, 47)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0129', 129, N'Coco fresco', 13.7, 3.5, 27.2, 296)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0130', 130, N'Damasco', 13.8, 0.8, 0.6, 57)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0131', 131, N'Durazno', 13.3, 0.8, 0.2, 52)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0132', 132, N'Granada', 16.2, 0.8, 0.7, 67)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0133', 133, N'Higo', 15.6, 1.2, 0.2, 62)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0134', 134, N'Konoto', 15.6, 1.3, 0.2, 62)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0135', 135, N'Kiwi', 10.8, 0.8, 0.6, 53)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0136', 136, N'Limon', 8.1, 0.6, 0.6, 29)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0137', 137, N'Mandarina', 10.9, 0.7, 0.2, 43)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0138', 138, N'Manzana', 15.2, 0.3, 0.3, 58)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0139', 139, N'Melon', 11.1, 0.6, 0.3, 44)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento014', 14, N'Yogur descremado y AllBran', 12.5, 5.1, 0.4, 75)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0140', 140, N'Naranja', 10.5, 0.8, 0.2, 42)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0141', 141, N'Nispero', 10.7, 14.8, 0.2, 44)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0142', 142, N'Pera', 14.8, 0.3, 0.2, 56)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0143', 143, N'Pomelo', 14.8, 0.3, 0.2, 41)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0144', 144, N'Sandia', 5.3, 0.5, 0.1, 22)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0145', 145, N'Uva', 16.7, 0.6, 0.7, 68)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0146', 146, N'Almendra', 19.6, 18.6, 54.1, 547)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0147', 147, N'Avellana', 19.8, 10.8, 63.2, 647)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0148', 148, N'Castaña de para', 20.5, 13.2, 60.3, 640)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0149', 149, N'Mani', 17.5, 26.7, 47.3, 560)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento015', 15, N'Yogur descremado con Frutas', 9, 2.8, 0.03, 48)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0150', 150, N'Nuez', 13.2, 13.7, 67.2, 664)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0151', 151, N'Pistacho', 19, 19.3, 53.7, 594)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0152', 152, N'Pasa de uva', 77.4, 2.5, 0.2, 289)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0153', 153, N'All bran', 73.3, 13.3, 3.3, 233)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0154', 154, N'Arroz blanco', 78.6, 6.7, 0.25, 343)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0155', 155, N'Arroz integral', 75.8, 8.7, 1.7, 353)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0156', 156, N'Avena nestum', 71.5, 13, 8, 410)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0157', 157, N'Avena arrollada', 62.5, 12.7, 9.5, 387)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0158', 158, N'Salvado de avena', 58.9, 17, 8.8, 383)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0159', 159, N'Cereal mix', 67.5, 9.5, 7.2, 375)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento016', 16, N'Yogur descremado con Corn Flakes', 11.4, 4.2, 0.04, 63)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0160', 160, N'Choco cereal', 86.7, 6.7, 3.3, 400)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0161', 161, N'Copos de Maiz', 83, 6.6, 0, 367)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0162', 162, N'Copos de Maiz azucarados', 93, 3.3, 0, 367)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0163', 163, N'Froot Loops', 83.3, 6.7, 3.3, 367)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0164', 164, N'Harina de gluten', 47.2, 41.4, 1.9, 378)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0165', 165, N'Maiz harina precocida', 81.4, 7.2, 1.2, 374)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0166', 166, N'Cappelettis cuatro quesos', 47, 8.5, 5.9, 275)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0167', 167, N'Fideos', 75.2, 12.5, 1.2, 369)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0168', 168, N'Fideos soperos', 72.2, 11, 1.1, 343)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0169', 169, N'Ravioles de carne y jamon', 44.4, 9.1, 4.4, 253)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento017', 17, N'Queso Philadelphia ligth', 6.6, 10, 16.6, 200)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0170', 170, N'Tallarines al huevo', 56.8, 9.2, 2.6, 287)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0171', 171, N'Fideos de gluten', 54, 33, 1.6, 363)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0172', 172, N'Fideos de harina integral', 70, 15.4, 1.7, 359)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0173', 173, N'Fideos diet', 54, 32, 1, 370)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0174', 174, N'Pan aleman', 56.5, 8.6, 0.2, 263)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0175', 175, N'Pan Matza', 84.7, 10, 1, 390)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0176', 176, N'Pan frances', 57.4, 9.3, 0.2, 269)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0177', 177, N'Pan lacteo', 52.4, 7.6, 1.7, 256)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0178', 178, N'Pan centeno', 50.5, 8.2, 1.1, 245)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0179', 179, N'Pan de salvado doble diet', 36.8, 13.5, 3, 228)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento018', 18, N'Queso blanco Diet', 7.4, 9.9, 3.5, 100)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0180', 180, N'Churros (sin azucar)', 40, 4.6, 20, 348)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0181', 181, N'Donas', 51.4, 4.6, 18.6, 391)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0182', 182, N'Magdalena', 48.4, 5.3, 18.4, 391)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0183', 183, N'MediaLuna', 55, 9.1, 6.9, 318)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0184', 184, N'Mil hojas', 45, 8.6, 46.2, 318)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0185', 185, N'Palmeras', 45, 5.2, 30.5, 475)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0186', 186, N'Panqueques', 28.9, 9.4, 9.1, 235)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0187', 187, N'Scons', 49.3, 10.8, 17.5, 398)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0188', 188, N'Bay biscuit', 83.3, 8.6, 2.7, 392)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0189', 189, N'Galleta marinera', 75.9, 12.8, 0.7, 361)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento019', 19, N'Queso camembert-brie', 0, 26.7, 29.7, 527)
GO
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0190', 190, N'Galletitas de agua', 72.2, 8.6, 10.2, 415)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0191', 191, N'Galletitas con salvado', 69.3, 13.8, 12.4, 438)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0192', 192, N'Galletitas con salvado diet', 59.2, 13, 2, 310)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0193', 193, N'Galletitas dulces', 73.4, 7, 15.1, 457)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0194', 194, N'Galletitas dulces rellenas', 70.7, 3.5, 22.1, 496)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0196', 196, N'Crisines', 72.6, 12.5, 0.2, 342)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0197', 197, N'Galletitas vainilla', 81.6, 7.8, 3.4, 388)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0198', 198, N'Crema de leche', 2.5, 1.7, 45, 422)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0199', 199, N'Manteca', 0, 1.5, 82, 744)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento02', 2, N'Pan integral', 36.8, 13.4, 3, 293)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento020', 20, N'Queso Cheddar Argentino', 0, 26, 30, 374)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0200', 200, N'Manteca diet', 0, 6.5, 39.4, 381)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0201', 201, N'Manteca de cacao', 0, 0, 94.5, 925)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0202', 202, N'Manteca de mani', 17.2, 27.8, 49.4, 581)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0203', 203, N'Margarina', 0.4, 0.6, 81, 730)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0204', 204, N'Margarina diet', 1.8, 0.2, 36.1, 333)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0205', 205, N'Aceite de girasol', 0, 0, 100, 860)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento0206', 206, N'Aceite de Oliva', 0, 0, 100, 860)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento021', 21, N'Queso Chubut', 0, 26, 24.9, 328)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento022', 22, N'Queso cottage', 2, 11.4, 4.5, 95)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento023', 23, N'Queso crema', 3.7, 8.2, 22, 245)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento024', 24, N'Queso cremoso', 1.3, 18.7, 25, 305)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento025', 25, N'Queso cuartirolo', 0, 21, 21, 273)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento026', 26, N'Queso dambo', 0, 26, 28, 356)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento027', 27, N'Queso de cabra', 3.7, 16, 10.3, 173)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento028', 28, N'Queso de maquina', 1.9, 16.5, 17.2, 250)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento029', 29, N'Queso de edam', 26, 22, 27, 345)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento03', 3, N'Clara de huevo', 1, 11, 0.2, 53)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento030', 30, N'Queso de edam diet', 1, 30, 16, 268)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento031', 31, N'Queso emmenthal', 0.5, 27.8, 28.2, 403)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento032', 32, N'Queso fiambrin', 1.2, 17, 29, 334)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento033', 33, N'Queso fontina', 0, 27, 29, 369)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento034', 34, N'Queso fresco', 1, 24, 23, 307)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento035', 35, N'Queso fresco diet', 1, 24, 15, 230)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento036', 36, N'Queso fundido untable', 2.9, 10, 25.9, 285)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento037', 37, N'Queso fymbo', 0, 24, 28, 348)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento038', 38, N'Queso gruyere', 10, 28, 26, 357)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento039', 39, N'Queso holanda', 0, 24, 28, 360)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento04', 4, N'Leche descremada en polvo', 5.1, 3.5, 0.1, 36)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento040', 40, N'Queso mar de plata', 0, 29.5, 31.3, 400)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento041', 41, N'Queso mini fymbo', 0, 25, 27, 343)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento042', 42, N'Queso Mozzarella', 0, 24, 26, 334)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento043', 43, N'Queso Neufchatel', 2.2, 9.8, 21, 237)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento044', 44, N'Queso parmesano', 2.9, 36, 26, 393)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento045', 45, N'Queso pategras', 2.9, 26, 29, 365)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento046', 46, N'Queso petit suisse', 3.5, 7.5, 13, 165)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento047', 47, N'Queso Port Salut', 0, 22, 23, 295)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento048', 48, N'Queso Port Salut diet', 0.5, 26, 12, 214)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento049', 49, N'Queso provolone', 0, 30.5, 30, 392)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento05', 5, N'Leche entera', 4.5, 3, 3, 57)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento050', 50, N'Queso rallado', 0, 42.5, 28.5, 427)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento051', 51, N'Queso reggianito', 0, 34, 22, 334)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento052', 52, N'Queso ricotta', 2.5, 14.5, 13, 185)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento053', 53, N'Queso ricotta descremado', 2, 13, 5, 105)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento054', 54, N'Queso roquefort', 0, 20, 31, 364)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento055', 55, N'Queso sardo', 0, 31, 27, 367)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento056', 56, N'Queso tilsit diet', 1, 30, 17, 270)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento057', 57, N'Queso tofu', 1, 13, 9, 134)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento058', 58, N'Huevo de codorniz', 3.6, 11.6, 13.1, 179)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento059', 59, N'Yema de huevo', 2, 16, 29.2, 341)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento06', 6, N'Leche entera azucarada', 10, 3, 3, 79)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento060', 60, N'Bife angosto', 0, 20.8, 10.3, 182)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento061', 61, N'cuadril de res', 0, 17.4, 25.3, 303)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento062', 62, N'cuadril de res magro', 0, 21.2, 7.5, 158)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento063', 63, N'Hamburguesa de res', 0.5, 14, 18, 230)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento064', 64, N'Hamburguesa de res dietetica', 2.4, 17, 3.6, 112)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento065', 65, N'Lomo semigordo de res', 0, 18.5, 17.9, 241)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento066', 66, N'Lomo magro de res', 0, 20.7, 6.5, 148)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento067', 67, N'Tapa de asado con grasa', 0, 16.63, 28.15, 325)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento068', 68, N'Tapa de asado magra', 0, 20.75, 7.28, 154)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento069', 69, N'vacio de res', 0, 21, 5.7, 144)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento07', 7, N'Leche descremada', 4.7, 3.1, 1.5, 45)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento070', 70, N'Carne de cerdo gorda', 0, 14.6, 31.4, 346)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento071', 71, N'Carne de cerdo magra', 0, 16.7, 22.7, 276)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento072', 72, N'Tripa de vaca', 0, 14.5, 3.9, 98)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento073', 73, N'Higado de vaca', 3.6, 19.8, 3.9, 134)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento074', 74, N'Lengua de vaca', 0.9, 16, 13.2, 191)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento075', 75, N'Mollejas de vaca', 0, 14.4, 19, 229)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento076', 76, N'Panza/Mondongo de vaca', 1.4, 14, 2.7, 90)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento077', 77, N'Riñon de vaca', 1.8, 16.8, 5, 124)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento078', 78, N'Bondiola', 0, 21, 30, 353)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento079', 79, N'Chorizo', 2, 12.5, 31, 373)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento08', 8, N'Leche cultivada descremada', 4.3, 3.6, 0.1, 32)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento080', 80, N'Lomo', 3, 23, 5, 153)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento081', 81, N'Mortadela', 4, 17, 25, 309)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento082', 82, N'Panceta ahumada', 9, 58, 31, 558)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento083', 83, N'Pastron', 2, 18, 5, 125)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento084', 84, N'Picadillo de carne', 3.3, 12, 13.5, 182)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento085', 85, N'Salamin', 0, 23, 26, 325)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento086', 86, N'Hamburguesa de pollo', 1.8, 19.1, 7.7, 153)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento087', 87, N'Carne de pavo', 0.5, 20, 20.1, 268)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento088', 88, N'Pavita', 0, 21.7, 6.5, 163)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento089', 89, N'Carne de pollo', 0, 18.2, 10.2, 170)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento09', 9, N'Yogur con cereales', 9, 3, 0.05, 48)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento090', 90, N'Menudo de pollo', 0.1, 17.5, 3.1, 103)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento091', 91, N'Bacalao', 0, 17.5, 0.3, 77)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento092', 92, N'Brotola', 0, 16.7, 0.8, 84)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento093', 93, N'Caballa', 0, 21.3, 8.2, 165)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento094', 94, N'Lenguado', 0, 19, 0.5, 87)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento095', 95, N'Merluza', 0, 19.3, 0.8, 90)
GO
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento096', 96, N'Pejerrey', 0, 18.8, 0.9, 87)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento097', 97, N'Salmon rosado', 0, 16.95, 2.93, 99)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento098', 98, N'Surubi', 0, 18.2, 4, 109)
INSERT [dbo].[Alimentos] ([ID_Alimento], [Num], [Nombre], [CarboHidratosGr], [ProteinasGr], [GrasasGr], [Kcalorias]) VALUES (N'Alimento099', 99, N'Anchoas', 0, 11.7, 10, 175)
INSERT [dbo].[Citas] ([Id], [Fecha], [IdCliente], [Cliente], [Empleado], [Asunto], [Estado]) VALUES (1, CAST(N'2020-05-15' AS Date), N'Cliente011', N'Lola', N'Cristhian', N'Revision', N'Hecho')
INSERT [dbo].[Citas] ([Id], [Fecha], [IdCliente], [Cliente], [Empleado], [Asunto], [Estado]) VALUES (2, CAST(N'2020-05-28' AS Date), N'Cliente011', N'Lola', N'Cristhian', N'Revision', N'Pendiente')
INSERT [dbo].[Citas] ([Id], [Fecha], [IdCliente], [Cliente], [Empleado], [Asunto], [Estado]) VALUES (3, CAST(N'2020-05-28' AS Date), N'Cliente04', N'pepe', N'Cristhian', N'Revision', N'Pendiente')
INSERT [dbo].[Citas] ([Id], [Fecha], [IdCliente], [Cliente], [Empleado], [Asunto], [Estado]) VALUES (5, CAST(N'2020-06-17' AS Date), N'Cliente011', N'Lola', N'Cristhian', N'Prueba', N'Hecho')
INSERT [dbo].[Citas] ([Id], [Fecha], [IdCliente], [Cliente], [Empleado], [Asunto], [Estado]) VALUES (6, CAST(N'2020-06-16' AS Date), N'Cliente011', N'Lola', N'Cristhian', N'SI', N'Pendiente')
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'Rodrigo', N'Rodriguez', N'Rodriguez', N'2222222', N'M         ', N'Cliente010', 10)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'Lola', N'Vaca', N'Cola', N'22222222', N'F         ', N'Cliente011', 11)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'Antonio', N'Rodrigez', N'Gomez', N'22222222', N'M         ', N'Cliente012', 12)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'Laura', N'Gonzales', N'Gonzales', N'121454521123', N'F         ', N'Cliente013', 13)
INSERT [dbo].[clientes2] ([Nombre], [ApellidoP], [ApellidoM], [Contacto], [Sexo], [Cod], [Num]) VALUES (N'lolae', N'Perez', N'hernandez', N'1278541112', N'M         ', N'Cliente07', 7)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (95, 1.77, 25, N'No', N'Leche', N'1-2 veces a la semana', N'Cliente08', CAST(N'2020-02-26' AS Date), N'Obesidad', 17)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (110, 1.84, 21, N'No', N'Lactosa', N'Nula', N'Cliente010', CAST(N'2020-05-12' AS Date), N'Obesidad', 22)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (94, 1.78, 19, N'No', N'Leche', N'A menudo va a caminar', N'Cliente013', CAST(N'2020-06-16' AS Date), N'Sobrepeso', 23)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (94, 1.78, 19, N'No', N'Leche', N'A menudo va a caminar', N'Cliente013', CAST(N'2020-06-16' AS Date), N'Sobrepeso', 24)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (94.2, 1.78, 19, N'No', N'Leche', N'A menudo va a caminar', N'Cliente013', CAST(N'2020-06-16' AS Date), N'Obesidad', 25)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (94.3, 1.78, 19, N'No', N'Leche', N'A menudo va a caminar', N'Cliente013', CAST(N'2020-06-16' AS Date), N'Obesidad', 26)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (94.9, 1.78, 19, N'No', N'Leche', N'A menudo va a caminar', N'Cliente013', CAST(N'2020-06-16' AS Date), N'Obesidad', 27)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (94.2, 1.78, 19, N'No', N'Leche', N'A menudo va a caminar', N'Cliente013', CAST(N'2020-06-16' AS Date), N'Obesidad', 28)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (93.4, 1.78, 19, N'No', N'Leche', N'A menudo va a caminar', N'Cliente013', CAST(N'2020-06-16' AS Date), N'Sobrepeso', 29)
INSERT [dbo].[DatosFC] ([Peso], [Altura], [Edad], [Embarazo], [Alergia], [ActividadF], [cod_cliente], [Fecha], [EFisico], [ID]) VALUES (92, 1.78, 19, N'No', N'Leche', N'A menudo va a caminar', N'Cliente013', CAST(N'2020-06-16' AS Date), N'Sobrepeso', 30)
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
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (68, N'Alimento022', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (69, N'Alimento022', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (70, N'Alimento022', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (71, N'Alimento023', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (72, N'Alimento023', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (73, N'Alimento023', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (74, N'Alimento024', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (75, N'Alimento024', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (76, N'Alimento024', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (77, N'Alimento025', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (78, N'Alimento025', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (79, N'Alimento025', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (80, N'Alimento026', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (81, N'Alimento026', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (82, N'Alimento026', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (83, N'Alimento027', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (84, N'Alimento027', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (85, N'Alimento027', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (86, N'Alimento028', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (87, N'Alimento028', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (88, N'Alimento028', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (89, N'Alimento029', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (90, N'Alimento029', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (91, N'Alimento029', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (92, N'Alimento030', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (93, N'Alimento030', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (94, N'Alimento030', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (96, N'Alimento031', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (97, N'Alimento031', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (98, N'Alimento031', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (99, N'Alimento032', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (100, N'Alimento032', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (101, N'Alimento032', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (102, N'Alimento033', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (104, N'Alimento033', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (105, N'Alimento034', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (106, N'Alimento034', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (107, N'Alimento034', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (108, N'Alimento035', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (109, N'Alimento035', N'Queso')
GO
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (110, N'Alimento035', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (111, N'Alimento036', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (112, N'Alimento036', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (113, N'Alimento036', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (114, N'Alimento037', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (115, N'Alimento037', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (116, N'Alimento037', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (117, N'Alimento038', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (118, N'Alimento038', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (119, N'Alimento038', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (120, N'Alimento039', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (121, N'Alimento039', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (122, N'Alimento039', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (123, N'Alimento040', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (124, N'Alimento040', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (125, N'Alimento040', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (126, N'Alimento041', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (127, N'Alimento041', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (128, N'Alimento041', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (129, N'Alimento042', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (130, N'Alimento042', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (131, N'Alimento042', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (132, N'Alimento043', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (133, N'Alimento043', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (134, N'Alimento043', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (135, N'Alimento044', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (136, N'Alimento044', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (137, N'Alimento044', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (138, N'Alimento045', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (139, N'Alimento033', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (140, N'Alimento045', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (141, N'Alimento045', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (142, N'Alimento046', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (143, N'Alimento046', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (144, N'Alimento046', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (145, N'Alimento047', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (146, N'Alimento047', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (147, N'Alimento047', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (148, N'Alimento048', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (149, N'Alimento048', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (150, N'Alimento048', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (151, N'Alimento049', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (152, N'Alimento049', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (153, N'Alimento049', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (154, N'Alimento050', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (155, N'Alimento050', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (156, N'Alimento050', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (157, N'Alimento051', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (158, N'Alimento051', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (159, N'Alimento051', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (160, N'Alimento052', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (161, N'Alimento052', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (162, N'Alimento052', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (163, N'Alimento053', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (164, N'Alimento053', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (165, N'Alimento053', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (166, N'Alimento054', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (167, N'Alimento054', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (168, N'Alimento054', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (169, N'Alimento055', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (170, N'Alimento055', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (171, N'Alimento055', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (172, N'Alimento056', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (173, N'Alimento056', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (174, N'Alimento056', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (175, N'Alimento057', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (176, N'Alimento057', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (177, N'Alimento057', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (178, N'Alimento058', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (179, N'Alimento058', N'Huevo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (180, N'Alimento059', N'Huevo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (181, N'Alimento059', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (182, N'Alimento060', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (183, N'Alimento060', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (184, N'Alimento061', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (185, N'Alimento061', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (186, N'Alimento061', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (187, N'Alimento060', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (188, N'Alimento062', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (189, N'Alimento062', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (190, N'Alimento062', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (191, N'Alimento063', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (192, N'Alimento063', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (193, N'Alimento063', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (194, N'Alimento064', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (195, N'Alimento064', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (196, N'Alimento064', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (197, N'Alimento065', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (198, N'Alimento065', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (199, N'Alimento065', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (200, N'Alimento066', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (201, N'Alimento066', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (202, N'Alimento066', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (203, N'Alimento067', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (204, N'Alimento067', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (205, N'Alimento067', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (206, N'Alimento067', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (207, N'Alimento068', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (208, N'Alimento068', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (209, N'Alimento068', N'Res')
GO
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (210, N'Alimento069', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (211, N'Alimento069', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (212, N'Alimento069', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (213, N'Alimento070', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (214, N'Alimento070', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (215, N'Alimento070', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (216, N'Alimento070', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (217, N'Alimento071', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (218, N'Alimento071', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (219, N'Alimento071', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (220, N'Alimento072', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (221, N'Alimento072', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (222, N'Alimento072', N'Viceras')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (223, N'Alimento073', N'Viceras')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (224, N'Alimento073', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (225, N'Alimento073', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (226, N'Alimento074', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (227, N'Alimento074', N'Viceras')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (228, N'Alimento074', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (229, N'Alimento075', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (230, N'Alimento075', N'Viceras')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (231, N'Alimento075', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (232, N'Alimento076', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (233, N'Alimento076', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (234, N'Alimento076', N'Viceras')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (235, N'Alimento077', N'Viceras')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (236, N'Alimento077', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (237, N'Alimento077', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (238, N'Alimento01', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (239, N'Alimento078', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (240, N'Alimento078', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (241, N'Alimento078', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (242, N'Alimento079', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (243, N'Alimento079', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (244, N'Alimento079', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (245, N'Alimento079', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (246, N'Alimento080', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (247, N'Alimento080', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (248, N'Alimento080', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (249, N'Alimento081', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (250, N'Alimento081', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (251, N'Alimento081', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (252, N'Alimento082', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (253, N'Alimento082', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (254, N'Alimento082', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (255, N'Alimento082', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (256, N'Alimento083', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (257, N'Alimento083', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (258, N'Alimento083', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (259, N'Alimento083', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (260, N'Alimento084', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (261, N'Alimento084', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (262, N'Alimento084', N'Res')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (263, N'Alimento085', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (265, N'Alimento085', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (266, N'Alimento085', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (267, N'Alimento086', N'Pollo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (268, N'Alimento086', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (269, N'Alimento086', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (270, N'Alimento086', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (271, N'Alimento087', N'Pollo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (272, N'Alimento087', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (273, N'Alimento087', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (274, N'Alimento088', N'Pollo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (275, N'Alimento088', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (276, N'Alimento088', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (277, N'Alimento089', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (278, N'Alimento089', N'Pollo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (279, N'Alimento089', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (280, N'Alimento089', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (281, N'Alimento090', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (282, N'Alimento090', N'Pollo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (283, N'Alimento090', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (284, N'Alimento091', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (285, N'Alimento091', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (286, N'Alimento091', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (287, N'Alimento091', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (288, N'Alimento092', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (289, N'Alimento092', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (290, N'Alimento092', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (291, N'Alimento092', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (292, N'Alimento093', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (293, N'Alimento093', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (294, N'Alimento093', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (295, N'Alimento093', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (296, N'Alimento094', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (297, N'Alimento094', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (298, N'Alimento094', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (299, N'Alimento094', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (300, N'Alimento095', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (301, N'Alimento095', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (302, N'Alimento095', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (303, N'Alimento095', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (304, N'Alimento096', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (305, N'Alimento096', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (306, N'Alimento096', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (307, N'Alimento096', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (308, N'Alimento097', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (309, N'Alimento097', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (310, N'Alimento097', N'Pescado')
GO
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (311, N'Alimento097', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (312, N'Alimento098', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (313, N'Alimento098', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (314, N'Alimento098', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (315, N'Alimento098', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (317, N'Alimento099', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (318, N'Alimento099', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (319, N'Alimento099', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (320, N'Alimento0100', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (322, N'Alimento0100', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (323, N'Alimento0100', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (324, N'Alimento0101', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (325, N'Alimento0101', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (327, N'Alimento0101', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (328, N'Alimento0102', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (329, N'Alimento0102', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (330, N'Alimento0102', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (331, N'Alimento0103', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (332, N'Alimento0103', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (333, N'Alimento0103', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (334, N'Alimento0104', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (335, N'Alimento0104', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (336, N'Alimento0104', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (337, N'Alimento0105', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (338, N'Alimento0105', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (339, N'Alimento0105', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (340, N'Alimento0106', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (341, N'Alimento0106', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (342, N'Alimento0106', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (343, N'Alimento0107', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (344, N'Alimento0107', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (345, N'Alimento0107', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (346, N'Alimento0108', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (347, N'Alimento0108', N'Pescado')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (348, N'Alimento0108', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (349, N'Alimento0109', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (350, N'Alimento0109', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (351, N'Alimento0110', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (352, N'Alimento0110', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (353, N'Alimento0111', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (354, N'Alimento0111', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (355, N'Alimento0112', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (356, N'Alimento0112', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (357, N'Alimento0113', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (358, N'Alimento0113', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (359, N'Alimento0114', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (360, N'Alimento0114', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (361, N'Alimento0115', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (362, N'Alimento0115', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (363, N'Alimento0116', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (364, N'Alimento0116', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (365, N'Alimento0117', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (366, N'Alimento0117', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (367, N'Alimento0118', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (368, N'Alimento0118', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (369, N'Alimento0119', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (370, N'Alimento0119', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (371, N'Alimento0120', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (372, N'Alimento0120', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (373, N'Alimento0121', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (374, N'Alimento0121', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (375, N'Alimento0122', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (376, N'Alimento0122', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (377, N'Alimento0123', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (378, N'Alimento0123', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (379, N'Alimento0123', N'Brocoli')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (380, N'Alimento0124', N'Vegetal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (381, N'Alimento0124', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (382, N'Alimento0125', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (383, N'Alimento0125', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (384, N'Alimento0126', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (385, N'Alimento0126', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (386, N'Alimento0127', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (387, N'Alimento0127', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (388, N'Alimento0128', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (389, N'Alimento0128', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (390, N'Alimento0129', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (391, N'Alimento0129', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (392, N'Alimento0130', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (393, N'Alimento0130', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (394, N'Alimento0131', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (395, N'Alimento0131', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (396, N'Alimento0132', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (397, N'Alimento0132', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (398, N'Alimento0133', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (399, N'Alimento0133', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (400, N'Alimento0134', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (401, N'Alimento0134', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (402, N'Alimento0135', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (403, N'Alimento0135', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (404, N'Alimento0136', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (405, N'Alimento0136', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (406, N'Alimento0137', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (407, N'Alimento0137', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (408, N'Alimento0138', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (409, N'Alimento0138', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (410, N'Alimento0139', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (411, N'Alimento0139', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (412, N'Alimento0140', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (413, N'Alimento0140', N'Simple')
GO
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (414, N'Alimento0141', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (415, N'Alimento0141', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (416, N'Alimento0142', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (417, N'Alimento0142', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (418, N'Alimento0143', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (419, N'Alimento0143', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (420, N'Alimento0144', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (421, N'Alimento0144', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (422, N'Alimento0145', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (423, N'Alimento0145', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (424, N'Alimento0146', N'Nueces')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (425, N'Alimento0146', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (426, N'Alimento0147', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (427, N'Alimento0147', N'Nueces')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (428, N'Alimento0148', N'Nueces')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (429, N'Alimento0148', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (430, N'Alimento0149', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (431, N'Alimento0149', N'Nueces')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (432, N'Alimento0150', N'Nueces')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (433, N'Alimento0150', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (434, N'Alimento0151', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (436, N'Alimento0152', N'Fruta')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (437, N'Alimento0151', N'Nueces')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (438, N'Alimento0152', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (439, N'Alimento0153', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (440, N'Alimento0153', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (441, N'Alimento0153', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (442, N'Alimento0154', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (443, N'Alimento0154', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (444, N'Alimento0154', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (445, N'Alimento0155', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (446, N'Alimento0155', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (447, N'Alimento0155', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (448, N'Alimento0156', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (449, N'Alimento0156', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (450, N'Alimento0157', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (451, N'Alimento0157', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (452, N'Alimento0158', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (453, N'Alimento0158', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (455, N'Alimento0159', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (456, N'Alimento0159', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (457, N'Alimento0159', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (458, N'Alimento0160', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (460, N'Alimento0160', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (461, N'Alimento0161', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (462, N'Alimento0161', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (463, N'Alimento0162', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (464, N'Alimento0162', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (465, N'Alimento0162', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (466, N'Alimento0163', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (467, N'Alimento0163', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (468, N'Alimento0163', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (469, N'Alimento0164', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (470, N'Alimento0164', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (471, N'Alimento0165', N'Cereal')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (472, N'Alimento0165', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (473, N'Alimento0166', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (474, N'Alimento0166', N'Pastas')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (475, N'Alimento0166', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (476, N'Alimento0166', N'Queso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (477, N'Alimento0167', N'Pastas')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (478, N'Alimento0167', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (479, N'Alimento0168', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (480, N'Alimento0168', N'Pastas')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (481, N'Alimento0169', N'Pastas')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (482, N'Alimento0169', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (483, N'Alimento0169', N'Carne')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (484, N'Alimento0169', N'Embutidos')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (485, N'Alimento0169', N'Cerdo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (486, N'Alimento0170', N'Huevo')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (487, N'Alimento0170', N'Pastas')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (488, N'Alimento0170', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (489, N'Alimento0171', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (490, N'Alimento0171', N'Pastas')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (491, N'Alimento0172', N'Pastas')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (492, N'Alimento0172', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (493, N'Alimento0173', N'Compuesto')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (494, N'Alimento0173', N'Pastas')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (495, N'Alimento0174', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (496, N'Alimento0174', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (497, N'Alimento0175', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (498, N'Alimento0175', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (499, N'Alimento0176', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (500, N'Alimento0176', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (501, N'Alimento0177', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (502, N'Alimento0177', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (503, N'Alimento0177', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (504, N'Alimento0178', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (505, N'Alimento0178', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (506, N'Alimento0179', N'Simple')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (507, N'Alimento0179', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (508, N'Alimento0180', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (509, N'Alimento0181', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (510, N'Alimento0182', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (511, N'Alimento0183', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (512, N'Alimento0184', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (513, N'Alimento0185', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (514, N'Alimento0186', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (515, N'Alimento0187', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (516, N'Alimento0188', N'Golosina')
GO
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (517, N'Alimento0189', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (518, N'Alimento0190', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (519, N'Alimento0191', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (520, N'Alimento0192', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (521, N'Alimento0193', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (522, N'Alimento0194', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (523, N'Alimento0197', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (524, N'Alimento0198', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (525, N'Alimento0198', N'Lactosa')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (526, N'Alimento0199', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (527, N'Alimento0200', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (528, N'Alimento0201', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (529, N'Alimento0202', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (530, N'Alimento0202', N'Nueces')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (531, N'Alimento0203', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (532, N'Alimento0204', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (533, N'Alimento0205', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (534, N'Alimento0206', N'Graso')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (535, N'Alimento0181', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (536, N'Alimento0182', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (537, N'Alimento0183', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (538, N'Alimento0184', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (539, N'Alimento0185', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (540, N'Alimento0186', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (541, N'Alimento0187', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (542, N'Alimento0188', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (543, N'Alimento0196', N'Pan')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (544, N'Alimento0196', N'Golosina')
INSERT [dbo].[EtiquetasAlimentos] ([ID], [IDAlimento], [Caracteristica]) VALUES (545, N'Alimento0160', N'Compuesto')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente013', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente013', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente013', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente013', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente013', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente010', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente013', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente013', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente013', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'No        ', N'No        ', N'No        ')
INSERT [dbo].[GustosC] ([CodC], [Pollo], [Cerdo], [Tocino], [Pescado], [Res], [Aguacate], [Brocoli], [Esparragos], [Coliflor], [Calabazin], [Champiñon], [Huevo], [Mantequilla], [Nueces], [Queso], [Pastas]) VALUES (N'Cliente08 ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'Si        ', N'Si        ', N'Si        ', N'No        ', N'No        ', N'Si        ', N'No        ', N'Si        ', N'Si        ', N'Si        ', N'No        ', N'Si        ')
INSERT [dbo].[usuarios] ([Nombre], [Email], [Password], [Usuario], [Puesto]) VALUES (N'Cristhian', N'Cristhianarmando2001@gmail.com', N'1234', N'Admin', N'SuperAdmin')
INSERT [dbo].[usuarios] ([Nombre], [Email], [Password], [Usuario], [Puesto]) VALUES (N'Pepe', N'Pepe@outlook.es', N'1234', N'Pepe', N'Consultador')
ALTER TABLE [dbo].[EtiquetasAlimentos]  WITH CHECK ADD  CONSTRAINT [FK_EtiquetasAlimentos_EtiquetasAlimentos] FOREIGN KEY([ID])
REFERENCES [dbo].[EtiquetasAlimentos] ([ID])
GO
ALTER TABLE [dbo].[EtiquetasAlimentos] CHECK CONSTRAINT [FK_EtiquetasAlimentos_EtiquetasAlimentos]
GO
USE [master]
GO
ALTER DATABASE [NMBF1] SET  READ_WRITE 
GO
