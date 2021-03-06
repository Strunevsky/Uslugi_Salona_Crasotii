USE [master]
GO
/****** Object:  Database [Uslugi_Salona_Crasoti]    Script Date: 23.04.2022 9:22:55 ******/
CREATE DATABASE [Uslugi_Salona_Crasoti]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Uslugi_Salona_Crasoti', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Uslugi_Salona_Crasoti.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Uslugi_Salona_Crasoti_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Uslugi_Salona_Crasoti_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Uslugi_Salona_Crasoti].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET ARITHABORT OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET  MULTI_USER 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET QUERY_STORE = OFF
GO
USE [Uslugi_Salona_Crasoti]
GO
/****** Object:  Table [dbo].[AttachedProduct]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachedProduct](
	[MainProductID] [int] NOT NULL,
	[AttachedProductID] [int] NOT NULL,
 CONSTRAINT [PK_AttachedProduct] PRIMARY KEY CLUSTERED 
(
	[MainProductID] ASC,
	[AttachedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Birthday] [nvarchar](100) NOT NULL,
	[RegistrationDate] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[GenderCode] [nchar](1) NOT NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_b_import]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_b_import](
	[Фамилия] [varchar](50) NULL,
	[ Имя] [varchar](50) NULL,
	[ Отчество] [varchar](50) NULL,
	[ Пол] [varchar](50) NULL,
	[ Телефон] [varchar](50) NULL,
	[ Дата рождения] [varchar](50) NULL,
	[ Email] [varchar](50) NULL,
	[ Дата регистрации] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_b_import1]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_b_import1](
	[id] [tinyint] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[Пол] [nvarchar](50) NOT NULL,
	[Телефон] [nvarchar](50) NOT NULL,
	[Дата_рождения] [date] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Дата_регистрации] [date] NOT NULL,
 CONSTRAINT [PK_client_b_import1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[StartTime] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentByService]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientServiceID] [int] NOT NULL,
	[DocumentPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_DocumentByService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [nchar](1) NOT NULL,
	[Name] [nvarchar](10) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
	[ManufacturerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ClientServiceID] [int] NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[DurationInSeconds] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[MainImagePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service_b_import]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_b_import](
	[Наименование_услуги] [nvarchar](50) NOT NULL,
	[Главное_изображение] [nvarchar](100) NOT NULL,
	[Длительность] [nvarchar](50) NOT NULL,
	[Стоимость] [nvarchar](50) NOT NULL,
	[Действующая_скидка] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service_b_import1]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_b_import1](
	[ID] [tinyint] NOT NULL,
	[Наименование_услуги] [nvarchar](50) NOT NULL,
	[Главное_изображение] [nvarchar](100) NOT NULL,
	[Длительность] [nvarchar](50) NOT NULL,
	[Стоимость] [nvarchar](50) NOT NULL,
	[Действующая_скидка] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_service_b_import1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ServicePhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheet1$]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet1$](
	[Услуга] [nvarchar](255) NULL,
	[Начало оказания услуги] [datetime] NULL,
	[Клиент] [nvarchar](255) NULL,
	[Id client] [float] NULL,
	[Id usluga] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NOT NULL,
	[Color] [nchar](6) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagOfClient]    Script Date: 23.04.2022 9:22:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOfClient](
	[ClientID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_TagOfClient] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (233, N'Кузьмина', N'Дэнна', N'Витальевна', N'24.08.1993', N'27.03.2016', N' nichoj@mac.com', N'7(9940)977-45-73', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (236, N'Мамонтова', N'Марфа', N'Мироновна', N'19.10.1984', N'27.02.2018', N'rfoley@verizon.net', N'7(38)095-64-18', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (238, N'Степанова', N'Амелия', N'Робертовна', N'06.06.1970', N'27.09.2017', N'rasca@hotmail.com', N'7(1217)441-28-42 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (241, N'Колесникова', N'Алина', N'Еремеевна', N'18.01.2017', N'19.04.2001', N'gfxguy@outlook.com', N'7(74)977-39-71 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (242, N'Морозов', N'Наум', N'Валерьянович', N'02.05.2016', N'04.07.1985', N'salesgeek@mac.com', N'7(636)050-96-13 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (245, N'Сысоева', N'Дарина', N'Ярославовна', N'13.05.2016', N'03.02.1982', N'treit@verizon.net', N'7(0698)387-96-04 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (250, N'Горбачёва', N'Никки', N'Еремеевна', N'16.08.2018', N'21.04.1987', N'chinthaka@att.net', N'7(94)789-69-20 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (254, N'Киселёв', N'Устин', N'Яковлевич', N'08.01.1985', N'21.06.2018', N'dalamb@verizon.net', N'7(83)334-52-76 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (257, N'Крюкова', N'Авигея', N'Святославовна', N'10.08.2000', N'03.01.2018', N'simone@gmail.com', N'7(499)318-88-53 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (260, N'Костина', N'Любава', N'Авксентьевна', N'13.07.1972', N'26.02.2016', N'gordonjcp@hotmail.com', N'7(6419)959-21-87 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (269, N'Попова', N'Харита', N'Якуновна', N'16.12.1997', N'05.07.2016', N'firstpr@verizon.net', N'7(335)386-81-06 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (272, N'Андреева', N'Патрисия', N'Валерьевна', N'18.11.1993', N'17.07.2016', N'jigsaw@aol.com', N'7(9648)953-81-26 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (273, N'Гусева', N'Роза', N'Дмитриевна', N'13.02.1999', N'12.12.2017', N'martyloo@live.com', N'7(23)064-51-84 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (281, N'Быков', N'Трофим', N'Константинович', N'20.12.1994', N'17.04.2016', N'jguyer@aol.com', N'7(3414)460-12-05 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (284, N'Гусев', N'Яков', N'Авксентьевич', N'10.12.1995', N'20.11.2017', N'jdhedden@icloud.com', N'7(0972)781-11-37 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (288, N'Турова', N'Георгина', N'Семёновна', N'28.05.1974', N'22.02.2018', N'yruan@optonline.net', N'7(555)321-42-99 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (291, N'Трофимова', N'Альжбета', N'Якововна', N'22.10.1988', N'21.09.2017', N'gbacon@mac.com', N'7(1084)658-92-95 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (298, N'Баранова', N'Эльмира', N'Дмитриевна', N'15.01.1977', N'08.07.2016', N'jgmyers@comcast.net', N'7(9240)643-15-50 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (301, N'Федотов', N'Осип', N'Анатольевич', N'13.04.1971', N'23.07.2018', N'breegster@hotmail.com', N'7(590)702-33-06 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (305, N'Борисов', N'Аввакум', N'Артемович', N'25.04.1974', N'11.03.2017', N'chlim@live.com', N'7(2296)930-08-88 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (306, N'Артемьева', N'Лиза', N'Максимовна', N'17.05.1996', N'07.10.2018', N'snunez@yahoo.ca', N'7(696)972-70-21 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (308, N'Воронова', N'Изабелла', N'Вячеславовна', N'24.09.1999', N'21.12.2017', N'kildjean@sbcglobal.net', N'7(17)433-44-98 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (311, N'Федотова', N'Сандра', N'Владленовна', N'29.03.1985', N'08.11.2016', N'penna@verizon.net', N'7(126)195-25-86 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (314, N'Ефремов', N'Витольд', N'Авксентьевич', N'02.12.1975', N'09.04.2018', N'kwilliams@yahoo.ca', N'7(93)922-14-03 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (317, N'Ермакова', N'Алла', N'Мироновна', N'22.01.1976', N'09.02.2017', N'whimsy@aol.com', N'7(06)437-13-73 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (321, N'Шашкова', N'Гелла', N'Эдуардовна', N'24.02.1979', N'16.11.2016', N'jadavis@mac.com', N'7(57)446-21-04 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (324, N'Быкова', N'Тала', N'Георгьевна', N'22.02.2000', N'13.08.2016', N'ganter@optonline.net', N'7(13)915-53-53 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (326, N'Орлова', N'Влада', N'Мартыновна', N'26.06.1990', N'21.03.2016', N'rnelson@yahoo.ca', N'7(2506)433-38-35 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (327, N'Анисимова', N'Тамара', N'Витальевна', N'16.06.1988', N'25.02.2016', N'schwaang@mac.com', N'7(66)128-04-10 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (329, N'Архипова', N'Прасковья', N'Валерьевна', N'09.01.1979', N'23.07.2018', N'cgcra@live.com', N'7(86)540-10-21 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (330, N'Новиков', N'Адриан', N'Аркадьевич', N'15.01.1974', N'23.11.2018', N'multiplx@verizon.net', N'7(70)572-33-62 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (336, N'Лазарева', N'Эльвина', N'Робертовна', N'16.02.1996', N'11.04.2018', N'ahuillet@comcast.net', N'7(5564)609-81-37 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (339, N'Афанасьева', N'Розалия', N'Макаровна', N'01.05.1977', N'06.09.2017', N'malattia@hotmail.com', N'7(0661)413-23-32 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (342, N'Устинова', N'Юнона', N'Валентиновна', N'08.08.1982', N'28.05.2017', N'kempsonc@live.com', N'7(33)367-13-07', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (346, N'Алексеева', N'Элина', N'Матвеевна', N'07.05.2002', N'28.03.2018', N'pthomsen@verizon.net', N'7(8086)245-64-81 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (348, N'Гущина', N'Янита', N'Федоровна', N'02.03.1999', N'01.02.2018', N'lishoy@att.net', N'7(4544)716-68-96 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (349, N'Суворова', N'Божена', N'Анатольевна', N'09.03.1981 ', N'28.01.2016', N'	attwood@aol.com', N'7(347)895-86-57 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (354, N'Горшкова', N'Марта', N'Иосифовна', N'13.02.2001', N'04.08.2016 ', N'gbacon@mac.com', N'7(544)650-59-03 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (358, N'Смирнов', N'Мартын', N'Арсеньевич', N'25.06.1996', N'07.02.2017', N'haddawy@live.com', N'7(6251)589-02-43 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (360, N'Корнилова', N'Анэля', N'Михайловна', N'02.04.1973', N'22.05.2016', N'jonathan@aol.com', N'7(20)980-01-60 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (362, N'Ефимова', N'Магда', N'Платоновна', N'16.08.1995', N'01.08.2017', N'rbarreira@me.com', N'7(9261)386-15-92 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (366, N'Бурова', N'Светлана', N'Лукьевна', N'04.01.1979', N'13.10.2016', N'wsnyder@aol.com', N'7(358)173-82-21 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (369, N'Сидорова', N'Татьяна', N'Михайловна', N'24.04.1974', N'03.10.2018', N'tbeck@mac.com', N'7(51)732-91-79 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (371, N'Ершова', N'Номи', N'Андреевна', N'13.09.2001', N'30.06.2016', N'miltchev@mac.com', N'7(7757)315-90-99 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (376, N'Овчинникова', N'Лаура', N'Еремеевна', N'03.04.1992', N'24.11.2018', N'carcus@yahoo.ca', N'7(85)829-33-79 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (378, N'Мишина', N'Иветта', N'Андреевна', N'05.10.2002', N'24.01.2016', N'aukjan@yahoo.com', N'7(3926)244-81-96 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (382, N'Колобова', N'Злата', N'Романовна', N'25.08.1994', N'03.12.2016', N'sinkou@aol.com', N'7(50)884-07-35 ', N'ж', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (384, N'Селиверстов', N'Глеб', N'Максимович', N'20.06.1999', N'07.01.2016', N'jigsaw@sbcglobal.net', N'7(20)554-28-68 ', N'м', NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (388, N'Дмитриева', N'Элина', N'Даниловна', N'10.12.1988', N'11.02.2017', N'vmalik@live.com', N'7(787)140-48-84 ', N'ж', NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'1', N' РљСѓР·СЊРјРёРЅР°', N' Р”СЌРЅРЅР°', N' Р’РёС‚Р°Р»СЊРµРІРЅР°', N' Р¶', N' 7(9940)977-45-73В ', N' 1993-08-24', N' nichoj@mac.com, 2016-03-27')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'2', N' РњР°РјРѕРЅС‚РѕРІР°', N' РњР°СЂС„Р°', N' РњРёСЂРѕРЅРѕРІРЅР°', N' Р¶', N' 7(38)095-64-18В ', N' 1984-10-19', N' rfoley@verizon.net, 2018-02-27')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'3', N' РЎС‚РµРїР°РЅРѕРІР°', N' РђРјРµР»РёСЏ', N' Р РѕР±РµСЂС‚РѕРІРЅР°', N' Р¶', N' 7(1217)441-28-42В ', N' 1970-06-06', N' rasca@hotmail.com, 2017-09-27')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'4', N' РљРѕР»РµСЃРЅРёРєРѕРІР°', N' РђР»РёРЅР°', N' Р•СЂРµРјРµРµРІРЅР°', N' Р¶', N' 7(74)977-39-71В ', N' 2001-04-19', N' gfxguy@outlook.com, 2017-01-18')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'5', N' РњРѕСЂРѕР·РѕРІ', N' РќР°СѓРј', N' Р’Р°Р»РµСЂСЊСЏРЅРѕРІРёС‡', N' Рј', N' 7(636)050-96-13В ', N' 1985-07-04', N' salesgeek@mac.com, 2016-05-02')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'6', N' РЎС‹СЃРѕРµРІР°', N' Р”Р°СЂРёРЅР°', N' РЇСЂРѕСЃР»Р°РІРѕРІРЅР°', N' Р¶', N' 7(0698)387-96-04В ', N' 1982-02-03', N' treit@verizon.net, 2016-05-13')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'7', N' Р“РѕСЂР±Р°С‡С‘РІР°', N' РќРёРєРєРё', N' Р•СЂРµРјРµРµРІРЅР°', N' Р¶', N' 7(94)789-69-20В ', N' 1987-04-21', N' chinthaka@att.net, 2018-08-16')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'8', N' Р‘РёСЂСЋРєРѕРІР°', N' РРЅР°СЂР°', N' РЈР»РµР±РѕРІРЅР°', N' Р¶', N' 7(098)346-50-58В ', N' 1978-07-21', N' smpeters@hotmail.com, 2017-10-01')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'9', N' РљРёСЃРµР»С‘РІ', N' РЈСЃС‚РёРЅ', N' РЇРєРѕРІР»РµРІРёС‡', N' Рј', N' 7(83)334-52-76В ', N' 1985-01-08', N' dalamb@verizon.net, 2018-06-21')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'10', N' РљСЂСЋРєРѕРІР°', N' РђРІРёРіРµСЏ', N' РЎРІСЏС‚РѕСЃР»Р°РІРѕРІРЅР°', N' Р¶', N' 7(499)318-88-53В ', N' 2000-08-10', N' simone@gmail.com, 2018-01-03')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'11', N' РљРѕСЃС‚РёРЅР°', N' Р›СЋР±Р°РІР°', N' РђРІРєСЃРµРЅС‚СЊРµРІРЅР°', N' Р¶', N' 7(6419)959-21-87В ', N' 1972-07-13', N' gordonjcp@hotmail.com, 2016-02-26')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'12', N' РџРѕРїРѕРІР°', N' РҐР°СЂРёС‚Р°', N' РЇРєСѓРЅРѕРІРЅР°', N' Р¶', N' 7(335)386-81-06В ', N' 1997-12-16', N' firstpr@verizon.net, 2016-07-05')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'13', N' РђРЅРґСЂРµРµРІР°', N' РџР°С‚СЂРёСЃРёСЏ', N' Р’Р°Р»РµСЂСЊРµРІРЅР°', N' Р¶', N' 7(9648)953-81-26В ', N' 1993-11-18', N' jigsaw@aol.com, 2016-07-17')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'14', N' Р“СѓСЃРµРІР°', N' Р РѕР·Р°', N' Р”РјРёС‚СЂРёРµРІРЅР°', N' Р¶РµРЅСЃРєРёР№', N' 7(23)064-51-84В ', N' 1999-02-13', N' martyloo@live.com, 2017-12-12')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'15', N' Р‘С‹РєРѕРІ', N' РўСЂРѕС„РёРј', N' РљРѕРЅСЃС‚Р°РЅС‚РёРЅРѕРІРёС‡', N' Рј', N' 7(3414)460-12-05В ', N' 1994-12-20', N' jguyer@aol.com, 2016-04-17')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'16', N' Р“СѓСЃРµРІ', N' РЇРєРѕРІ', N' РђРІРєСЃРµРЅС‚СЊРµРІРёС‡', N' Рј', N' 7(0972)781-11-37В ', N' 1995-12-10', N' jdhedden@icloud.com, 2017-11-20')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'17', N' РўСѓСЂРѕРІР°', N' Р“РµРѕСЂРіРёРЅР°', N' РЎРµРјС‘РЅРѕРІРЅР°', N' Р¶', N' 7(555)321-42-99В ', N' 1974-05-28', N' yruan@optonline.net, 2018-02-22')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'18', N' РўСЂРѕС„РёРјРѕРІР°', N' РђР»СЊР¶Р±РµС‚Р°', N' РЇРєРѕРІРѕРІРЅР° ', N' Р¶', N' 7(1084)658-92-95В ', N' 1988-10-22', N' gbacon@mac.com, 2017-09-21')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'19', N' Р‘Р°СЂР°РЅРѕРІР°', N' Р­Р»СЊРјРёСЂР°', N' Р”РјРёС‚СЂРёРµРІРЅР°', N' Р¶', N' 7(9240)643-15-50В ', N' 1977-01-15', N' jgmyers@comcast.net, 2016-07-08')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'20', N' Р¤РµРґРѕС‚РѕРІ', N' РћСЃРёРї', N' РђРЅР°С‚РѕР»СЊРµРІРёС‡', N' Рј', N' 7(590)702-33-06В ', N' 1971-04-13', N' breegster@hotmail.com, 2018-07-23')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'21', N' Р‘РѕСЂРёСЃРѕРІ', N' РђРІРІР°РєСѓРј', N' РђСЂС‚РµРјРѕРІРёС‡', N' Рј', N' 7(2296)930-08-88В ', N' 1974-04-25', N' chlim@live.com, 2017-03-11')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'22', N' РђСЂС‚РµРјСЊРµРІР°', N' Р›РёР·Р°', N' РњР°РєСЃРёРјРѕРІРЅР°', N' Р¶', N' 7(696)972-70-21В ', N' 1996-05-17', N' snunez@yahoo.ca, 2018-10-07')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'23', N' Р’РѕСЂРѕРЅРѕРІР°', N' РР·Р°Р±РµР»Р»Р°', N' Р’СЏС‡РµСЃР»Р°РІРѕРІРЅР°', N' Р¶', N' 7(17)433-44-98В ', N' 1999-09-24', N' kildjean@sbcglobal.net, 2017-12-21')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'24', N' Р¤РµРґРѕС‚РѕРІР°', N' РЎР°РЅРґСЂР°', N' Р’Р»Р°РґР»РµРЅРѕРІРЅР° ', N' Р¶', N' 7(126)195-25-86В ', N' 1985-03-29', N' penna@verizon.net, 2016-11-08')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'25', N' Р•С„СЂРµРјРѕРІ', N' Р’РёС‚РѕР»СЊРґ', N' РђРІРєСЃРµРЅС‚СЊРµРІРёС‡', N' Рј', N' 7(93)922-14-03В ', N' 1975-12-02', N' kwilliams@yahoo.ca, 2018-04-09')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'26', N' Р•СЂРјР°РєРѕРІР°', N' РђР»Р»Р°', N' РњРёСЂРѕРЅРѕРІРЅР°', N' Р¶', N' 7(06)437-13-73В ', N' 1976-01-22', N' whimsy@aol.com, 2017-02-09')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'27', N' РЁР°С€РєРѕРІР°', N' Р“РµР»Р»Р°', N' Р­РґСѓР°СЂРґРѕРІРЅР°', N' Р¶', N' 7(57)446-21-04В ', N' 1979-02-24', N' jadavis@mac.com, 2016-11-16')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'28', N' Р‘С‹РєРѕРІР°', N' РўР°Р»Р°', N' Р“РµРѕСЂРіСЊРµРІРЅР°', N' Р¶', N' 7(13)915-53-53В ', N' 2000-02-22', N' ganter@optonline.net, 2016-08-13')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'29', N' РћСЂР»РѕРІР°', N' Р’Р»Р°РґР°', N' РњР°СЂС‚С‹РЅРѕРІРЅР°', N' Р¶', N' 7(2506)433-38-35В ', N' 1990-06-26', N' rnelson@yahoo.ca, 2016-03-21')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'30', N' РђРЅРёСЃРёРјРѕРІР°', N' РўР°РјР°СЂР°', N' Р’РёС‚Р°Р»СЊРµРІРЅР°', N' Р¶', N' 7(66)128-04-10В ', N' 1988-06-16', N' schwaang@mac.com, 2016-02-25')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'31', N' РђСЂС…РёРїРѕРІР°', N' РџСЂР°СЃРєРѕРІСЊСЏ', N' Р’Р°Р»РµСЂСЊРµРІРЅР°', N' Р¶', N' 7(86)540-10-21В ', N' 1979-01-09', N' cgcra@live.com, 2018-07-23')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'32', N' РќРѕРІРёРєРѕРІ', N' РђРґСЂРёР°РЅ', N' РђСЂРєР°РґСЊРµРІРёС‡', N' Рј', N' 7(70)572-33-62В ', N' 1974-01-15', N' multiplx@verizon.net, 2018-11-23')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'33', N' Р›Р°Р·Р°СЂРµРІР°', N' Р­Р»СЊРІРёРЅР°', N' Р РѕР±РµСЂС‚РѕРІРЅР°', N' Р¶', N' 7(5564)609-81-37В ', N' 1996-02-16', N' ahuillet@comcast.net, 2018-04-11')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'34', N' РђС„Р°РЅР°СЃСЊРµРІР°', N' Р РѕР·Р°Р»РёСЏ', N' РњР°РєР°СЂРѕРІРЅР°', N' Р¶', N' 7(0661)413-23-32В ', N' 1977-05-01', N' malattia@hotmail.com, 2017-09-06')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'35', N' РЈСЃС‚РёРЅРѕРІР°', N' Р®РЅРѕРЅР°', N' Р’Р°Р»РµРЅС‚РёРЅРѕРІРЅР°', N' Р¶', N' 7(33)367-13-07', N' 1982-08-08', N' kempsonc@live.com, 2017-05-28')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'36', N' РђР»РµРєСЃРµРµРІР°', N' Р­Р»РёРЅР°', N' РњР°С‚РІРµРµРІРЅР°', N' Р¶', N' 7(8086)245-64-81В ', N' 2002-05-07', N' pthomsen@verizon.net, 2018-03-28')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'37', N' Р“СѓС‰РёРЅР°', N' РЇРЅРёС‚Р°', N' Р¤РµРґРѕСЂРѕРІРЅР°', N' Р¶', N' 7(4544)716-68-96В ', N' 1999-03-02', N' lishoy@att.net, 2018-02-01')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'38', N' РЎСѓРІРѕСЂРѕРІР°', N' Р‘РѕР¶РµРЅР°', N' РђРЅР°С‚РѕР»СЊРµРІРЅР°', N' Р¶', N' 7(347)895-86-57В ', N' 1981-03-09', N' attwood@aol.com, 2016-01-28')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'39', N' Р“РѕСЂС€РєРѕРІР°', N' РњР°СЂС‚Р°', N' РРѕСЃРёС„РѕРІРЅР°', N' Р¶', N' 7(544)650-59-03 ', N' 2001-02-13', N' gbacon@mac.com, 2016-08-04')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'40', N' РЎРјРёСЂРЅРѕРІ', N' РњР°СЂС‚С‹РЅ', N' РђСЂСЃРµРЅСЊРµРІРёС‡', N' Рј', N' 7(6251)589-02-43В ', N' 1996-06-25', N' haddawy@live.com, 2017-02-07')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'41', N' РљРѕСЂРЅРёР»РѕРІР°', N' РђРЅСЌР»СЏ', N' РњРёС…Р°Р№Р»РѕРІРЅР°', N' Р¶', N' 7(20)980-01-60В ', N' 1973-04-02', N' jonathan@aol.com, 2016-05-22')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'42', N' Р•С„РёРјРѕРІР°', N' РњР°РіРґР°', N' РџР»Р°С‚РѕРЅРѕРІРЅР°', N' Р¶', N' 7(9261)386-15-92В ', N' 1995-08-16', N' rbarreira@me.com, 2017-08-01')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'43', N' Р‘СѓСЂРѕРІР°', N' РЎРІРµС‚Р»Р°РЅР°', N' Р›СѓРєСЊРµРІРЅР°', N' Р¶', N' 7(358)173-82-21В ', N' 1979-01-04', N' wsnyder@aol.com, 2016-10-13')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'44', N' РЎРёРґРѕСЂРѕРІР°', N' РўР°С‚СЊСЏРЅР°', N' РњРёС…Р°Р№Р»РѕРІРЅР°', N' Р¶', N' 7(51)732-91-79В ', N' 1974-04-24', N' tbeck@mac.com, 2018-10-03')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'45', N' Р•СЂС€РѕРІР°', N' РќРѕРјРё', N' РђРЅРґСЂРµРµРІРЅР°', N' Р¶', N' 7(7757)315-90-99В ', N' 2001-09-13', N' miltchev@mac.com, 2016-06-30')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'46', N' РћРІС‡РёРЅРЅРёРєРѕРІР°', N' Р›Р°СѓСЂР°', N' Р•СЂРµРјРµРµРІРЅР°', N' Р¶', N' 7(85)829-33-79В ', N' 1992-04-03', N' carcus@yahoo.ca, 2018-11-24')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'47', N' РњРёС€РёРЅР°', N' РРІРµС‚С‚Р°', N' РђРЅРґСЂРµРµРІРЅР°', N' Р¶', N' 7(3926)244-81-96В ', N' 2002-10-05', N' aukjan@yahoo.com, 2016-01-24')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'48', N' РљРѕР»РѕР±РѕРІР°', N' Р—Р»Р°С‚Р°', N' Р РѕРјР°РЅРѕРІРЅР°', N' Р¶', N' 7(50)884-07-35В ', N' 1994-08-25', N' sinkou@aol.com, 2016-12-03')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'49', N' РЎРµР»РёРІРµСЂСЃС‚РѕРІ', N' Р“Р»РµР±', N' РњР°РєСЃРёРјРѕРІРёС‡', N' Рј', N' 7(20)554-28-68В ', N' 1999-06-20', N' jigsaw@sbcglobal.net, 2016-01-07')
INSERT [dbo].[client_b_import] ([Фамилия], [ Имя], [ Отчество], [ Пол], [ Телефон], [ Дата рождения], [ Email], [ Дата регистрации]) VALUES (N'50', N' Р”РјРёС‚СЂРёРµРІР°', N' Р­Р»РёРЅР°', N' Р”Р°РЅРёР»РѕРІРЅР°', N' Р¶', N' 7(787)140-48-84В ', N' 1988-12-10', N' vmalik@live.com, 2017-02-11')
GO
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (1, N'Кузьмина', N'Дэнна', N'Витальевна', N'ж', N'7(9940)977-45-73 ', CAST(N'1993-08-24' AS Date), N'nichoj@mac.com', CAST(N'2016-03-27' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (2, N'Мамонтова', N'Марфа', N'Мироновна', N'ж', N'7(38)095-64-18 ', CAST(N'1984-10-19' AS Date), N'rfoley@verizon.net', CAST(N'2018-02-27' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (3, N'Степанова', N'Амелия', N'Робертовна', N'ж', N'7(1217)441-28-42 ', CAST(N'1970-06-06' AS Date), N'rasca@hotmail.com', CAST(N'2017-09-27' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (4, N'Колесникова', N'Алина', N'Еремеевна', N'ж', N'7(74)977-39-71 ', CAST(N'2001-04-19' AS Date), N'gfxguy@outlook.com', CAST(N'2017-01-18' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (5, N'Морозов', N'Наум', N'Валерьянович', N'м', N'7(636)050-96-13 ', CAST(N'1985-07-04' AS Date), N'salesgeek@mac.com', CAST(N'2016-05-02' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (6, N'Сысоева', N'Дарина', N'Ярославовна', N'ж', N'7(0698)387-96-04 ', CAST(N'1982-02-03' AS Date), N'treit@verizon.net', CAST(N'2016-05-13' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (7, N'Горбачёва', N'Никки', N'Еремеевна', N'ж', N'7(94)789-69-20 ', CAST(N'1987-04-21' AS Date), N'chinthaka@att.net', CAST(N'2018-08-16' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (8, N'Бирюкова', N'Инара', N'Улебовна', N'ж', N'7(098)346-50-58 ', CAST(N'1978-07-21' AS Date), N'smpeters@hotmail.com', CAST(N'2017-10-01' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (9, N'Киселёв', N'Устин', N'Яковлевич', N'м', N'7(83)334-52-76 ', CAST(N'1985-01-08' AS Date), N'dalamb@verizon.net', CAST(N'2018-06-21' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (10, N'Крюкова', N'Авигея', N'Святославовна', N'ж', N'7(499)318-88-53 ', CAST(N'2000-08-10' AS Date), N'simone@gmail.com', CAST(N'2018-01-03' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (11, N'Костина', N'Любава', N'Авксентьевна', N'ж', N'7(6419)959-21-87 ', CAST(N'1972-07-13' AS Date), N'gordonjcp@hotmail.com', CAST(N'2016-02-26' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (12, N'Попова', N'Харита', N'Якуновна', N'ж', N'7(335)386-81-06 ', CAST(N'1997-12-16' AS Date), N'firstpr@verizon.net', CAST(N'2016-07-05' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (13, N'Андреева', N'Патрисия', N'Валерьевна', N'ж', N'7(9648)953-81-26 ', CAST(N'1993-11-18' AS Date), N'jigsaw@aol.com', CAST(N'2016-07-17' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (14, N'Гусева', N'Роза', N'Дмитриевна', N'ж', N'7(23)064-51-84 ', CAST(N'1999-02-13' AS Date), N'martyloo@live.com', CAST(N'2017-12-12' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (15, N'Быков', N'Трофим', N'Константинович', N'м', N'7(3414)460-12-05 ', CAST(N'1994-12-20' AS Date), N'jguyer@aol.com', CAST(N'2016-04-17' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (16, N'Гусев', N'Яков', N'Авксентьевич', N'м', N'7(0972)781-11-37 ', CAST(N'1995-12-10' AS Date), N'jdhedden@icloud.com', CAST(N'2017-11-20' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (17, N'Турова', N'Георгина', N'Семёновна', N'ж', N'7(555)321-42-99 ', CAST(N'1974-05-28' AS Date), N'yruan@optonline.net', CAST(N'2018-02-22' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (18, N'Трофимова', N'Альжбета', N'Якововна', N'ж', N'7(1084)658-92-95 ', CAST(N'1988-10-22' AS Date), N'gbacon@mac.com', CAST(N'2017-09-21' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (19, N'Баранова', N'Эльмира', N'Дмитриевна', N'ж', N'7(9240)643-15-50 ', CAST(N'1977-01-15' AS Date), N'jgmyers@comcast.net', CAST(N'2016-07-08' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (20, N'Федотов', N'Осип', N'Анатольевич', N'м', N'7(590)702-33-06 ', CAST(N'1971-04-13' AS Date), N'breegster@hotmail.com', CAST(N'2018-07-23' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (21, N'Борисов', N'Аввакум', N'Артемович', N'м', N'7(2296)930-08-88 ', CAST(N'1974-04-25' AS Date), N'chlim@live.com', CAST(N'2017-03-11' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (22, N'Артемьева', N'Лиза', N'Максимовна', N'ж', N'7(696)972-70-21 ', CAST(N'1996-05-17' AS Date), N'snunez@yahoo.ca', CAST(N'2018-10-07' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (23, N'Воронова', N'Изабелла', N'Вячеславовна', N'ж', N'7(17)433-44-98 ', CAST(N'1999-09-24' AS Date), N'kildjean@sbcglobal.net', CAST(N'2017-12-21' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (24, N'Федотова', N'Сандра', N'Владленовна', N'ж', N'7(126)195-25-86 ', CAST(N'1985-03-29' AS Date), N'penna@verizon.net', CAST(N'2016-11-08' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (25, N'Ефремов', N'Витольд', N'Авксентьевич', N'м', N'7(93)922-14-03 ', CAST(N'1975-12-02' AS Date), N'kwilliams@yahoo.ca', CAST(N'2018-04-09' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (26, N'Ермакова', N'Алла', N'Мироновна', N'ж', N'7(06)437-13-73 ', CAST(N'1976-01-22' AS Date), N'whimsy@aol.com', CAST(N'2017-02-09' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (27, N'Шашкова', N'Гелла', N'Эдуардовна', N'ж', N'7(57)446-21-04 ', CAST(N'1979-02-24' AS Date), N'jadavis@mac.com', CAST(N'2016-11-16' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (28, N'Быкова', N'Тала', N'Георгьевна', N'ж', N'7(13)915-53-53 ', CAST(N'2000-02-22' AS Date), N'ganter@optonline.net', CAST(N'2016-08-13' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (29, N'Орлова', N'Влада', N'Мартыновна', N'ж', N'7(2506)433-38-35 ', CAST(N'1990-06-26' AS Date), N'rnelson@yahoo.ca', CAST(N'2016-03-21' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (30, N'Анисимова', N'Тамара', N'Витальевна', N'ж', N'7(66)128-04-10 ', CAST(N'1988-06-16' AS Date), N'schwaang@mac.com', CAST(N'2016-02-25' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (31, N'Архипова', N'Прасковья', N'Валерьевна', N'ж', N'7(86)540-10-21 ', CAST(N'1979-01-09' AS Date), N'cgcra@live.com', CAST(N'2018-07-23' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (32, N'Новиков', N'Адриан', N'Аркадьевич', N'м', N'7(70)572-33-62 ', CAST(N'1974-01-15' AS Date), N'multiplx@verizon.net', CAST(N'2018-11-23' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (33, N'Лазарева', N'Эльвина', N'Робертовна', N'ж', N'7(5564)609-81-37 ', CAST(N'1996-02-16' AS Date), N'ahuillet@comcast.net', CAST(N'2018-04-11' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (34, N'Афанасьева', N'Розалия', N'Макаровна', N'ж', N'7(0661)413-23-32 ', CAST(N'1977-05-01' AS Date), N'malattia@hotmail.com', CAST(N'2017-09-06' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (35, N'Устинова', N'Юнона', N'Валентиновна', N'ж', N'7(33)367-13-07', CAST(N'1982-08-08' AS Date), N'kempsonc@live.com', CAST(N'2017-05-28' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (36, N'Алексеева', N'Элина', N'Матвеевна', N'ж', N'7(8086)245-64-81 ', CAST(N'2002-05-07' AS Date), N'pthomsen@verizon.net', CAST(N'2018-03-28' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (37, N'Гущина', N'Янита', N'Федоровна', N'ж', N'7(4544)716-68-96 ', CAST(N'1999-03-02' AS Date), N'lishoy@att.net', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (38, N'Суворова', N'Божена', N'Анатольевна', N'ж', N'7(347)895-86-57 ', CAST(N'1981-03-09' AS Date), N'attwood@aol.com', CAST(N'2016-01-28' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (39, N'Горшкова', N'Марта', N'Иосифовна', N'ж', N'7(544)650-59-03 ', CAST(N'2001-02-13' AS Date), N'gbacon@mac.com', CAST(N'2016-08-04' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (40, N'Смирнов', N'Мартын', N'Арсеньевич', N'м', N'7(6251)589-02-43 ', CAST(N'1996-06-25' AS Date), N'haddawy@live.com', CAST(N'2017-02-07' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (41, N'Корнилова', N'Анэля', N'Михайловна', N'ж', N'7(20)980-01-60 ', CAST(N'1973-04-02' AS Date), N'jonathan@aol.com', CAST(N'2016-05-22' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (42, N'Ефимова', N'Магда', N'Платоновна', N'ж', N'7(9261)386-15-92 ', CAST(N'1995-08-16' AS Date), N'rbarreira@me.com', CAST(N'2017-08-01' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (43, N'Бурова', N'Светлана', N'Лукьевна', N'ж', N'7(358)173-82-21 ', CAST(N'1979-01-04' AS Date), N'wsnyder@aol.com', CAST(N'2016-10-13' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (44, N'Сидорова', N'Татьяна', N'Михайловна', N'ж', N'7(51)732-91-79 ', CAST(N'1974-04-24' AS Date), N'tbeck@mac.com', CAST(N'2018-10-03' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (45, N'Ершова', N'Номи', N'Андреевна', N'ж', N'7(7757)315-90-99 ', CAST(N'2001-09-13' AS Date), N'miltchev@mac.com', CAST(N'2016-06-30' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (46, N'Овчинникова', N'Лаура', N'Еремеевна', N'ж', N'7(85)829-33-79 ', CAST(N'1992-04-03' AS Date), N'carcus@yahoo.ca', CAST(N'2018-11-24' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (47, N'Мишина', N'Иветта', N'Андреевна', N'ж', N'7(3926)244-81-96 ', CAST(N'2002-10-05' AS Date), N'aukjan@yahoo.com', CAST(N'2016-01-24' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (48, N'Колобова', N'Злата', N'Романовна', N'ж', N'7(50)884-07-35 ', CAST(N'1994-08-25' AS Date), N'sinkou@aol.com', CAST(N'2016-12-03' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (49, N'Селиверстов', N'Глеб', N'Максимович', N'м', N'7(20)554-28-68 ', CAST(N'1999-06-20' AS Date), N'jigsaw@sbcglobal.net', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[client_b_import1] ([id], [Фамилия], [Имя], [Отчество], [Пол], [Телефон], [Дата_рождения], [Email], [Дата_регистрации]) VALUES (50, N'Дмитриева', N'Элина', N'Даниловна', N'ж', N'7(787)140-48-84 ', CAST(N'1988-12-10' AS Date), N'vmalik@live.com', CAST(N'2017-02-11' AS Date))
GO
SET IDENTITY_INSERT [dbo].[ClientService] ON 

INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (11, 326, 456, N'27.04.2019 13:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (12, 349, 452, N'31.05.2019 8:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (13, 291, 470, N'20.09.2019 17:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (14, 339, 486, N'17.10.2019 17:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (15, 250, 437, N'12.07.2019 16:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (16, 245, 450, N'06.09.2019 12:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (17, 329, 500, N'28.09.2019 18:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (18, 298, 478, N'11.09.2019 13:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (19, 257, 451, N'21.06.2019 11:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (20, 241, 440, N'20.12.2019 13:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (21, 298, 482, N'19.03.2019 12:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (22, 291, 490, N'23.12.2019 17:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (23, 339, 466, N'17.01.2019 16:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (24, 369, 412, N'18.12.2019 16:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (25, 273, 486, N'22.01.2019 14:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (26, 329, 423, N'07.09.2019 18:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (27, 339, 419, N'01.01.2019 8:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (28, 327, 450, N'24.06.2019 16:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (29, 233, 500, N'28.04.2019 8:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (30, 241, 466, N'13.06.2019 15:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (31, 371, 478, N'25.12.2019 8:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (32, 369, 497, N'07.10.2019 14:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (33, 388, 451, N'22.05.2019 15:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (34, 336, 482, N'05.10.2019 13:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (35, 306, 490, N'27.01.2019 8:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (36, 327, 441, N'15.11.2019 17:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (37, 298, 434, N'06.05.2019 16:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (38, 241, 469, N'13.02.2019 9:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (39, 272, 475, N'20.05.2019 14:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (40, 346, 416, N'19.01.2019 13:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (41, 324, 503, N'07.06.2019 8:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (42, 233, 470, N'21.03.2019 11:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (43, 326, 506, N'04.08.2019 12:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (44, 238, 435, N'11.01.2019 19:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (45, 245, 503, N'26.05.2019 8:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (46, 233, 440, N'04.05.2019 16:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (47, 311, 422, N'23.07.2019 13:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (48, 339, 482, N'04.01.2019 18:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (49, 236, 450, N'12.10.2019 19:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (50, 241, 441, N'24.10.2019 15:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (51, 339, 433, N'29.05.2019 14:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (52, 233, 489, N'20.09.2019 11:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (53, 236, 492, N'07.05.2019 15:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (54, 306, 505, N'11.09.2019 14:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (55, 360, 481, N'26.11.2019 11:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (56, 236, 497, N'28.03.2019 9:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (57, 238, 440, N'17.01.2019 18:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (58, 388, 437, N'28.01.2019 15:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (59, 288, 451, N'22.06.2019 16:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (60, 378, 423, N'15.12.2019 10:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (61, 360, 452, N'07.06.2019 12:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (62, 288, 507, N'14.09.2019 16:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (63, 260, 421, N'04.11.2019 12:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (64, 362, 502, N'26.02.2019 15:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (65, 348, 439, N'13.09.2019 11:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (66, 269, 497, N'22.11.2019 10:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (67, 349, 489, N'09.12.2019 9:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (68, 388, 416, N'31.10.2019 8:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (69, 250, 421, N'31.08.2019 11:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (70, 346, 469, N'24.06.2019 17:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (71, 324, 434, N'29.11.2019 14:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (72, 376, 421, N'25.08.2019 19:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (73, 306, 503, N'13.11.2019 11:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (74, 349, 437, N'30.07.2019 11:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (75, 371, 437, N'25.05.2019 19:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (76, 324, 466, N'26.06.2019 19:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (77, 382, 421, N'06.11.2019 11:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (78, 241, 469, N'29.04.2019 16:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (79, 376, 456, N'21.10.2019 19:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (80, 272, 425, N'23.06.2019 9:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (81, 317, 443, N'09.11.2019 11:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (82, 362, 453, N'02.10.2019 19:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (83, 291, 503, N'07.06.2019 19:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (84, 348, 439, N'17.01.2019 11:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (85, 388, 506, N'11.01.2019 16:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (86, 349, 482, N'13.11.2019 9:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (87, 324, 489, N'10.10.2019 8:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (88, 245, 451, N'01.03.2019 16:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (89, 324, 426, N'21.07.2019 14:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (90, 354, 441, N'21.12.2019 13:40', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (91, 360, 503, N'01.10.2019 12:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (92, 378, 478, N'19.08.2019 17:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (93, 260, 500, N'01.03.2019 15:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (94, 354, 434, N'11.05.2019 14:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (95, 241, 419, N'21.12.2019 19:00', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (96, 324, 475, N'30.01.2019 10:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (97, 308, 476, N'09.03.2019 16:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (98, 306, 469, N'08.08.2019 18:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (99, 349, 503, N'04.03.2019 14:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (100, 362, 490, N'17.06.2019 10:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (101, 272, 463, N'11.02.2019 9:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (102, 362, 490, N'01.02.2019 12:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (103, 376, 429, N'11.12.2019 9:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (104, 321, 429, N'13.01.2019 18:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (105, 273, 469, N'23.03.2019 8:30', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (106, 260, 425, N'02.10.2019 14:10', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (107, 327, 419, N'20.01.2019 9:20', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (108, 269, 469, N'27.01.2019 12:50', NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (109, 376, 459, N'19.05.2019 8:00', NULL)
GO
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (110, 314, 486, N'30.11.2019 19:10', NULL)
SET IDENTITY_INSERT [dbo].[ClientService] OFF
GO
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'ж', N'')
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'м', N'')
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (412, N'Наращивание ресниц', 1430.0000, 2400, NULL, 0.05, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (413, N'Моделирование ресниц+тушь', 1390.0000, 2100, NULL, 0.1, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (414, N'Ламинирование ресниц', 1740.0000, 3300, NULL, 0.25, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (415, N'Русский спа массаж', 2540.0000, 3000, NULL, 0.2, N' Услуги салона красоты\массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (416, N'Мезотерапия', 2040.0000, 2400, NULL, 0.2, N' Услуги салона красоты\Мезотерапия.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (417, N'Полуперманентная тушь', 2340.0000, 1800, NULL, NULL, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (418, N'Экспресс SPA', 2420.0000, 3300, NULL, NULL, N' Услуги салона красоты\Экспресс SPA.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (419, N'Пирсинг', 1330.0000, 3300, NULL, NULL, N' Услуги салона красоты\Прокол ушей пистолетом.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (420, N'Массаж масляный', 1090.0000, 3000, NULL, NULL, N' Услуги салона красоты\массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (421, N'Прессотерапия', 2350.0000, 2400, NULL, NULL, N' Услуги салона красоты\Прессотерапия.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (422, N'Европейский маникюр', 1990.0000, 3600, NULL, 0.05, N' Услуги салона красоты\Европейский маникюр.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (423, N'Удаление доброкачественных образований кожи', 1910.0000, 900, NULL, NULL, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (424, N'Испанский массаж', 2190.0000, 2400, NULL, 0.25, N' Услуги салона красоты\массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (425, N'Наращивание ресниц кукольного эффекта', 2120.0000, 2100, NULL, NULL, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (426, N'Стрижка с покраской', 2300.0000, 1500, NULL, 0.1, N' Услуги салона красоты\стрижка.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (427, N'Детокс спа', 1330.0000, 1800, NULL, NULL, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (428, N'Стоун-терапия', 2100.0000, 3000, NULL, 0.25, N' Услуги салона красоты\Стоун-терапия.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (429, N'Радиоволновой лифтинг', 1590.0000, 3000, NULL, 0.15, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (430, N'Химические завивки', 1090.0000, 3000, NULL, 0.2, N' Услуги салона красоты\стрижка.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (431, N'Альгинатные маски', 2370.0000, 3300, NULL, NULL, N' Услуги салона красоты\mask.jpeg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (432, N'Спортивный массаж', 1650.0000, 1800, NULL, 0.15, N' Услуги салона красоты\массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (433, N'Лечебное покрытие ногтей', 1220.0000, 1800, NULL, NULL, N' Услуги салона красоты\ногти.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (434, N'Реконструкция и лечение волос и кожи головы', 2360.0000, 3300, NULL, 0.15, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (435, N'Классический маникюр', 1680.0000, 3300, NULL, 0.2, N' Услуги салона красоты\Классический маникюр.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (436, N'Консультация врача', 2120.0000, 1800, NULL, NULL, N' Услуги салона красоты\122454.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (437, N'Наращивание ресниц лисьего эффекта', 1370.0000, 1800, NULL, 0.25, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (438, N'Экспресс-педикюр', 2170.0000, 1200, NULL, 0.2, N' Услуги салона красоты\Экспресс-педикюр.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (439, N'Гречишный массаж', 1520.0000, 2400, NULL, 0.15, N' Услуги салона красоты\Гречишный массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (440, N'Комбинированный маникюр', 2390.0000, 3600, NULL, NULL, N' Услуги салона красоты\Комбинированный маникюр.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (441, N'Фонофорез лица', 1120.0000, 1200, NULL, 0.05, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (442, N'Перманентный макияж (татуаж)', 1270.0000, 2400, NULL, 0.25, N' Услуги салона красоты\брови.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (443, N'Химический пилинг', 1880.0000, 1500, NULL, 0.15, N' Услуги салона красоты\piling.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (444, N'Плазмолифтинг', 2450.0000, 900, NULL, 0.2, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (445, N'Криолифтинг', 1090.0000, 900, NULL, NULL, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (446, N'Гликолевый поверхностный базовый пилинг', 2230.0000, 2100, NULL, 0.1, N' Услуги салона красоты\piling.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (447, N'Окрашивание ресниц', 1100.0000, 2100, NULL, NULL, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (448, N'Коррекция нарощенных ресниц', 1310.0000, 2700, NULL, 0.05, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (449, N'Фракционное омоложение лазерной системой Palomar', 1140.0000, 2700, NULL, 0.05, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (450, N'Художественное оформление ресниц', 2040.0000, 3000, NULL, NULL, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (451, N'Эстетическая лазерная шлифовка кожи', 1750.0000, 2400, NULL, 0.25, N' Услуги салона красоты\piling.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (452, N'Массаж ЖИВА', 2330.0000, 3300, NULL, 0.25, N' Услуги салона красоты\массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (453, N'Макияж', 2470.0000, 1800, NULL, 0.2, N' Услуги салона красоты\makeup.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (454, N'Время вспять с коллагеном', 1850.0000, 2400, NULL, 0.1, N' Услуги салона красоты\96.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (455, N'Снятие ресниц', 1680.0000, 2700, NULL, 0.25, N' Услуги салона красоты\Снятие ресниц.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (456, N'Оформление бровей', 2280.0000, 2100, NULL, NULL, N' Услуги салона красоты\брови.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (457, N'Стрижка бороды машинкой', 1750.0000, 2700, NULL, 0.1, N' Услуги салона красоты\man.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (458, N'Маски для лица', 2250.0000, 1200, NULL, 0.1, N' Услуги салона красоты\mask.jpeg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (459, N'Татуаж', 1330.0000, 3600, NULL, 0.2, N' Услуги салона красоты\брови.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (460, N'Уход для проблемной и комбинированной кожи', 2440.0000, 3600, NULL, 0.15, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (461, N'Прокол ушей пистолетом', 2040.0000, 1500, NULL, 0.05, N' Услуги салона красоты\Прокол ушей пистолетом.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (462, N'Ремонт одного ногтя', 2340.0000, 1800, NULL, 0.25, N' Услуги салона красоты\ногти.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (463, N'Полировка с маслом', 1280.0000, 1200, NULL, NULL, N' Услуги салона красоты\piling.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (464, N'Омоложение зоны вокруг глаз', 2540.0000, 1800, NULL, 0.15, N' Услуги салона красоты\брови.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (465, N'Аппаратная косметология', 1180.0000, 3300, NULL, NULL, N' Услуги салона красоты\96.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (466, N'Консультация врача-косметолога', 2350.0000, 3600, NULL, 0.05, N' Услуги салона красоты\122454.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (467, N'Визаж', 1260.0000, 3000, NULL, NULL, N' Услуги салона красоты\makeup.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (468, N'Демакияж', 1470.0000, 1200, NULL, 0.15, N' Услуги салона красоты\Демакияж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (469, N'Коррекция ресниц', 2010.0000, 1200, NULL, 0.1, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (470, N'Детская стрижка', 2330.0000, 2100, NULL, 0.2, N' Услуги салона красоты\стрижка.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (471, N'Мужская стрижка', 1690.0000, 3000, NULL, NULL, N' Услуги салона красоты\man.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (472, N'Вечерняя прическа', 2020.0000, 900, NULL, 0.25, N' Услуги салона красоты\стрижка.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (473, N'Наращивание ресниц беличьего эффекта', 1010.0000, 1800, NULL, NULL, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (474, N'Мезонити (Тредлифтинг)', 2140.0000, 1500, NULL, NULL, N' Услуги салона красоты\96.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (475, N'Покрытие ногтей', 2410.0000, 2400, NULL, 0.15, N' Услуги салона красоты\ногти.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (476, N'Гавайский массаж Ломи-Ломи', 1040.0000, 2100, NULL, 0.15, N' Услуги салона красоты\массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (477, N'Парафинотерапия', 1180.0000, 2100, NULL, 0.05, N' Услуги салона красоты\Парафинотерапия.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (478, N'Озонотерапия', 1740.0000, 2100, NULL, 0.2, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (479, N'Миндальный пилинг', 2430.0000, 2700, NULL, 0.15, N' Услуги салона красоты\piling.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (480, N'Покрытие ногтей гель-лаком', 2100.0000, 900, NULL, 0.2, N' Услуги салона красоты\Покрытие ногтей гель-лаком.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (481, N'Декорирование ресниц стразами', 1920.0000, 3000, NULL, 0.15, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (482, N'Микротоковая терапия', 2410.0000, 2700, NULL, 0.05, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (483, N'Стрижка челки', 1930.0000, 2100, NULL, 0.1, N' Услуги салона красоты\стрижка.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (484, N'Лазерный пилинг', 1650.0000, 1200, NULL, 0.25, N' Услуги салона красоты\piling.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (485, N'Массаж лица', 2370.0000, 3600, NULL, NULL, N' Услуги салона красоты\массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (486, N'Снятие лака', 1240.0000, 2100, NULL, NULL, N' Услуги салона красоты\ногти.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (487, N'Классический педикюр', 2040.0000, 2100, NULL, 0.25, N' Услуги салона красоты\Экспресс-педикюр.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (488, N'Классический массаж', 1120.0000, 2700, NULL, 0.15, N' Услуги салона красоты\массаж.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (489, N'Окрашивание бровей', 1120.0000, 3600, NULL, 0.1, N' Услуги салона красоты\Окрашивание бровей.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (490, N'Наращивание ногтей гелем', 1540.0000, 2400, NULL, 0.1, N' Услуги салона красоты\ногти.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (491, N'Ботокс', 1820.0000, 3000, NULL, 0.15, N' Услуги салона красоты\96.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (492, N'Инъекционные методики', 1660.0000, 2400, NULL, NULL, N' Услуги салона красоты\96.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (493, N'Покраска ресниц', 2400.0000, 1800, NULL, NULL, N' Услуги салона красоты\Ресницы.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (494, N'Свадебная прическа', 2070.0000, 2700, NULL, NULL, N' Услуги салона красоты\стрижка.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (495, N'Моделирование ресниц', 2140.0000, 2700, NULL, NULL, N' Услуги салона красоты\Моделирование ресниц.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (496, N'Миостимуляция', 2380.0000, 3600, NULL, NULL, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (497, N'Шугаринг', 1400.0000, 1800, NULL, NULL, N' Услуги салона красоты\Шугаринг.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (498, N'Укрепление ногтей гелем', 1260.0000, 2700, NULL, NULL, N' Услуги салона красоты\Укрепление ногтей гелем.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (499, N'Солярий', 1790.0000, 3000, NULL, 0.1, N' Услуги салона красоты\soliarij.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (500, N'Моментальный лифтинг', 2020.0000, 3000, NULL, NULL, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (501, N'Детский маникюр', 1900.0000, 2100, NULL, NULL, N' Услуги салона красоты\ногти.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (502, N'Ультразвуковой пилинг', 1440.0000, 2700, NULL, 0.2, N' Услуги салона красоты\piling.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (503, N'ИК-сауна', 1160.0000, 2700, NULL, 0.2, N' Услуги салона красоты\ИК-сауна.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (504, N'Контурная пластика', 1550.0000, 2100, NULL, 0.2, N' Услуги салона красоты\Контурная пластика.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (505, N'Декорирование нарощенных ресниц стразами', 1130.0000, 2700, NULL, NULL, N' Услуги салона красоты\Декорирование нарощенных ресниц стразами.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (506, N'Депиляция воском', 2330.0000, 1800, NULL, 0.15, N' Услуги салона красоты\Депиляция воском.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (507, N'Полировка ногтей', 2310.0000, 3000, NULL, 0.15, N' Услуги салона красоты\Полировка ногтей.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (508, N'Фракционный лазер Palomar Emerge', 1720.0000, 1500, NULL, 0.25, N' Услуги салона красоты\face.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (509, N'Увлажнение с коллагеном', 2490.0000, 3300, NULL, NULL, N' Услуги салона красоты\96.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (510, N'Массаж оздоровительный', 1440.0000, 1200, NULL, NULL, N' Услуги салона красоты\массаж.jpg')
GO
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (511, N'Общий массаж', 1970.0000, 2700, NULL, 0.25, N' Услуги салона красоты\массаж.jpg')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Наращивание ресниц', N'Услуги салона красоты\Ресницы.png', N'40 мин.', N'1430', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Моделирование ресниц+тушь', N'Услуги салона красоты\Ресницы.png', N'2100 сек.', N'1390', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Ламинирование ресниц', N'Услуги салона красоты\Ресницы.png', N'3300 сек.', N'1740 руб.', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Русский спа массаж', N'Услуги салона красоты\массаж.jpg', N'50 мин.', N'2540 руб.', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Мезотерапия', N'Услуги салона красоты\Мезотерапия.jpg', N'40 мин.', N'2040', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Полуперманентная тушь', N'Услуги салона красоты\Ресницы.png', N'1800 сек.', N'2340₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Экспресс SPA', N'Услуги салона красоты\Экспресс SPA.png', N'15 мин.', N'2420 руб.', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Пирсинг', N'Услуги салона красоты\Прокол ушей пистолетом.png', N'55 мин.', N'1330₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Массаж масляный', N'Услуги салона красоты\массаж.jpg', N'3000 сек.', N'1090 руб.', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Прессотерапия', N'Услуги салона красоты\Прессотерапия.jpg', N'2400 сек.', N'2350₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Европейский маникюр', N'Услуги салона красоты\Европейский маникюр.jpg', N'3600 сек.', N'1990', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Удаление доброкачественных образований кожи', N'Услуги салона красоты\face.png', N'900 сек.', N'1910 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Испанский массаж', N'Услуги салона красоты\массаж.jpg', N'2400 сек.', N'2190₽', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Наращивание ресниц кукольного эффекта', N'Услуги салона красоты\Ресницы.png', N'2100 сек.', N'2120 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Стрижка с покраской', N'Услуги салона красоты\стрижка.png', N'1500 сек.', N'2300₽', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Детокс спа', N'Услуги салона красоты\face.png', N'30 мин.', N'1330₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Стоун-терапия', N'Услуги салона красоты\Стоун-терапия.jpg', N'3000 сек.', N'2100₽', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Радиоволновой лифтинг', N'Услуги салона красоты\face.png', N'50 мин.', N'1590 руб.', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Химические завивки', N'Услуги салона красоты\стрижка.png', N'50 мин.', N'1090', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Альгинатные маски', N'Услуги салона красоты\mask.jpeg', N'3300 сек.', N'2370₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Спортивный массаж', N'Услуги салона красоты\массаж.jpg', N'1800 сек.', N'1650 рублей', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Лечебное покрытие ногтей', N'Услуги салона красоты\ногти.png', N'1800 сек.', N'1220', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Реконструкция и лечение волос и кожи головы', N'Услуги салона красоты\face.png', N'55 мин.', N'2360₽', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Классический маникюр', N'Услуги салона красоты\Классический маникюр.png', N'3300 сек.', N'1680', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Консультация врача', N'Услуги салона красоты\122454.png', N'1800 сек.', N'2120₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Наращивание ресниц лисьего эффекта', N'Услуги салона красоты\Ресницы.png', N'1800 сек.', N'1370₽', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Экспресс-педикюр', N'Услуги салона красоты\Экспресс-педикюр.jpg', N'1200 сек.', N'2170 руб.', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Гречишный массаж', N'Услуги салона красоты\Гречишный массаж.jpg', N'2400 сек.', N'1520 руб.', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Комбинированный маникюр', N'Услуги салона красоты\Комбинированный маникюр.jpg', N'60 мин.', N'2390₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Фонофорез лица', N'Услуги салона красоты\face.png', N'1200 сек.', N'1120', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Перманентный макияж (татуаж)', N'Услуги салона красоты\брови.png', N'2400 сек.', N'1270 руб.', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Химический пилинг', N'Услуги салона красоты\piling.jpg', N'1500 сек.', N'1880 рублей', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Плазмолифтинг', N'Услуги салона красоты\face.png', N'900 сек.', N'2450', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Криолифтинг', N'Услуги салона красоты\face.png', N'900 сек.', N'1090', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Гликолевый поверхностный базовый пилинг', N'Услуги салона красоты\piling.jpg', N'35 мин.', N'2230 руб.', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Окрашивание ресниц', N'Услуги салона красоты\Ресницы.png', N'35 мин.', N'1100', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Коррекция нарощенных ресниц', N'Услуги салона красоты\Ресницы.png', N'45 мин.', N'1310', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Фракционное омоложение лазерной системой Palomar', N'Услуги салона красоты\face.png', N'45 мин.', N'1140₽', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Художественное оформление ресниц', N'Услуги салона красоты\Ресницы.png', N'50 мин.', N'2040 руб.', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Эстетическая лазерная шлифовка кожи', N'Услуги салона красоты\piling.jpg', N'40 мин.', N'1750 рублей', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Массаж ЖИВА', N'Услуги салона красоты\массаж.jpg', N'55 мин.', N'2330 руб.', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Макияж', N'Услуги салона красоты\makeup.jpg', N'30 мин.', N'2470 руб.', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Время вспять с коллагеном', N'Услуги салона красоты\96.png', N'2400 сек.', N'1850 рублей', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Снятие ресниц', N'Услуги салона красоты\Снятие ресниц.jpg', N'45 мин.', N'1680 рублей', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Оформление бровей', N'Услуги салона красоты\брови.png', N'2100 сек.', N'2280', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Стрижка бороды машинкой', N'Услуги салона красоты\man.png', N'2700 сек.', N'1750 рублей', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Маски для лица', N'Услуги салона красоты\mask.jpeg', N'20 мин.', N'2250 руб.', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Татуаж', N'Услуги салона красоты\брови.png', N'3600 сек.', N'1330 руб.', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Уход для проблемной и комбинированной кожи', N'Услуги салона красоты\face.png', N'60 мин.', N'2440 руб.', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Прокол ушей пистолетом', N'Услуги салона красоты\Прокол ушей пистолетом.png', N'1500 сек.', N'2040 рублей', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Ремонт одного ногтя', N'Услуги салона красоты\ногти.png', N'1800 сек.', N'2340', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Полировка с маслом', N'Услуги салона красоты\piling.jpg', N'1200 сек.', N'1280 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Омоложение зоны вокруг глаз', N'Услуги салона красоты\брови.png', N'1800 сек.', N'2540₽', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Аппаратная косметология', N'Услуги салона красоты\96.png', N'3300 сек.', N'1180 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Консультация врача-косметолога', N'Услуги салона красоты\122454.png', N'3600 сек.', N'2350 рублей', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Визаж', N'Услуги салона красоты\makeup.jpg', N'50 мин.', N'1260 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Демакияж', N'Услуги салона красоты\Демакияж.jpg', N'20 мин.', N'1470₽', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Коррекция ресниц', N'Услуги салона красоты\Ресницы.png', N'1200 сек.', N'2010 рублей', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Детская стрижка', N'Услуги салона красоты\стрижка.png', N'2100 сек.', N'2330', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Мужская стрижка', N'Услуги салона красоты\man.png', N'3000 сек.', N'1690₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Вечерняя прическа', N'Услуги салона красоты\стрижка.png', N'15 мин.', N'2020 рублей', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Наращивание ресниц беличьего эффекта', N'Услуги салона красоты\Ресницы.png', N'1800 сек.', N'1010₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Мезонити (Тредлифтинг)', N'Услуги салона красоты\96.png', N'1500 сек.', N'2140', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Покрытие ногтей', N'Услуги салона красоты\ногти.png', N'2400 сек.', N'2410₽', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Гавайский массаж Ломи-Ломи', N'Услуги салона красоты\массаж.jpg', N'2100 сек.', N'1040₽', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Парафинотерапия', N'Услуги салона красоты\Парафинотерапия.jpg', N'2100 сек.', N'1180 руб.', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Озонотерапия', N'Услуги салона красоты\face.png', N'2100 сек.', N'1740 рублей', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Миндальный пилинг', N'Услуги салона красоты\piling.jpg', N'2700 сек.', N'2430₽', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Покрытие ногтей гель-лаком', N'Услуги салона красоты\Покрытие ногтей гель-лаком.jpg', N'900 сек.', N'2100', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Декорирование ресниц стразами', N'Услуги салона красоты\Ресницы.png', N'50 мин.', N'1920 руб.', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Микротоковая терапия', N'Услуги салона красоты\face.png', N'2700 сек.', N'2410 рублей', N'5%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Стрижка челки', N'Услуги салона красоты\стрижка.png', N'35 мин.', N'1930', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Лазерный пилинг', N'Услуги салона красоты\piling.jpg', N'20 мин.', N'1650', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Массаж лица', N'Услуги салона красоты\массаж.jpg', N'3600 сек.', N'2370 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Снятие лака', N'Услуги салона красоты\ногти.png', N'2100 сек.', N'1240', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Классический педикюр', N'Услуги салона красоты\Экспресс-педикюр.jpg', N'2100 сек.', N'2040 руб.', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Классический массаж', N'Услуги салона красоты\массаж.jpg', N'2700 сек.', N'1120', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Окрашивание бровей', N'Услуги салона красоты\Окрашивание бровей.jpg', N'3600 сек.', N'1120 руб.', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Наращивание ногтей гелем', N'Услуги салона красоты\ногти.png', N'40 мин.', N'1540₽', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Ботокс', N'Услуги салона красоты\96.png', N'3000 сек.', N'1820₽', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Инъекционные методики', N'Услуги салона красоты\96.png', N'2400 сек.', N'1660', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Покраска ресниц', N'Услуги салона красоты\Ресницы.png', N'1800 сек.', N'2400₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Свадебная прическа', N'Услуги салона красоты\стрижка.png', N'45 мин.', N'2070₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Моделирование ресниц', N'Услуги салона красоты\Моделирование ресниц.jpg', N'45 мин.', N'2140 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Миостимуляция', N'Услуги салона красоты\face.png', N'60 мин.', N'2380₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Шугаринг', N'Услуги салона красоты\Шугаринг.jpg', N'1800 сек.', N'1400₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Укрепление ногтей гелем', N'Услуги салона красоты\Укрепление ногтей гелем.jpg', N'45 мин.', N'1260', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Солярий', N'Услуги салона красоты\soliarij.jpg', N'3000 сек.', N'1790 рублей', N'10%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Моментальный лифтинг', N'Услуги салона красоты\face.png', N'50 мин.', N'2020 руб.', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Детский маникюр', N'Услуги салона красоты\ногти.png', N'35 мин.', N'1900 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Ультразвуковой пилинг', N'Услуги салона красоты\piling.jpg', N'2700 сек.', N'1440', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'ИК-сауна', N'Услуги салона красоты\ИК-сауна.jpg', N'45 мин.', N'1160₽', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Контурная пластика', N'Услуги салона красоты\Контурная пластика.jpg', N'2100 сек.', N'1550 руб.', N'20%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Декорирование нарощенных ресниц стразами', N'Услуги салона красоты\Декорирование нарощенных ресниц стразами.jpg', N'45 мин.', N'1130 рублей', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Депиляция воском', N'Услуги салона красоты\Депиляция воском.jpg', N'30 мин.', N'2330 рублей', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Полировка ногтей', N'Услуги салона красоты\Полировка ногтей.jpg', N'50 мин.', N'2310 руб.', N'15%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Фракционный лазер Palomar Emerge', N'Услуги салона красоты\face.png', N'1500 сек.', N'1720', N'25%')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Увлажнение с коллагеном', N'Услуги салона красоты\96.png', N'55 мин.', N'2490', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Массаж оздоровительный', N'Услуги салона красоты\массаж.jpg', N'1200 сек.', N'1440₽', N'нет')
INSERT [dbo].[service_b_import] ([Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (N'Общий массаж', N'Услуги салона красоты\массаж.jpg', N'45 мин.', N'1970 руб.', N'25%')
GO
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (1, N'Наращивание ресниц', N'Услуги салона красоты\Ресницы.png', N'2400 сек.', N'1430 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (2, N'Моделирование ресниц+тушь', N'Услуги салона красоты\Ресницы.png', N'2100 сек.', N'1390 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (3, N'Ламинирование ресниц', N'Услуги салона красоты\Ресницы.png', N'3300 сек.', N'1740 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (4, N'Русский спа массаж', N'Услуги салона красоты\массаж.jpg', N'3000 сек.', N'2540 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (5, N'Мезотерапия', N'Услуги салона красоты\Мезотерапия.jpg', N'2400 сек.', N'2040 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (6, N'Полуперманентная тушь', N'Услуги салона красоты\Ресницы.png', N'1800 сек.', N'2340 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (7, N'Экспресс SPA', N'Услуги салона красоты\Экспресс SPA.png', N'3300 сек.', N'2420 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (8, N'Пирсинг', N'Услуги салона красоты\Прокол ушей пистолетом.png', N'3300 сек.', N'1330 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (9, N'Массаж масляный', N'Услуги салона красоты\массаж.jpg', N'3000 сек', N'1090 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (10, N'Прессотерапия', N'Услуги салона красоты\Прессотерапия.jpg', N'2400 сек.', N'2350 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (11, N'Европейский маникюр', N'Услуги салона красоты\Европейский маникюр.jpg', N'3600 сек.', N'1990 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (12, N'Удаление доброкачественных образований кожи', N'Услуги салона красоты\face.png', N'900 сек.', N'1910 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (13, N'Испанский массаж', N'Услуги салона красоты\массаж.jpg', N'2400 сек.', N'2190 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (14, N'Наращивание ресниц кукольного эффекта', N'Услуги салона красоты\Ресницы.png', N'2100 сек.', N'2120 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (15, N'Стрижка с покраской', N'Услуги салона красоты\стрижка.png', N'1500 сек.', N'2300 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (16, N'Детокс спа', N'Услуги салона красоты\face.png', N'1800 сек', N'1330 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (17, N'Стоун-терапия', N'Услуги салона красоты\Стоун-терапия.jpg', N'3000 сек.', N'2100 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (18, N'Радиоволновой лифтинг', N'Услуги салона красоты\face.png', N'3000 сек.', N'1590 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (19, N'Химические завивки', N'Услуги салона красоты\стрижка.png', N'3000 сек.', N'1090 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (20, N'Альгинатные маски', N'Услуги салона красоты\mask.jpeg', N'3300 сек.', N'2370 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (21, N'Спортивный массаж', N'Услуги салона красоты\массаж.jpg', N'1800 сек.', N'1650 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (22, N'Лечебное покрытие ногтей', N'Услуги салона красоты\ногти.png', N'1800 сек.', N'1220 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (23, N'Реконструкция и лечение волос и кожи головы', N'Услуги салона красоты\face.png', N'3300 сек.', N'2360 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (24, N'Классический маникюр', N'Услуги салона красоты\Классический маникюр.png', N'3300 сек.', N'1680 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (25, N'Консультация врача', N'Услуги салона красоты\122454.png', N'1800 сек.', N'2120 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (26, N'Наращивание ресниц лисьего эффекта', N'Услуги салона красоты\Ресницы.png', N'1800 сек.', N'1370 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (27, N'Экспресс-педикюр', N'Услуги салона красоты\Экспресс-педикюр.jpg', N'1200 сек.', N'2170 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (28, N'Гречишный массаж', N'Услуги салона красоты\Гречишный массаж.jpg', N'2400 сек.', N'1520 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (29, N'Комбинированный маникюр', N'Услуги салона красоты\Комбинированный маникюр.jpg', N'3600 сек.', N'2390 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (30, N'Фонофорез лица', N'Услуги салона красоты\face.png', N'1200 сек.', N'1120 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (31, N'Перманентный макияж (татуаж)', N'Услуги салона красоты\брови.png', N'2400 сек.', N'1270 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (32, N'Химический пилинг', N'Услуги салона красоты\piling.jpg', N'1500 сек.', N'1880 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (33, N'Плазмолифтинг', N'Услуги салона красоты\face.png', N'900 сек.', N'2450 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (34, N'Криолифтинг', N'Услуги салона красоты\face.png', N'900 сек.', N'1090 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (35, N'Гликолевый поверхностный базовый пилинг', N'Услуги салона красоты\piling.jpg', N'2100 сек.', N'2230 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (36, N'Окрашивание ресниц', N'Услуги салона красоты\Ресницы.png', N'2100 сек.', N'1100 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (37, N'Коррекция нарощенных ресниц', N'Услуги салона красоты\Ресницы.png', N'2700 сек', N'1310 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (38, N'Фракционное омоложение лазерной системой Palomar', N'Услуги салона красоты\face.png', N'2700 сек.', N'1140 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (39, N'Художественное оформление ресниц', N'Услуги салона красоты\Ресницы.png', N'3000 сек.', N'2040 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (40, N'Эстетическая лазерная шлифовка кожи', N'Услуги салона красоты\piling.jpg', N'2400 сек.', N'1750 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (41, N'Массаж ЖИВА', N'Услуги салона красоты\массаж.jpg', N'3300 сек.', N'2330 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (42, N'Макияж', N'Услуги салона красоты\makeup.jpg', N'1800 сек.', N'2470 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (43, N'Время вспять с коллагеном', N'Услуги салона красоты\96.png', N'2400 сек.', N'1850 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (44, N'Снятие ресниц', N'Услуги салона красоты\Снятие ресниц.jpg', N'2700 сек', N'1680 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (45, N'Оформление бровей', N'Услуги салона красоты\брови.png', N'2100 сек.', N'2280 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (46, N'Стрижка бороды машинкой', N'Услуги салона красоты\man.png', N'2700 сек.', N'1750 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (47, N'Маски для лица', N'Услуги салона красоты\mask.jpeg', N'1200 сек.', N'2250 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (48, N'Татуаж', N'Услуги салона красоты\брови.png', N'3600 сек.', N'1330 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (49, N'Уход для проблемной и комбинированной кожи', N'Услуги салона красоты\face.png', N'3600 сек', N'2440 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (50, N'Прокол ушей пистолетом', N'Услуги салона красоты\Прокол ушей пистолетом.png', N'1500 сек.', N'2040 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (51, N'Ремонт одного ногтя', N'Услуги салона красоты\ногти.png', N'1800 сек.', N'2340 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (52, N'Полировка с маслом', N'Услуги салона красоты\piling.jpg', N'1200 сек.', N'1280 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (53, N'Омоложение зоны вокруг глаз', N'Услуги салона красоты\брови.png', N'1800 сек.', N'2540 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (54, N'Аппаратная косметология', N'Услуги салона красоты\96.png', N'3300 сек.', N'1180 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (55, N'Консультация врача-косметолога', N'Услуги салона красоты\122454.png', N'3600 сек.', N'2350 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (56, N'Визаж', N'Услуги салона красоты\makeup.jpg', N'3000 сек.', N'1260 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (57, N'Демакияж', N'Услуги салона красоты\Демакияж.jpg', N'1200 сек.', N'1470 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (58, N'Коррекция ресниц', N'Услуги салона красоты\Ресницы.png', N'1200 сек.', N'2010 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (59, N'Детская стрижка', N'Услуги салона красоты\стрижка.png', N'2100 сек.', N'2330 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (60, N'Мужская стрижка', N'Услуги салона красоты\man.png', N'3000 сек.', N'1690 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (61, N'Вечерняя прическа', N'Услуги салона красоты\стрижка.png', N'900 сек.', N'2020 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (62, N'Наращивание ресниц беличьего эффекта', N'Услуги салона красоты\Ресницы.png', N'1800 сек.', N'1010 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (63, N'Мезонити (Тредлифтинг)', N'Услуги салона красоты\96.png', N'1500 сек.', N'2140 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (64, N'Покрытие ногтей', N'Услуги салона красоты\ногти.png', N'2400 сек.', N'2410 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (65, N'Гавайский массаж Ломи-Ломи', N'Услуги салона красоты\массаж.jpg', N'2100 сек.', N'1040 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (66, N'Парафинотерапия', N'Услуги салона красоты\Парафинотерапия.jpg', N'2100 сек.', N'1180 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (67, N'Озонотерапия', N'Услуги салона красоты\face.png', N'2100 сек.', N'1740 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (68, N'Миндальный пилинг', N'Услуги салона красоты\piling.jpg', N'2700 сек.', N'2430 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (69, N'Покрытие ногтей гель-лаком', N'Услуги салона красоты\Покрытие ногтей гель-лаком.jpg', N'900 сек.', N'2100 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (70, N'Декорирование ресниц стразами', N'Услуги салона красоты\Ресницы.png', N'900 сек.', N'1920 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (71, N'Микротоковая терапия', N'Услуги салона красоты\face.png', N'2700 сек.', N'2410 руб.', N'5%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (72, N'Стрижка челки', N'Услуги салона красоты\стрижка.png', N'2100 сек.', N'1930 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (73, N'Лазерный пилинг', N'Услуги салона красоты\piling.jpg', N'1200 сек.', N'1650 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (74, N'Массаж лица', N'Услуги салона красоты\массаж.jpg', N'3600 сек.', N'2370 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (75, N'Снятие лака', N'Услуги салона красоты\ногти.png', N'2100 сек.', N'1240 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (76, N'Классический педикюр', N'Услуги салона красоты\Экспресс-педикюр.jpg', N'2100 сек.', N'2040 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (77, N'Классический массаж', N'Услуги салона красоты\массаж.jpg', N'2700 сек.', N'1120 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (78, N'Окрашивание бровей', N'Услуги салона красоты\Окрашивание бровей.jpg', N'3600 сек.', N'1120 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (79, N'Наращивание ногтей гелем', N'Услуги салона красоты\ногти.png', N'2400 сек.', N'1540 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (80, N'Ботокс', N'Услуги салона красоты\96.png', N'3000 сек.', N'1820 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (81, N'Инъекционные методики', N'Услуги салона красоты\96.png', N'2400 сек.', N'1660 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (82, N'Покраска ресниц', N'Услуги салона красоты\Ресницы.png', N'1800 сек.', N'2400 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (83, N'Свадебная прическа', N'Услуги салона красоты\стрижка.png', N'2700 сек.', N'2070 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (84, N'Моделирование ресниц', N'Услуги салона красоты\Моделирование ресниц.jpg', N'2700 сек.', N'2140 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (85, N'Миостимуляция', N'Услуги салона красоты\face.png', N'3600 сек.', N'2380 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (86, N'Шугаринг', N'Услуги салона красоты\Шугаринг.jpg', N'1800 сек.', N'1400 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (87, N'Укрепление ногтей гелем', N'Услуги салона красоты\Укрепление ногтей гелем.jpg', N'2700 сек.', N'1260 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (88, N'Солярий', N'Услуги салона красоты\soliarij.jpg', N'3000 сек.', N'1790 руб.', N'10%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (89, N'Моментальный лифтинг', N'Услуги салона красоты\face.png', N'3000 сек.', N'2020 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (90, N'Детский маникюр', N'Услуги салона красоты\ногти.png', N'2100 сек', N'1900 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (91, N'Ультразвуковой пилинг', N'Услуги салона красоты\piling.jpg', N'2700 сек.', N'1440 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (92, N'ИК-сауна', N'Услуги салона красоты\ИК-сауна.jpg', N'2700 сек.', N'1160 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (93, N'Контурная пластика', N'Услуги салона красоты\Контурная пластика.jpg', N'2100 сек.', N'1550 руб.', N'20%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (94, N'Декорирование нарощенных ресниц стразами', N'Услуги салона красоты\Декорирование нарощенных ресниц стразами.jpg', N'2700 сек.', N'1130 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (95, N'Депиляция воском', N'Услуги салона красоты\Депиляция воском.jpg', N'1800 сек.', N'2330 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (96, N'Полировка ногтей', N'Услуги салона красоты\Полировка ногтей.jpg', N'3000 сек.', N'2310 руб.', N'15%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (97, N'Фракционный лазер Palomar Emerge', N'Услуги салона красоты\face.png', N'1500 сек. ', N'1720 руб.', N'25%')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (98, N'Увлажнение с коллагеном', N'Услуги салона красоты\96.png', N'3300 сек.', N'2490 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (99, N'Массаж оздоровительный', N'Услуги салона красоты\массаж.jpg', N'1200 сек.', N'1440 руб.', N'нет')
INSERT [dbo].[service_b_import1] ([ID], [Наименование_услуги], [Главное_изображение], [Длительность], [Стоимость], [Действующая_скидка]) VALUES (100, N'Общий массаж', N'Услуги салона красоты\массаж.jpg', N'2100.сек', N'1970 руб.', N'25%')
GO
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Оформление бровей', CAST(N'2019-04-27T13:50:00.000' AS DateTime), N'Орлова', 326, 456)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Массаж ЖИВА', CAST(N'2019-05-31T08:20:00.000' AS DateTime), N'Суворова', 349, 452)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Детская стрижка', CAST(N'2019-09-20T17:30:00.000' AS DateTime), N'Трофимова', 291, 470)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-10-17T17:50:00.000' AS DateTime), N'Афанасьева', 339, 486)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-12T16:30:00.000' AS DateTime), N'Горбачёва', 250, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-09-06T12:40:00.000' AS DateTime), N'Сысоева', 245, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-09-28T18:40:00.000' AS DateTime), N'Архипова', 329, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-09-11T13:10:00.000' AS DateTime), N'Баранова', 298, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-21T11:40:00.000' AS DateTime), N'Крюкова', 257, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-12-20T13:30:00.000' AS DateTime), N'Колесникова', 241, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-03-19T12:30:00.000' AS DateTime), N'Баранова', 298, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-12-23T17:00:00.000' AS DateTime), N'Трофимова', 291, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-01-17T16:00:00.000' AS DateTime), N'Афанасьева', 339, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц', CAST(N'2019-12-18T16:30:00.000' AS DateTime), N'Сидорова', 369, 412)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-01-22T14:40:00.000' AS DateTime), N'Гусева', 273, 486)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Удаление доброкачественных образований кожи', CAST(N'2019-09-07T18:10:00.000' AS DateTime), N'Архипова', 329, 423)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-01-01T08:50:00.000' AS DateTime), N'Афанасьева', 339, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-06-24T16:40:00.000' AS DateTime), N'Анисимова', 327, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-04-28T08:30:00.000' AS DateTime), N'Кузьмина', 233, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-13T15:40:00.000' AS DateTime), N'Колесникова', 241, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-12-25T08:00:00.000' AS DateTime), N'Ершова', 371, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-10-07T14:00:00.000' AS DateTime), N'Сидорова', 369, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-05-22T15:50:00.000' AS DateTime), N'Дмитриева', 388, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-10-05T13:30:00.000' AS DateTime), N'Лазарева', 336, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Укрепление ногтей гелем', CAST(N'2019-01-27T08:10:00.000' AS DateTime), N'Артемьева', 306, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-11-15T17:30:00.000' AS DateTime), N'Анисимова', 327, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-06T16:40:00.000' AS DateTime), N'Баранова', 298, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-02-13T09:00:00.000' AS DateTime), N'Колесникова', 241, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покрытие ногтей', CAST(N'2019-05-20T14:40:00.000' AS DateTime), N'Андреева', 272, 475)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Мезотерапия', CAST(N'2019-01-19T13:50:00.000' AS DateTime), N'Алексеева', 346, 416)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T08:50:00.000' AS DateTime), N'Быкова', 324, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Детская стрижка', CAST(N'2019-03-21T11:50:00.000' AS DateTime), N'Кузьмина', 233, 470)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Депиляция воском', CAST(N'2019-08-04T12:30:00.000' AS DateTime), N'Орлова', 326, 506)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Классический маникюр', CAST(N'2019-01-11T19:10:00.000' AS DateTime), N'Степанова', 238, 435)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-05-26T08:20:00.000' AS DateTime), N'Сысоева', 245, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-05-04T16:00:00.000' AS DateTime), N'Кузьмина', 233, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Европейский маникюр', CAST(N'2019-07-23T13:30:00.000' AS DateTime), N'Федотова', 311, 422)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Стрижка челки', CAST(N'2019-01-04T18:40:00.000' AS DateTime), N'Афанасьева', 339, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-10-12T19:10:00.000' AS DateTime), N'Мамонтова', 236, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-10-24T15:00:00.000' AS DateTime), N'Колесникова', 241, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Лечебное покрытие ногтей', CAST(N'2019-05-29T14:00:00.000' AS DateTime), N'Афанасьева', 339, 433)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-09-20T11:20:00.000' AS DateTime), N'Кузьмина', 233, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-05-07T15:10:00.000' AS DateTime), N'Мамонтова', 236, 492)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Декорирование ресниц стразами', CAST(N'2019-09-11T14:40:00.000' AS DateTime), N'Артемьева', 306, 505)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка ногтей', CAST(N'2019-11-26T11:30:00.000' AS DateTime), N'Корнилова', 360, 481)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-03-28T09:20:00.000' AS DateTime), N'Мамонтова', 236, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-01-17T18:00:00.000' AS DateTime), N'Степанова', 238, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-01-28T15:20:00.000' AS DateTime), N'Дмитриева', 388, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-22T16:10:00.000' AS DateTime), N'Турова', 288, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Спортивный массаж', CAST(N'2019-12-15T10:10:00.000' AS DateTime), N'Мишина', 378, 423)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Массаж ЖИВА', CAST(N'2019-06-07T12:40:00.000' AS DateTime), N'Корнилова', 360, 452)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка ногтей', CAST(N'2019-09-14T16:20:00.000' AS DateTime), N'Турова', 288, 507)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-11-04T12:30:00.000' AS DateTime), N'Костина', 260, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Ультразвуковой пилинг', CAST(N'2019-02-26T15:40:00.000' AS DateTime), N'Ефимова', 362, 502)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-09-13T11:50:00.000' AS DateTime), N'Гущина', 348, 439)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-11-22T10:40:00.000' AS DateTime), N'Попова', 269, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-12-09T09:00:00.000' AS DateTime), N'Суворова', 349, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Мезотерапия', CAST(N'2019-10-31T08:40:00.000' AS DateTime), N'Дмитриева', 388, 416)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-08-31T11:40:00.000' AS DateTime), N'Горбачёва', 250, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-06-24T17:40:00.000' AS DateTime), N'Алексеева', 346, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-11-29T14:00:00.000' AS DateTime), N'Устинова', 324, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-08-25T19:50:00.000' AS DateTime), N'Овчинникова', 376, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-11-13T11:00:00.000' AS DateTime), N'Артемьева', 306, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-30T11:20:00.000' AS DateTime), N'Суворова', 349, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-05-25T19:00:00.000' AS DateTime), N'Ершова', 371, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-26T19:30:00.000' AS DateTime), N'Быкова', 324, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-11-06T11:20:00.000' AS DateTime), N'Колобова', 382, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-04-29T16:10:00.000' AS DateTime), N'Колесникова', 241, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Оформление бровей', CAST(N'2019-10-21T19:10:00.000' AS DateTime), N'Овчинникова', 376, 456)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-06-23T09:40:00.000' AS DateTime), N'Андреева', 272, 425)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Химический пилинг', CAST(N'2019-11-09T11:40:00.000' AS DateTime), N'Ермакова', 317, 443)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Макияж', CAST(N'2019-10-02T19:10:00.000' AS DateTime), N'Ефимова', 362, 453)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T19:40:00.000' AS DateTime), N'Трофимова', 291, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-01-17T11:00:00.000' AS DateTime), N'Гущина', 348, 439)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Депиляция воском', CAST(N'2019-01-11T16:40:00.000' AS DateTime), N'Дмитриева', 388, 506)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-11-13T09:00:00.000' AS DateTime), N'Суворова', 349, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-10-10T08:10:00.000' AS DateTime), N'Устинова', 324, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-03-01T16:00:00.000' AS DateTime), N'Сысоева', 245, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Стрижка с покраской', CAST(N'2019-07-21T14:30:00.000' AS DateTime), N'Быкова', 324, 426)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-12-21T13:40:00.000' AS DateTime), N'Горшкова', 354, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-10-01T12:20:00.000' AS DateTime), N'Корнилова', 360, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-08-19T17:10:00.000' AS DateTime), N'Мишина', 378, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-03-01T15:00:00.000' AS DateTime), N'Костина', 260, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-11T14:50:00.000' AS DateTime), N'Горшкова', 354, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-12-21T19:00:00.000' AS DateTime), N'Колесникова', 241, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покрытие ногтей', CAST(N'2019-01-30T10:50:00.000' AS DateTime), N'Быкова', 324, 475)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Гавайский массаж Ломи-Ломи', CAST(N'2019-03-09T16:30:00.000' AS DateTime), N'Воронова', 308, 476)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-08-08T18:20:00.000' AS DateTime), N'Артемьева', 306, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-03-04T14:20:00.000' AS DateTime), N'Суворова', 349, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-06-17T10:20:00.000' AS DateTime), N'Ефимова', 362, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка с маслом', CAST(N'2019-02-11T09:10:00.000' AS DateTime), N'Андреева', 272, 463)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-02-01T12:20:00.000' AS DateTime), N'Ефимова', 362, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-12-11T09:50:00.000' AS DateTime), N'Овчинникова', 376, 429)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-01-13T18:10:00.000' AS DateTime), N'Шашкова', 321, 429)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-03-23T08:30:00.000' AS DateTime), N'Гусева', 273, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-10-02T14:10:00.000' AS DateTime), N'Костина', 260, 425)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-01-20T09:20:00.000' AS DateTime), N'Анисимова', 327, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-01-27T12:50:00.000' AS DateTime), N'Попова', 269, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Татуаж', CAST(N'2019-05-19T08:00:00.000' AS DateTime), N'Овчинникова', 376, 459)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-11-30T19:10:00.000' AS DateTime), N'Бирюкова', 314, 486)
GO
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Оформление бровей', CAST(N'2019-04-27T13:50:00.000' AS DateTime), N'Орлова', 326, 456)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Массаж ЖИВА', CAST(N'2019-05-31T08:20:00.000' AS DateTime), N'Суворова', 349, 452)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Детская стрижка', CAST(N'2019-09-20T17:30:00.000' AS DateTime), N'Трофимова', 291, 470)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-10-17T17:50:00.000' AS DateTime), N'Афанасьева', 339, 486)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-12T16:30:00.000' AS DateTime), N'Горбачёва', 250, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-09-06T12:40:00.000' AS DateTime), N'Сысоева', 245, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-09-28T18:40:00.000' AS DateTime), N'Архипова', 329, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-09-11T13:10:00.000' AS DateTime), N'Баранова', 298, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-21T11:40:00.000' AS DateTime), N'Крюкова', 257, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-12-20T13:30:00.000' AS DateTime), N'Колесникова', 241, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-03-19T12:30:00.000' AS DateTime), N'Баранова', 298, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-12-23T17:00:00.000' AS DateTime), N'Трофимова', 291, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-01-17T16:00:00.000' AS DateTime), N'Афанасьева', 339, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц', CAST(N'2019-12-18T16:30:00.000' AS DateTime), N'Сидорова', 369, 412)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-01-22T14:40:00.000' AS DateTime), N'Гусева', 273, 486)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Удаление доброкачественных образований кожи', CAST(N'2019-09-07T18:10:00.000' AS DateTime), N'Архипова', 329, 423)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-01-01T08:50:00.000' AS DateTime), N'Афанасьева', 339, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-06-24T16:40:00.000' AS DateTime), N'Анисимова', 327, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-04-28T08:30:00.000' AS DateTime), N'Кузьмина', 233, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-13T15:40:00.000' AS DateTime), N'Колесникова', 241, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-12-25T08:00:00.000' AS DateTime), N'Ершова', 371, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-10-07T14:00:00.000' AS DateTime), N'Сидорова', 369, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-05-22T15:50:00.000' AS DateTime), N'Дмитриева', 388, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-10-05T13:30:00.000' AS DateTime), N'Лазарева', 336, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Укрепление ногтей гелем', CAST(N'2019-01-27T08:10:00.000' AS DateTime), N'Артемьева', 306, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-11-15T17:30:00.000' AS DateTime), N'Анисимова', 327, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-06T16:40:00.000' AS DateTime), N'Баранова', 298, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-02-13T09:00:00.000' AS DateTime), N'Колесникова', 241, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покрытие ногтей', CAST(N'2019-05-20T14:40:00.000' AS DateTime), N'Андреева', 272, 475)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Мезотерапия', CAST(N'2019-01-19T13:50:00.000' AS DateTime), N'Алексеева', 346, 416)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T08:50:00.000' AS DateTime), N'Быкова', 324, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Детская стрижка', CAST(N'2019-03-21T11:50:00.000' AS DateTime), N'Кузьмина', 233, 470)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Депиляция воском', CAST(N'2019-08-04T12:30:00.000' AS DateTime), N'Орлова', 326, 506)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Классический маникюр', CAST(N'2019-01-11T19:10:00.000' AS DateTime), N'Степанова', 238, 435)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-05-26T08:20:00.000' AS DateTime), N'Сысоева', 245, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-05-04T16:00:00.000' AS DateTime), N'Кузьмина', 233, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Европейский маникюр', CAST(N'2019-07-23T13:30:00.000' AS DateTime), N'Федотова', 311, 422)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Стрижка челки', CAST(N'2019-01-04T18:40:00.000' AS DateTime), N'Афанасьева', 339, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-10-12T19:10:00.000' AS DateTime), N'Мамонтова', 236, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-10-24T15:00:00.000' AS DateTime), N'Колесникова', 241, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Лечебное покрытие ногтей', CAST(N'2019-05-29T14:00:00.000' AS DateTime), N'Афанасьева', 339, 433)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-09-20T11:20:00.000' AS DateTime), N'Кузьмина', 233, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-05-07T15:10:00.000' AS DateTime), N'Мамонтова', 236, 492)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Декорирование ресниц стразами', CAST(N'2019-09-11T14:40:00.000' AS DateTime), N'Артемьева', 306, 505)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка ногтей', CAST(N'2019-11-26T11:30:00.000' AS DateTime), N'Корнилова', 360, 481)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-03-28T09:20:00.000' AS DateTime), N'Мамонтова', 236, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-01-17T18:00:00.000' AS DateTime), N'Степанова', 238, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-01-28T15:20:00.000' AS DateTime), N'Дмитриева', 388, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-22T16:10:00.000' AS DateTime), N'Турова', 288, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Спортивный массаж', CAST(N'2019-12-15T10:10:00.000' AS DateTime), N'Мишина', 378, 423)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Массаж ЖИВА', CAST(N'2019-06-07T12:40:00.000' AS DateTime), N'Корнилова', 360, 452)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка ногтей', CAST(N'2019-09-14T16:20:00.000' AS DateTime), N'Турова', 288, 507)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-11-04T12:30:00.000' AS DateTime), N'Костина', 260, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Ультразвуковой пилинг', CAST(N'2019-02-26T15:40:00.000' AS DateTime), N'Ефимова', 362, 502)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-09-13T11:50:00.000' AS DateTime), N'Гущина', 348, 439)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-11-22T10:40:00.000' AS DateTime), N'Попова', 269, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-12-09T09:00:00.000' AS DateTime), N'Суворова', 349, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Мезотерапия', CAST(N'2019-10-31T08:40:00.000' AS DateTime), N'Дмитриева', 388, 416)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-08-31T11:40:00.000' AS DateTime), N'Горбачёва', 250, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-06-24T17:40:00.000' AS DateTime), N'Алексеева', 346, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-11-29T14:00:00.000' AS DateTime), N'Устинова', 324, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-08-25T19:50:00.000' AS DateTime), N'Овчинникова', 376, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-11-13T11:00:00.000' AS DateTime), N'Артемьева', 306, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-30T11:20:00.000' AS DateTime), N'Суворова', 349, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-05-25T19:00:00.000' AS DateTime), N'Ершова', 371, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-26T19:30:00.000' AS DateTime), N'Быкова', 324, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-11-06T11:20:00.000' AS DateTime), N'Колобова', 382, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-04-29T16:10:00.000' AS DateTime), N'Колесникова', 241, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Оформление бровей', CAST(N'2019-10-21T19:10:00.000' AS DateTime), N'Овчинникова', 376, 456)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-06-23T09:40:00.000' AS DateTime), N'Андреева', 272, 425)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Химический пилинг', CAST(N'2019-11-09T11:40:00.000' AS DateTime), N'Ермакова', 317, 443)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Макияж', CAST(N'2019-10-02T19:10:00.000' AS DateTime), N'Ефимова', 362, 453)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T19:40:00.000' AS DateTime), N'Трофимова', 291, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-01-17T11:00:00.000' AS DateTime), N'Гущина', 348, 439)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Депиляция воском', CAST(N'2019-01-11T16:40:00.000' AS DateTime), N'Дмитриева', 388, 506)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-11-13T09:00:00.000' AS DateTime), N'Суворова', 349, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-10-10T08:10:00.000' AS DateTime), N'Устинова', 324, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-03-01T16:00:00.000' AS DateTime), N'Сысоева', 245, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Стрижка с покраской', CAST(N'2019-07-21T14:30:00.000' AS DateTime), N'Быкова', 324, 426)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-12-21T13:40:00.000' AS DateTime), N'Горшкова', 354, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-10-01T12:20:00.000' AS DateTime), N'Корнилова', 360, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-08-19T17:10:00.000' AS DateTime), N'Мишина', 378, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-03-01T15:00:00.000' AS DateTime), N'Костина', 260, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-11T14:50:00.000' AS DateTime), N'Горшкова', 354, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-12-21T19:00:00.000' AS DateTime), N'Колесникова', 241, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покрытие ногтей', CAST(N'2019-01-30T10:50:00.000' AS DateTime), N'Быкова', 324, 475)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Гавайский массаж Ломи-Ломи', CAST(N'2019-03-09T16:30:00.000' AS DateTime), N'Воронова', 308, 476)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-08-08T18:20:00.000' AS DateTime), N'Артемьева', 306, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-03-04T14:20:00.000' AS DateTime), N'Суворова', 349, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-06-17T10:20:00.000' AS DateTime), N'Ефимова', 362, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка с маслом', CAST(N'2019-02-11T09:10:00.000' AS DateTime), N'Андреева', 272, 463)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-02-01T12:20:00.000' AS DateTime), N'Ефимова', 362, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-12-11T09:50:00.000' AS DateTime), N'Овчинникова', 376, 429)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-01-13T18:10:00.000' AS DateTime), N'Шашкова', 321, 429)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-03-23T08:30:00.000' AS DateTime), N'Гусева', 273, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-10-02T14:10:00.000' AS DateTime), N'Костина', 260, 425)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-01-20T09:20:00.000' AS DateTime), N'Анисимова', 327, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-01-27T12:50:00.000' AS DateTime), N'Попова', 269, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Татуаж', CAST(N'2019-05-19T08:00:00.000' AS DateTime), N'Овчинникова', 376, 459)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-11-30T19:10:00.000' AS DateTime), N'Бирюкова', 314, 486)
GO
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Оформление бровей', CAST(N'2019-04-27T13:50:00.000' AS DateTime), N'Орлова', 326, 456)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Массаж ЖИВА', CAST(N'2019-05-31T08:20:00.000' AS DateTime), N'Суворова', 349, 452)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Детская стрижка', CAST(N'2019-09-20T17:30:00.000' AS DateTime), N'Трофимова', 291, 470)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-10-17T17:50:00.000' AS DateTime), N'Афанасьева', 339, 486)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-12T16:30:00.000' AS DateTime), N'Горбачёва', 250, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-09-06T12:40:00.000' AS DateTime), N'Сысоева', 245, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-09-28T18:40:00.000' AS DateTime), N'Архипова', 329, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-09-11T13:10:00.000' AS DateTime), N'Баранова', 298, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-21T11:40:00.000' AS DateTime), N'Крюкова', 257, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-12-20T13:30:00.000' AS DateTime), N'Колесникова', 241, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-03-19T12:30:00.000' AS DateTime), N'Баранова', 298, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-12-23T17:00:00.000' AS DateTime), N'Трофимова', 291, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-01-17T16:00:00.000' AS DateTime), N'Афанасьева', 339, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц', CAST(N'2019-12-18T16:30:00.000' AS DateTime), N'Сидорова', 369, 412)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-01-22T14:40:00.000' AS DateTime), N'Гусева', 273, 486)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Удаление доброкачественных образований кожи', CAST(N'2019-09-07T18:10:00.000' AS DateTime), N'Архипова', 329, 423)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-01-01T08:50:00.000' AS DateTime), N'Афанасьева', 339, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-06-24T16:40:00.000' AS DateTime), N'Анисимова', 327, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-04-28T08:30:00.000' AS DateTime), N'Кузьмина', 233, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-13T15:40:00.000' AS DateTime), N'Колесникова', 241, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-12-25T08:00:00.000' AS DateTime), N'Ершова', 371, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-10-07T14:00:00.000' AS DateTime), N'Сидорова', 369, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-05-22T15:50:00.000' AS DateTime), N'Дмитриева', 388, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-10-05T13:30:00.000' AS DateTime), N'Лазарева', 336, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Укрепление ногтей гелем', CAST(N'2019-01-27T08:10:00.000' AS DateTime), N'Артемьева', 306, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-11-15T17:30:00.000' AS DateTime), N'Анисимова', 327, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-06T16:40:00.000' AS DateTime), N'Баранова', 298, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-02-13T09:00:00.000' AS DateTime), N'Колесникова', 241, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покрытие ногтей', CAST(N'2019-05-20T14:40:00.000' AS DateTime), N'Андреева', 272, 475)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Мезотерапия', CAST(N'2019-01-19T13:50:00.000' AS DateTime), N'Алексеева', 346, 416)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T08:50:00.000' AS DateTime), N'Быкова', 324, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Детская стрижка', CAST(N'2019-03-21T11:50:00.000' AS DateTime), N'Кузьмина', 233, 470)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Депиляция воском', CAST(N'2019-08-04T12:30:00.000' AS DateTime), N'Орлова', 326, 506)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Классический маникюр', CAST(N'2019-01-11T19:10:00.000' AS DateTime), N'Степанова', 238, 435)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-05-26T08:20:00.000' AS DateTime), N'Сысоева', 245, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-05-04T16:00:00.000' AS DateTime), N'Кузьмина', 233, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Европейский маникюр', CAST(N'2019-07-23T13:30:00.000' AS DateTime), N'Федотова', 311, 422)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Стрижка челки', CAST(N'2019-01-04T18:40:00.000' AS DateTime), N'Афанасьева', 339, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-10-12T19:10:00.000' AS DateTime), N'Мамонтова', 236, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-10-24T15:00:00.000' AS DateTime), N'Колесникова', 241, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Лечебное покрытие ногтей', CAST(N'2019-05-29T14:00:00.000' AS DateTime), N'Афанасьева', 339, 433)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-09-20T11:20:00.000' AS DateTime), N'Кузьмина', 233, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-05-07T15:10:00.000' AS DateTime), N'Мамонтова', 236, 492)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Декорирование ресниц стразами', CAST(N'2019-09-11T14:40:00.000' AS DateTime), N'Артемьева', 306, 505)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка ногтей', CAST(N'2019-11-26T11:30:00.000' AS DateTime), N'Корнилова', 360, 481)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-03-28T09:20:00.000' AS DateTime), N'Мамонтова', 236, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-01-17T18:00:00.000' AS DateTime), N'Степанова', 238, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-01-28T15:20:00.000' AS DateTime), N'Дмитриева', 388, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-22T16:10:00.000' AS DateTime), N'Турова', 288, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Спортивный массаж', CAST(N'2019-12-15T10:10:00.000' AS DateTime), N'Мишина', 378, 423)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Массаж ЖИВА', CAST(N'2019-06-07T12:40:00.000' AS DateTime), N'Корнилова', 360, 452)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка ногтей', CAST(N'2019-09-14T16:20:00.000' AS DateTime), N'Турова', 288, 507)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-11-04T12:30:00.000' AS DateTime), N'Костина', 260, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Ультразвуковой пилинг', CAST(N'2019-02-26T15:40:00.000' AS DateTime), N'Ефимова', 362, 502)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-09-13T11:50:00.000' AS DateTime), N'Гущина', 348, 439)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-11-22T10:40:00.000' AS DateTime), N'Попова', 269, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-12-09T09:00:00.000' AS DateTime), N'Суворова', 349, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Мезотерапия', CAST(N'2019-10-31T08:40:00.000' AS DateTime), N'Дмитриева', 388, 416)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-08-31T11:40:00.000' AS DateTime), N'Горбачёва', 250, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-06-24T17:40:00.000' AS DateTime), N'Алексеева', 346, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-11-29T14:00:00.000' AS DateTime), N'Устинова', 324, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-08-25T19:50:00.000' AS DateTime), N'Овчинникова', 376, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-11-13T11:00:00.000' AS DateTime), N'Артемьева', 306, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-30T11:20:00.000' AS DateTime), N'Суворова', 349, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-05-25T19:00:00.000' AS DateTime), N'Ершова', 371, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-26T19:30:00.000' AS DateTime), N'Быкова', 324, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-11-06T11:20:00.000' AS DateTime), N'Колобова', 382, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-04-29T16:10:00.000' AS DateTime), N'Колесникова', 241, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Оформление бровей', CAST(N'2019-10-21T19:10:00.000' AS DateTime), N'Овчинникова', 376, 456)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-06-23T09:40:00.000' AS DateTime), N'Андреева', 272, 425)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Химический пилинг', CAST(N'2019-11-09T11:40:00.000' AS DateTime), N'Ермакова', 317, 443)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Макияж', CAST(N'2019-10-02T19:10:00.000' AS DateTime), N'Ефимова', 362, 453)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T19:40:00.000' AS DateTime), N'Трофимова', 291, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-01-17T11:00:00.000' AS DateTime), N'Гущина', 348, 439)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Депиляция воском', CAST(N'2019-01-11T16:40:00.000' AS DateTime), N'Дмитриева', 388, 506)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-11-13T09:00:00.000' AS DateTime), N'Суворова', 349, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-10-10T08:10:00.000' AS DateTime), N'Устинова', 324, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-03-01T16:00:00.000' AS DateTime), N'Сысоева', 245, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Стрижка с покраской', CAST(N'2019-07-21T14:30:00.000' AS DateTime), N'Быкова', 324, 426)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-12-21T13:40:00.000' AS DateTime), N'Горшкова', 354, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-10-01T12:20:00.000' AS DateTime), N'Корнилова', 360, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-08-19T17:10:00.000' AS DateTime), N'Мишина', 378, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-03-01T15:00:00.000' AS DateTime), N'Костина', 260, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-11T14:50:00.000' AS DateTime), N'Горшкова', 354, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-12-21T19:00:00.000' AS DateTime), N'Колесникова', 241, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покрытие ногтей', CAST(N'2019-01-30T10:50:00.000' AS DateTime), N'Быкова', 324, 475)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Гавайский массаж Ломи-Ломи', CAST(N'2019-03-09T16:30:00.000' AS DateTime), N'Воронова', 308, 476)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-08-08T18:20:00.000' AS DateTime), N'Артемьева', 306, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-03-04T14:20:00.000' AS DateTime), N'Суворова', 349, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-06-17T10:20:00.000' AS DateTime), N'Ефимова', 362, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка с маслом', CAST(N'2019-02-11T09:10:00.000' AS DateTime), N'Андреева', 272, 463)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-02-01T12:20:00.000' AS DateTime), N'Ефимова', 362, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-12-11T09:50:00.000' AS DateTime), N'Овчинникова', 376, 429)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-01-13T18:10:00.000' AS DateTime), N'Шашкова', 321, 429)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-03-23T08:30:00.000' AS DateTime), N'Гусева', 273, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-10-02T14:10:00.000' AS DateTime), N'Костина', 260, 425)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-01-20T09:20:00.000' AS DateTime), N'Анисимова', 327, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-01-27T12:50:00.000' AS DateTime), N'Попова', 269, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Татуаж', CAST(N'2019-05-19T08:00:00.000' AS DateTime), N'Овчинникова', 376, 459)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-11-30T19:10:00.000' AS DateTime), N'Бирюкова', 314, 486)
GO
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Оформление бровей', CAST(N'2019-04-27T13:50:00.000' AS DateTime), N'Орлова', 326, 456)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Массаж ЖИВА', CAST(N'2019-05-31T08:20:00.000' AS DateTime), N'Суворова', 349, 452)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Детская стрижка', CAST(N'2019-09-20T17:30:00.000' AS DateTime), N'Трофимова', 291, 470)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-10-17T17:50:00.000' AS DateTime), N'Афанасьева', 339, 486)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-12T16:30:00.000' AS DateTime), N'Горбачёва', 250, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-09-06T12:40:00.000' AS DateTime), N'Сысоева', 245, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-09-28T18:40:00.000' AS DateTime), N'Архипова', 329, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-09-11T13:10:00.000' AS DateTime), N'Баранова', 298, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-21T11:40:00.000' AS DateTime), N'Крюкова', 257, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-12-20T13:30:00.000' AS DateTime), N'Колесникова', 241, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-03-19T12:30:00.000' AS DateTime), N'Баранова', 298, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-12-23T17:00:00.000' AS DateTime), N'Трофимова', 291, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-01-17T16:00:00.000' AS DateTime), N'Афанасьева', 339, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц', CAST(N'2019-12-18T16:30:00.000' AS DateTime), N'Сидорова', 369, 412)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-01-22T14:40:00.000' AS DateTime), N'Гусева', 273, 486)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Удаление доброкачественных образований кожи', CAST(N'2019-09-07T18:10:00.000' AS DateTime), N'Архипова', 329, 423)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-01-01T08:50:00.000' AS DateTime), N'Афанасьева', 339, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-06-24T16:40:00.000' AS DateTime), N'Анисимова', 327, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-04-28T08:30:00.000' AS DateTime), N'Кузьмина', 233, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-13T15:40:00.000' AS DateTime), N'Колесникова', 241, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-12-25T08:00:00.000' AS DateTime), N'Ершова', 371, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-10-07T14:00:00.000' AS DateTime), N'Сидорова', 369, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-05-22T15:50:00.000' AS DateTime), N'Дмитриева', 388, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-10-05T13:30:00.000' AS DateTime), N'Лазарева', 336, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Укрепление ногтей гелем', CAST(N'2019-01-27T08:10:00.000' AS DateTime), N'Артемьева', 306, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-11-15T17:30:00.000' AS DateTime), N'Анисимова', 327, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-06T16:40:00.000' AS DateTime), N'Баранова', 298, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-02-13T09:00:00.000' AS DateTime), N'Колесникова', 241, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покрытие ногтей', CAST(N'2019-05-20T14:40:00.000' AS DateTime), N'Андреева', 272, 475)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Мезотерапия', CAST(N'2019-01-19T13:50:00.000' AS DateTime), N'Алексеева', 346, 416)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T08:50:00.000' AS DateTime), N'Быкова', 324, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Детская стрижка', CAST(N'2019-03-21T11:50:00.000' AS DateTime), N'Кузьмина', 233, 470)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Депиляция воском', CAST(N'2019-08-04T12:30:00.000' AS DateTime), N'Орлова', 326, 506)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Классический маникюр', CAST(N'2019-01-11T19:10:00.000' AS DateTime), N'Степанова', 238, 435)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-05-26T08:20:00.000' AS DateTime), N'Сысоева', 245, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-05-04T16:00:00.000' AS DateTime), N'Кузьмина', 233, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Европейский маникюр', CAST(N'2019-07-23T13:30:00.000' AS DateTime), N'Федотова', 311, 422)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Стрижка челки', CAST(N'2019-01-04T18:40:00.000' AS DateTime), N'Афанасьева', 339, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-10-12T19:10:00.000' AS DateTime), N'Мамонтова', 236, 450)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-10-24T15:00:00.000' AS DateTime), N'Колесникова', 241, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Лечебное покрытие ногтей', CAST(N'2019-05-29T14:00:00.000' AS DateTime), N'Афанасьева', 339, 433)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-09-20T11:20:00.000' AS DateTime), N'Кузьмина', 233, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-05-07T15:10:00.000' AS DateTime), N'Мамонтова', 236, 492)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Декорирование ресниц стразами', CAST(N'2019-09-11T14:40:00.000' AS DateTime), N'Артемьева', 306, 505)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка ногтей', CAST(N'2019-11-26T11:30:00.000' AS DateTime), N'Корнилова', 360, 481)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-03-28T09:20:00.000' AS DateTime), N'Мамонтова', 236, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Комбинированный маникюр', CAST(N'2019-01-17T18:00:00.000' AS DateTime), N'Степанова', 238, 440)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-01-28T15:20:00.000' AS DateTime), N'Дмитриева', 388, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-22T16:10:00.000' AS DateTime), N'Турова', 288, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Спортивный массаж', CAST(N'2019-12-15T10:10:00.000' AS DateTime), N'Мишина', 378, 423)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Массаж ЖИВА', CAST(N'2019-06-07T12:40:00.000' AS DateTime), N'Корнилова', 360, 452)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка ногтей', CAST(N'2019-09-14T16:20:00.000' AS DateTime), N'Турова', 288, 507)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-11-04T12:30:00.000' AS DateTime), N'Костина', 260, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Ультразвуковой пилинг', CAST(N'2019-02-26T15:40:00.000' AS DateTime), N'Ефимова', 362, 502)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-09-13T11:50:00.000' AS DateTime), N'Гущина', 348, 439)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Шугаринг', CAST(N'2019-11-22T10:40:00.000' AS DateTime), N'Попова', 269, 497)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-12-09T09:00:00.000' AS DateTime), N'Суворова', 349, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Мезотерапия', CAST(N'2019-10-31T08:40:00.000' AS DateTime), N'Дмитриева', 388, 416)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-08-31T11:40:00.000' AS DateTime), N'Горбачёва', 250, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-06-24T17:40:00.000' AS DateTime), N'Алексеева', 346, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-11-29T14:00:00.000' AS DateTime), N'Устинова', 324, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-08-25T19:50:00.000' AS DateTime), N'Овчинникова', 376, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-11-13T11:00:00.000' AS DateTime), N'Артемьева', 306, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-30T11:20:00.000' AS DateTime), N'Суворова', 349, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-05-25T19:00:00.000' AS DateTime), N'Ершова', 371, 437)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-26T19:30:00.000' AS DateTime), N'Быкова', 324, 466)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Прессотерапия', CAST(N'2019-11-06T11:20:00.000' AS DateTime), N'Колобова', 382, 421)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-04-29T16:10:00.000' AS DateTime), N'Колесникова', 241, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Оформление бровей', CAST(N'2019-10-21T19:10:00.000' AS DateTime), N'Овчинникова', 376, 456)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-06-23T09:40:00.000' AS DateTime), N'Андреева', 272, 425)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Химический пилинг', CAST(N'2019-11-09T11:40:00.000' AS DateTime), N'Ермакова', 317, 443)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Макияж', CAST(N'2019-10-02T19:10:00.000' AS DateTime), N'Ефимова', 362, 453)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T19:40:00.000' AS DateTime), N'Трофимова', 291, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-01-17T11:00:00.000' AS DateTime), N'Гущина', 348, 439)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Депиляция воском', CAST(N'2019-01-11T16:40:00.000' AS DateTime), N'Дмитриева', 388, 506)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Микротоковая терапия', CAST(N'2019-11-13T09:00:00.000' AS DateTime), N'Суворова', 349, 482)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Окрашивание бровей', CAST(N'2019-10-10T08:10:00.000' AS DateTime), N'Устинова', 324, 489)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-03-01T16:00:00.000' AS DateTime), N'Сысоева', 245, 451)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Стрижка с покраской', CAST(N'2019-07-21T14:30:00.000' AS DateTime), N'Быкова', 324, 426)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Фонофорез лица', CAST(N'2019-12-21T13:40:00.000' AS DateTime), N'Горшкова', 354, 441)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-10-01T12:20:00.000' AS DateTime), N'Корнилова', 360, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Озонотерапия', CAST(N'2019-08-19T17:10:00.000' AS DateTime), N'Мишина', 378, 478)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Моментальный лифтинг', CAST(N'2019-03-01T15:00:00.000' AS DateTime), N'Костина', 260, 500)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-11T14:50:00.000' AS DateTime), N'Горшкова', 354, 434)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-12-21T19:00:00.000' AS DateTime), N'Колесникова', 241, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покрытие ногтей', CAST(N'2019-01-30T10:50:00.000' AS DateTime), N'Быкова', 324, 475)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Гавайский массаж Ломи-Ломи', CAST(N'2019-03-09T16:30:00.000' AS DateTime), N'Воронова', 308, 476)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-08-08T18:20:00.000' AS DateTime), N'Артемьева', 306, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'ИК-сауна', CAST(N'2019-03-04T14:20:00.000' AS DateTime), N'Суворова', 349, 503)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-06-17T10:20:00.000' AS DateTime), N'Ефимова', 362, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Полировка с маслом', CAST(N'2019-02-11T09:10:00.000' AS DateTime), N'Андреева', 272, 463)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-02-01T12:20:00.000' AS DateTime), N'Ефимова', 362, 490)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-12-11T09:50:00.000' AS DateTime), N'Овчинникова', 376, 429)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Инъекционные методики', CAST(N'2019-01-13T18:10:00.000' AS DateTime), N'Шашкова', 321, 429)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-03-23T08:30:00.000' AS DateTime), N'Гусева', 273, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-10-02T14:10:00.000' AS DateTime), N'Костина', 260, 425)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Пирсинг', CAST(N'2019-01-20T09:20:00.000' AS DateTime), N'Анисимова', 327, 419)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Покраска ресниц', CAST(N'2019-01-27T12:50:00.000' AS DateTime), N'Попова', 269, 469)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Татуаж', CAST(N'2019-05-19T08:00:00.000' AS DateTime), N'Овчинникова', 376, 459)
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент], [Id client], [Id usluga]) VALUES (N'Снятие лака', CAST(N'2019-11-30T19:10:00.000' AS DateTime), N'Бирюкова', 314, 486)
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product] FOREIGN KEY([MainProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product]
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product1] FOREIGN KEY([AttachedProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
ALTER TABLE [dbo].[DocumentByService]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByService_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[DocumentByService] CHECK CONSTRAINT [FK_DocumentByService_ClientService]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPhoto] CHECK CONSTRAINT [FK_ProductPhoto_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ClientService]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD  CONSTRAINT [FK_ServicePhoto_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServicePhoto] CHECK CONSTRAINT [FK_ServicePhoto_Service]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Client]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Tag]
GO
USE [master]
GO
ALTER DATABASE [Uslugi_Salona_Crasoti] SET  READ_WRITE 
GO
