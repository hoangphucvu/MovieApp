USE [master]
GO
/****** Object:  Database [QLPHIM]    Script Date: 08/12/2015 6:53:00 CH ******/
CREATE DATABASE [QLPHIM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLPHIM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLPHIM.mdf' , SIZE = 13376KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLPHIM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLPHIM_log.ldf' , SIZE = 39936KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLPHIM] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLPHIM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLPHIM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLPHIM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLPHIM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLPHIM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLPHIM] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLPHIM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLPHIM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLPHIM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLPHIM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLPHIM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLPHIM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLPHIM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLPHIM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLPHIM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLPHIM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLPHIM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLPHIM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLPHIM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLPHIM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLPHIM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLPHIM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLPHIM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLPHIM] SET RECOVERY FULL 
GO
ALTER DATABASE [QLPHIM] SET  MULTI_USER 
GO
ALTER DATABASE [QLPHIM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLPHIM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLPHIM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLPHIM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLPHIM] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLPHIM', N'ON'
GO
USE [QLPHIM]
GO
/****** Object:  Table [dbo].[BAO_GOM]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAO_GOM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_LICH_CHIEU] [int] NOT NULL,
	[ID_PHIM] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CA_CHIEU]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CA_CHIEU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Gio_bat_dau] [int] NOT NULL,
	[Phut_bat_dau] [int] NOT NULL,
	[So_phut] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONG_TY]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONG_TY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NOT NULL,
	[Dien_thoai] [nvarchar](200) NOT NULL,
	[Dia_chi] [nvarchar](200) NOT NULL,
	[So_tuan_lap_lich] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GHE]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GHE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[x] [int] NOT NULL,
	[y] [int] NOT NULL,
	[ID_PHONG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LICH_CHIEU]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICH_CHIEU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ngay_bat_dau] [datetime] NOT NULL,
	[Ngay_ket_thuc] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOI_DUNG]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOI_DUNG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Mat_khau] [varchar](20) NOT NULL,
	[ID_NHOM_NGUOI_DUNG] [int] NOT NULL,
 CONSTRAINT [PK__NGUOI_DU__3214EC27F1644A3D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHOM_NGUOI_DUNG]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOM_NGUOI_DUNG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NOT NULL,
	[Ma_so] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIM]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NOT NULL,
	[Dao_dien] [nvarchar](30) NULL,
	[Dien_vien] [nvarchar](100) NULL,
	[The_loai] [nvarchar](30) NULL,
	[Phien_ban] [nvarchar](30) NULL,
	[Hang_phim] [nvarchar](50) NULL,
	[Nuoc_san_xuat] [nvarchar](30) NULL,
	[Do_dai] [int] NOT NULL CONSTRAINT [DF_PHIM_Do_dai]  DEFAULT ((0)),
	[Poster] [varchar](30) NULL,
	[Gioi_thieu] [nvarchar](max) NULL,
	[Trailer] [varchar](50) NULL,
	[PDF] [varchar](50) NULL,
 CONSTRAINT [PK__PHIM__3214EC2784BE5759] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUYEN_HAN]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN_HAN](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MA_NHOM] [int] NULL,
	[CHUC_NANG] [nvarchar](50) NULL,
	[QUYEN] [bit] NULL,
	[GHI_CHU] [nvarchar](100) NULL,
 CONSTRAINT [PK_user_rights] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VE]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Trang_thai] [bit] NOT NULL,
	[ID_XUAT_CHIEU] [int] NOT NULL,
	[ID_GHE] [int] NOT NULL,
	[Gia_tien] [decimal](18, 0) NULL,
	[ID_NGUOI_DUNG] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK__VE__3214EC27F6C1823D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XUAT_CHIEU]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUAT_CHIEU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [datetime] NOT NULL,
	[ID_LICH_CHIEU] [int] NOT NULL,
	[ID_CA_CHIEU] [int] NOT NULL,
	[ID_PHONG] [int] NOT NULL,
	[ID_PHIM] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BAO_GOM] ON 

INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (1, 1, 16)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (2, 1, 3)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (3, 1, 21)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (4, 1, 17)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (5, 2, 24)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (6, 2, 30)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (7, 3, 10)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (8, 3, 25)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (9, 3, 37)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (10, 4, 1)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (11, 4, 40)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (12, 4, 34)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (13, 4, 15)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (14, 5, 5)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (15, 5, 25)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (16, 6, 15)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (17, 6, 3)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (18, 6, 38)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (19, 6, 5)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (20, 7, 35)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (21, 7, 25)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (22, 7, 11)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (23, 7, 23)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (24, 8, 6)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (25, 8, 3)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (26, 8, 35)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (27, 8, 11)
INSERT [dbo].[BAO_GOM] ([ID], [ID_LICH_CHIEU], [ID_PHIM]) VALUES (28, 8, 8)
SET IDENTITY_INSERT [dbo].[BAO_GOM] OFF
SET IDENTITY_INSERT [dbo].[CA_CHIEU] ON 

INSERT [dbo].[CA_CHIEU] ([ID], [Gio_bat_dau], [Phut_bat_dau], [So_phut]) VALUES (1, 9, 40, 50)
INSERT [dbo].[CA_CHIEU] ([ID], [Gio_bat_dau], [Phut_bat_dau], [So_phut]) VALUES (2, 14, 30, 120)
INSERT [dbo].[CA_CHIEU] ([ID], [Gio_bat_dau], [Phut_bat_dau], [So_phut]) VALUES (3, 16, 30, 120)
INSERT [dbo].[CA_CHIEU] ([ID], [Gio_bat_dau], [Phut_bat_dau], [So_phut]) VALUES (4, 18, 30, 120)
INSERT [dbo].[CA_CHIEU] ([ID], [Gio_bat_dau], [Phut_bat_dau], [So_phut]) VALUES (5, 20, 30, 120)
SET IDENTITY_INSERT [dbo].[CA_CHIEU] OFF
SET IDENTITY_INSERT [dbo].[CONG_TY] ON 

INSERT [dbo].[CONG_TY] ([ID], [Ten], [Dien_thoai], [Dia_chi], [So_tuan_lap_lich]) VALUES (1, N'Công ty A', N'0910548424', N'5 F Phường 5- Quận 8- Tỉnh/Tp FF
', 3)
INSERT [dbo].[CONG_TY] ([ID], [Ten], [Dien_thoai], [Dia_chi], [So_tuan_lap_lich]) VALUES (5, N'cong ty b', N'123', N'aws', 1)
INSERT [dbo].[CONG_TY] ([ID], [Ten], [Dien_thoai], [Dia_chi], [So_tuan_lap_lich]) VALUES (6, N'ct c', N'1234', N'sss', 4)
INSERT [dbo].[CONG_TY] ([ID], [Ten], [Dien_thoai], [Dia_chi], [So_tuan_lap_lich]) VALUES (7, N'sad', N'123', N'adsz', 4)
INSERT [dbo].[CONG_TY] ([ID], [Ten], [Dien_thoai], [Dia_chi], [So_tuan_lap_lich]) VALUES (8, N'phuc', N'123', N'phuc', 6)
SET IDENTITY_INSERT [dbo].[CONG_TY] OFF
SET IDENTITY_INSERT [dbo].[GHE] ON 

INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (1, 0, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (2, 1, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (3, 2, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (4, 3, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (5, 4, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (6, 5, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (7, 6, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (8, 7, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (9, 8, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (10, 9, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (11, 10, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (12, 11, 0, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (13, 0, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (14, 1, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (15, 2, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (16, 3, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (17, 4, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (18, 5, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (19, 6, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (20, 7, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (21, 8, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (22, 9, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (23, 10, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (24, 11, 1, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (25, 0, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (26, 1, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (27, 2, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (28, 3, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (29, 4, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (30, 5, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (31, 6, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (32, 7, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (33, 8, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (34, 9, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (35, 10, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (36, 11, 2, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (37, 0, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (38, 1, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (39, 2, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (40, 3, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (41, 4, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (42, 5, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (43, 6, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (44, 7, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (45, 8, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (46, 9, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (47, 10, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (48, 11, 3, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (49, 0, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (50, 1, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (51, 2, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (52, 3, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (53, 4, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (54, 5, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (55, 6, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (56, 7, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (57, 8, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (58, 9, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (59, 10, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (60, 11, 4, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (61, 0, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (62, 1, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (63, 2, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (64, 3, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (65, 4, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (66, 5, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (67, 6, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (68, 7, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (69, 8, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (70, 9, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (71, 10, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (72, 11, 5, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (73, 0, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (74, 1, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (75, 2, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (76, 3, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (77, 4, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (78, 5, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (79, 6, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (80, 7, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (81, 8, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (82, 9, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (83, 10, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (84, 11, 6, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (85, 0, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (86, 1, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (87, 2, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (88, 3, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (89, 4, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (90, 5, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (91, 6, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (92, 7, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (93, 8, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (94, 9, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (95, 10, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (96, 11, 7, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (97, 0, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (98, 1, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (99, 2, 8, 1)
GO
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (100, 3, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (101, 4, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (102, 5, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (103, 6, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (104, 7, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (105, 8, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (106, 9, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (107, 10, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (108, 11, 8, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (109, 0, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (110, 1, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (111, 2, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (112, 3, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (113, 4, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (114, 5, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (115, 6, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (116, 7, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (117, 8, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (118, 9, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (119, 10, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (120, 11, 9, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (121, 0, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (122, 1, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (123, 2, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (124, 3, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (125, 4, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (126, 5, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (127, 6, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (128, 7, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (129, 8, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (130, 9, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (131, 10, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (132, 11, 10, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (133, 0, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (134, 1, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (135, 2, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (136, 3, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (137, 4, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (138, 5, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (139, 6, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (140, 7, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (141, 8, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (142, 9, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (143, 10, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (144, 11, 11, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (145, 0, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (146, 1, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (147, 2, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (148, 3, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (149, 4, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (150, 5, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (151, 6, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (152, 7, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (153, 8, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (154, 9, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (155, 10, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (156, 11, 12, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (157, 0, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (158, 1, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (159, 2, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (160, 3, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (161, 4, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (162, 5, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (163, 6, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (164, 7, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (165, 8, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (166, 9, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (167, 10, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (168, 11, 13, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (169, 0, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (170, 1, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (171, 2, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (172, 3, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (173, 4, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (174, 5, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (175, 6, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (176, 7, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (177, 8, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (178, 9, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (179, 10, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (180, 11, 14, 1)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (181, 0, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (182, 1, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (183, 2, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (184, 3, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (185, 4, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (186, 5, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (187, 6, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (188, 7, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (189, 8, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (190, 9, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (191, 10, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (192, 11, 0, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (193, 0, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (194, 1, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (195, 2, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (196, 3, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (197, 4, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (198, 5, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (199, 6, 1, 2)
GO
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (200, 7, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (201, 8, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (202, 9, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (203, 10, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (204, 11, 1, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (205, 0, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (206, 1, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (207, 2, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (208, 3, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (209, 4, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (210, 5, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (211, 6, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (212, 7, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (213, 8, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (214, 9, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (215, 10, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (216, 11, 2, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (217, 0, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (218, 1, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (219, 2, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (220, 3, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (221, 4, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (222, 5, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (223, 6, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (224, 7, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (225, 8, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (226, 9, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (227, 10, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (228, 11, 3, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (229, 0, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (230, 1, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (231, 2, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (232, 3, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (233, 4, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (234, 5, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (235, 6, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (236, 7, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (237, 8, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (238, 9, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (239, 10, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (240, 11, 4, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (241, 0, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (242, 1, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (243, 2, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (244, 3, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (245, 4, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (246, 5, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (247, 6, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (248, 7, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (249, 8, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (250, 9, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (251, 10, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (252, 11, 5, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (253, 0, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (254, 1, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (255, 2, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (256, 3, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (257, 4, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (258, 5, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (259, 6, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (260, 7, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (261, 8, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (262, 9, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (263, 10, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (264, 11, 6, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (265, 0, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (266, 1, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (267, 2, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (268, 3, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (269, 4, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (270, 5, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (271, 6, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (272, 7, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (273, 8, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (274, 9, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (275, 10, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (276, 11, 7, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (277, 0, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (278, 1, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (279, 2, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (280, 3, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (281, 4, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (282, 5, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (283, 6, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (284, 7, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (285, 8, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (286, 9, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (287, 10, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (288, 11, 8, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (289, 0, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (290, 1, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (291, 2, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (292, 3, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (293, 4, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (294, 5, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (295, 6, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (296, 7, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (297, 8, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (298, 9, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (299, 10, 9, 2)
GO
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (300, 11, 9, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (301, 0, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (302, 1, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (303, 2, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (304, 3, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (305, 4, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (306, 5, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (307, 6, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (308, 7, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (309, 8, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (310, 9, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (311, 10, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (312, 11, 10, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (313, 0, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (314, 1, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (315, 2, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (316, 3, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (317, 4, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (318, 5, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (319, 6, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (320, 7, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (321, 8, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (322, 9, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (323, 10, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (324, 11, 11, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (325, 0, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (326, 1, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (327, 2, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (328, 3, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (329, 4, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (330, 5, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (331, 6, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (332, 7, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (333, 8, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (334, 9, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (335, 10, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (336, 11, 12, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (337, 0, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (338, 1, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (339, 2, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (340, 3, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (341, 4, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (342, 5, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (343, 6, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (344, 7, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (345, 8, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (346, 9, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (347, 10, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (348, 11, 13, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (349, 0, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (350, 1, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (351, 2, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (352, 3, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (353, 4, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (354, 5, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (355, 6, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (356, 7, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (357, 8, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (358, 9, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (359, 10, 14, 2)
INSERT [dbo].[GHE] ([ID], [x], [y], [ID_PHONG]) VALUES (360, 11, 14, 2)
SET IDENTITY_INSERT [dbo].[GHE] OFF
SET IDENTITY_INSERT [dbo].[LICH_CHIEU] ON 

INSERT [dbo].[LICH_CHIEU] ([ID], [Ngay_bat_dau], [Ngay_ket_thuc]) VALUES (1, CAST(N'2015-04-09 00:00:00.000' AS DateTime), CAST(N'2015-06-15 00:00:00.000' AS DateTime))
INSERT [dbo].[LICH_CHIEU] ([ID], [Ngay_bat_dau], [Ngay_ket_thuc]) VALUES (2, CAST(N'2015-04-16 00:00:00.000' AS DateTime), CAST(N'2015-06-22 00:00:00.000' AS DateTime))
INSERT [dbo].[LICH_CHIEU] ([ID], [Ngay_bat_dau], [Ngay_ket_thuc]) VALUES (3, CAST(N'2015-04-23 00:00:00.000' AS DateTime), CAST(N'2015-06-29 00:00:00.000' AS DateTime))
INSERT [dbo].[LICH_CHIEU] ([ID], [Ngay_bat_dau], [Ngay_ket_thuc]) VALUES (4, CAST(N'2015-04-30 00:00:00.000' AS DateTime), CAST(N'2015-06-05 00:00:00.000' AS DateTime))
INSERT [dbo].[LICH_CHIEU] ([ID], [Ngay_bat_dau], [Ngay_ket_thuc]) VALUES (5, CAST(N'2015-04-30 00:00:00.000' AS DateTime), CAST(N'2015-06-04 00:00:00.000' AS DateTime))
INSERT [dbo].[LICH_CHIEU] ([ID], [Ngay_bat_dau], [Ngay_ket_thuc]) VALUES (6, CAST(N'2015-04-05 00:00:00.000' AS DateTime), CAST(N'2015-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[LICH_CHIEU] ([ID], [Ngay_bat_dau], [Ngay_ket_thuc]) VALUES (7, CAST(N'2015-04-12 00:00:00.000' AS DateTime), CAST(N'2015-06-18 00:00:00.000' AS DateTime))
INSERT [dbo].[LICH_CHIEU] ([ID], [Ngay_bat_dau], [Ngay_ket_thuc]) VALUES (8, CAST(N'2015-04-19 00:00:00.000' AS DateTime), CAST(N'2015-06-26 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[LICH_CHIEU] OFF
SET IDENTITY_INSERT [dbo].[NGUOI_DUNG] ON 

INSERT [dbo].[NGUOI_DUNG] ([ID], [Ten], [Mat_khau], [ID_NHOM_NGUOI_DUNG]) VALUES (1, N'1', N'1', 1)
INSERT [dbo].[NGUOI_DUNG] ([ID], [Ten], [Mat_khau], [ID_NHOM_NGUOI_DUNG]) VALUES (2, N'2', N'2', 2)
INSERT [dbo].[NGUOI_DUNG] ([ID], [Ten], [Mat_khau], [ID_NHOM_NGUOI_DUNG]) VALUES (3, N'3', N'3', 3)
INSERT [dbo].[NGUOI_DUNG] ([ID], [Ten], [Mat_khau], [ID_NHOM_NGUOI_DUNG]) VALUES (4, N'4', N'4', 3)
INSERT [dbo].[NGUOI_DUNG] ([ID], [Ten], [Mat_khau], [ID_NHOM_NGUOI_DUNG]) VALUES (10, N'5', N'5', 3)
SET IDENTITY_INSERT [dbo].[NGUOI_DUNG] OFF
SET IDENTITY_INSERT [dbo].[NHOM_NGUOI_DUNG] ON 

INSERT [dbo].[NHOM_NGUOI_DUNG] ([ID], [Ten], [Ma_so]) VALUES (1, N'Bán vé', N'BV')
INSERT [dbo].[NHOM_NGUOI_DUNG] ([ID], [Ten], [Ma_so]) VALUES (2, N'Kê hoạch', N'LLC')
INSERT [dbo].[NHOM_NGUOI_DUNG] ([ID], [Ten], [Ma_so]) VALUES (3, N'Khách hàng', N'KH')
SET IDENTITY_INSERT [dbo].[NHOM_NGUOI_DUNG] OFF
SET IDENTITY_INSERT [dbo].[PHIM] ON 

INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (1, N'Neill Blomkamp', N'sđfvsdvsdv', N'Hugh Jackman, Sharlto Copley, Sigourney Weaver', N'Khoa học viễn tưởng', N'3D', N'Sony Pictures', N'USA', 120, N'chappie.jpg', N'<p>Nội dung của &ldquo;Chappie&rdquo; kể về một rotbot sống trong x&atilde; hội của lo&agrave;i người, c&oacute; người tốt v&agrave; cả kẻ xấu. Chappie c&oacute; khả năng suy nghĩ v&agrave; cảm x&uacute;c của ri&ecirc;ng m&igrave;nh, với sự &aacute;p bức của x&atilde; hội Chappie muốn với việc l&agrave;m của m&igrave;nh sẽ l&agrave;m cho con người thay đổi c&aacute;ch nh&igrave;n về thế giới robot.</p>', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (2, N'Trúng Số', N'Dustin Nguyễn', N'Chí Tài, Thu Trang, Lan Ngọc, Hoài Linh, Dustin Nguyễn', N'Hài hước', N'2D', N'ANHSAO Production', N'Việt Nam', 95, N'trung-so.jpg', N'Nội dung phim Trúng Số:

Dịp Tết Âm Lịch luôn là thời điểm khán giả chờ đợi những bộ phim hài chất lượng của điện ảnh trong nước được ra mắt, phục vụ cho đông đảo người dân trong dịp lễ lớn nhất năm. Tết 2015 tới đây, người hâm mộ sẽ được gặp lại danh hài Chí Tài trong bộ phim mới nhất do Dustin Nguyễn làm đạo diễn: TRÚNG SỐ. 

Một “lãnh đạo huyện” Tư Phi vừa ở tù ra, một cô Út Thơm bán vé số chuyên lo chuyện thiên hạ, một anh Tư Nghĩa lái xe ba gác chỉ ham mua vé số và…ăn hột vịt lộn sống vui vẻ cùng cô vợ đanh đá, một bé Hường “nữ hoàng thẩm mỹ” đang đi tìm cơ hội đổi đời... Mỗi nhân vật đều có một số phận riêng, vẫn tưởng sẽ yên bình cho đến khi… bác Tư Phi trúng số độc đắc. Từ đây, số phận của họ đã rẽ đi một hướng khác mà ít nhiều đều liên quan đến nhau. Cười cũng nhiều và khóc cũng không ít. Trúng Số là câu chuyện giản dị về tình người, mang thông điệp tích cực về cuộc sống mà những người làm phim gửi tặng khán giả như một món quà đầu năm.

Ngoài Chí Tài, bộ phim còn quy tụ những cái tên khá quen thuộc của điện ảnh và làng cười Việt Nam như Ninh Dương Lan Ngọc, Thu Trang, Kim Xuân, Tấn Beo… Bối cảnh phim là miền quê sông nước Nam Bộ phù hợp với một câu chuyện hài hước ý nhị, nhẹ nhàng và sâu sắc.', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (3, N'Qúy tử bất đắc dĩ', N'Trần Ngọc Giàu', N'Hoài Linh – Việt Hương – Hoài Lâm Trấn Thành -Tấn Beo – Minh Thuận – Huy Khánh', N'Hài hước', N'2D-Lồng tiếng', N'Sai Gon Movies', N'Việt Nam', 95, N'quy-tu-bat-dac-di.jpg', N'Quý tử bất đắc dĩ kể về mối tình già giản dị của ông Minh và bà Hai Mùi. Định mệnh đem đến cho bà Hai Mùi một số tiền “khủng” khiến nhiều người mơ ước. Với món quà từ trên trời rơi xuống, bà thổ lộ mong muốn sẽ tìm lại đứa con thất lạc từ 18 năm trước. Bí mật đó vô tình bị phát hiện bởi những con người toan tính, mưu lợi, để rồi họ phải tìm mọi cách trở thành… quý tử bất đắc dĩ của một người không hề quen biết. Câu chuyện hài hước với những tình huống trớ trêu, kịch tính bắt đầu từ đây', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (4, N'SƠN ĐẸP TRAI', N'Trương Quang Thịnh ', N'Bằng Kiều, Lan Khuê, Trường Giang, Kiều Minh Tuấn, Đinh Huy', N'Hài hước', N'2D', N'Thanh Long', N'Việt Nam', 90, N'son-dep-trai.png', N'SƠN ĐẸP TRAI là bộ phim của đạo diễn Trương Quang Thịnh, kể về câu chuyện của một anh chàng có biệt danh “SƠN ĐẸP TRAI” dù ngoại hình của mình không mấy trẻ trung (Bằng Kiều). Một lần tình cờ, anh gặp và phải lòng một cô ca sĩ nổi tiếng (Lan Khuê – Miss World Vietnam 2014). Bằng sự tự tin của mình cùng sự giúp đỡ của người bạn thân (Trường Giang đóng), anh đã lập kế hoạch tán tỉnh cô ca sĩ nhưng lại thất bại thảm hại....', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (5, N'CINDERELLA', N'Kenneth Branagh', N'Lily James, Hayley Atwell, Helena Bonham Carter', N'Phiêu lưu - Thần Thoại', N'2D', N'Disney', N'USA', 105, N'CINDERELLA.jpg', N'Dựa theo truyện cổ tích cùng tên của anh em nhà Grimm, Cinderella được Walt Disney cho ra mắt lần đầu trong phiên bản hoạt hình vào năm 1950. Chuyện phim kể về cô gái trẻ Ella sau cái chết đau buồn của mẹ đã vui vẻ đồng ý cho cha của mình là một Thương Lái "đi bước nữa". Mong muốn được nhìn thấy cha nở lại nụ cười trên môi, Ella háo hức đón mẹ kế và hai cô con gái của bà ta về căn nhà của mình. Tuy nhiên khi cha đột ngột qua đời, Ella bỗng chốc phải đối mặt với sự tàn ác và ghẻ lạnh của bà mẹ kế và hai cô con gái. Từ cô tiểu thư nhỏ, Ella bỗng chốc trở thành một nô lệ trong chính ngôi nhà của mình. Bất chấp sự đối xử tệ bạc của bà ta, Ella vẫn vui vẻ sống và tin yêu vào cuộc đời như lời dạy của mẹ trước lúc trước “hãy luôn dũng cảm và hòa nhã với mọi người”.', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (6, N'Ám Ảnh Bóng Đêm', N'Luís Quílez ', N' Pixie Davies, Alejandro Furth, Stephen Rea', N'Kịch tính, Kinh dị', N'2D', N'Apaches Entertainment', N'USA', 92, N'am-anh-bong-dem.jpg', N'Bộ phim kể về những biến cố kinh hoàng của một gia đình nhỏ khi chuyển đến tiếp quản xưởng sản xuất cũ của gia đình và dần phát hiện ra ngôi nhà mới của họ đang bị một thế lực đáng sợ nguyền rủa.', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (7, N'Home- Hành trình trở về', N'Tim Johnson ', N'Jim Parsons, Rihanna, Jennifer Lopez', N'Hoạt hình', N'2D-Lồng tiếng', N'DreamWorks Animation', N'USA', 90, N'home-hanh-trinh-tro-ve.jpg', N'Trải qua cuộc hành trình kéo dài hàng triệu năm ánh sáng, tộc người ngoài hành tinh Boov chỉ mong kiếm được một mái nhà yên bình để nương thân. Hi vọng của họ tắt dần khi các hành tinh họ đặt chân đến đều quá nguy hiểm, hoặc nhanh chóng bị hủy diệt hoặc thậm chí không thể có sự sống tồn tại. Dấu hiệu của Trái Đất xuất hiện trên màn hình rada như ánh sáng cuối đường hầm, thắp lên ngọn lửa hi vọng về một quê hương lâu dài cho những người dân Boov lương thiện.', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (8, N'Kiếm Rồng - Dragon Blade - 2015', N'Lý Nhân Cảng', N'	Thành Long, Hồ Ca, Lý Băng Băng, Adrien Brody, John Cusack', N'Hài, Hành động ', N'2D-Lồng tiếng', N'	Sparkle Roll Media', N'USA', 120, N'Dragon-Blade-2015.jpg', N'Phim Kiếm Rồng lấy bối cảnh diễn ra dưới thời Tây Hán, phim xoay quanh câu chuyện của đại tướng quân Hoắc An (Thành Long) với sứ mệnh bảo vệ sự bình yên cho các nước chư hầu ở Tây Vực. Với tài năng, sự kiên trung và tình yêu hòa bình, Hoắc An đã liên kết với các huynh đệ từng vào sinh ra tử với mình lập nên liên minh “Quyết tử cho hòa bình”.', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (9, N'Cuộc Chiến Của Các Vị Thần', N'Masahiro Hosoda', N'Tôru Furuya, 
Shigeru Chiba', N'Hoạt hình', N'2D-Lồng tiếng', N'Toei Animation Company', N'Nhật Bản', 105, N'cuoc-chien-cua-cac-vi-than.jpg', N'Là bộ phim hoạt hình phần tiếp theo của Dragon Ball Z, trong phần Dragon Ball Z Battle Of God, Goku và nhóm bạn của mình phải đối mặt với một đối thủ ở cấp độ khác hoàn toàn là thần phá hoại. Sau mấy chục năm ngủ, thần phá hoại tỉnh giấc vì cảm nhận được sẽ gặp được đối thủ xứng tầm với mình nên lên đường đi tìm đối thủ này. Nhưng lại không may mắn nguồn năng lượng của đối thủ này lại nằm ở Trái Đất, nơi nhóm bạn của Goku. Trách nhiệm bảo vệ Trái Đất lại một lần nữa phụ thuộc vào họ, nhóm bạn của Goku phải làm như thế nào để có thể làm hài lòng thần phá hoại để Trái Đất không bị hủy diệt? Cùng xem Dragon Ball Z Battle Of God - Trận Chiến Giữa Các Vị Thần để khám phá trận chiến đó.', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (10, N'MẬT VỤ KINGSMAN', N'Matthew Vaughn', N'Colin Firth, Michael Caine, Taron Egerton', N'Hành động, Hình sự', N'2D', N'Marv Films', N'USA', 129, N'mat-vu-kingsman.jpg', N'Bộ phim kể về một tổ chức điệp viên cực kỳ bí mật trong quá trình tuyển mộ một đứa trẻ đường phố không có học thức gì nhưng hết sức triển vọng vào chương trình đào tạo điệp viên vô cùng khắc nghiệt, nhằm đối phó với một các hiểm họa toàn cầu kiểu phần tử khủng bố là thiên tài công nghệ biến chất...', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (11, N'Người nhện siêu đẳng 2 - 2014', N'Marc Webb', N'Andrew Garfield, Emma Stone', N'Phiêu Lưu, Viễn Tưởng', N'3D', N'Sony Pictures Entertainment', N'USA', 120, N'nguoi-nhen-sieu-dang.jpg', NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (12, N'Noah - Đại Hồng Thủy 3D - 2014', N'Darren Aronofsky', N'Russell Crowe, Jennifer Connelly, Anthony Hopkins', N'Phiêu Lưu, Viễn Tưởng', N'3D', N'Paramount Pictures', N'USA', 128, N'Noah-dai-hong-thuy.jpg', N'Truyền thuyết về trận đại hồng thuỷ và con thuyền Noah không những được
ghi chép trong Kinh thánh, mà ngay cả trong kho sách cổ nhất được khai
quật tại thủ đô Nineveh của đế quốc Assyria cổ đại cũng có ghi chép
chuyện tương tự trong bản đất sét đào được. Theo truyền thuyết, Noah là
một người đàn ông chính trực - người được Chúa Trời chọn để thực thi một
nghĩa vụ cao cảo nhằm cứu lấy muôn loài trong ngày một cơn đại hồng
thuỷ quét sạch cả Trái Đất.
Trải qua thời gian với bao nhiêu thăng trầm, truyền thuyết này vẫn là
nguồn cảm hứng để các nhà sản xuất cho ra đời nhiều bộ phim truyền hình
và điện ảnh. ', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (13, N'THÁNH LỪA', N'Glenn Ficarra,John Requa', N'Will Smith, Margot Robbie, Rodrigo ', N'Phim Hài Hước, Phim Hình Sự', N'3D', N'Paramount Pictures', N'USA', 105, N'thanh-lua.jpg', N'NULLFocus là một bộ phim Mỹ thuộc thể loại hài lãng mạn xen lẫn yếu tố tội phạm. Phim là câu chuyện về giới lừa đảo chuyên nghiệp, xoay quanh người đàn ông Nicky (Will Smith thủ vai), một tay lừa đảo chuyên nghiệp trên thương trường. Một ngày, Nicky gặp Jess (Margot Robbie thủ vai), một cô nàng mới vào nghề còn nhiều bỡ ngỡ và Jess trở thành “đệ tử” của anh ta. Cùng nhau chống lại một tên trùm lừa đảo khác, hai “thầy trò” Nicky và Jess hình thành một mối tình hết sức lãng mạn.

Focus mang đậm yếu tố hài hước, đặc biệt là diễn xuất sắc sảo của hai diễn viên chính Will Smith và Margot Robbie.

Dự án phim Focus trước đây đã được nhắm vai chính cho nữ diễn viên Kristen Stewart và Ben Affleck. Tuy nhiên, đến phút chót, tài tử Ben Affleck quyết định rút lui vì không sắp xếp được lịch trình. Cái tên được thay thế sau đó mới là Will Smith.

Điều đáng tiếc là sau khi Will Smith chính thức được xác nhận đảm nhiệm vai nam chính trong Focus thì nữ chính Kristen Stewart lại quyết định rút lui, với lý do cô cảm thấy không được thoải mái vì sự cách biệt tuổi tác khá lớn với bạn diễn, mặc dù, sự cách biệt tuổi tác chính là một phần của câu chuyện trong phim. Và cái tên được thay thế sau đó mới là nữ diễn viên sinh năm 1990 Margot Robbie.

Will Smith đã rất nổi tiếng với các phim Independence Day, Men in Black, Ali… trong khi đó, nữ diễn viên có đôi mắt đa tình Margot Robbie luôn đóng khung trong những vai diễn những cô nàng gợi tình, lẳng lơ, khiến cánh mày râu lao đao với mỗi cú liếc nhìn sắc lẹm và cực kỳ khêu gợi.
 
Vẻ ngoài của Nicky khá nghiêm túc so với Jess bốc lửa, tuy nhiên, bản thân điều đó có lẽ là yếu tố làm nên sức hấp dẫn của câu chuyện tình. Chưa nói, bản thân Jess, với diễn xuất duyên dáng của Margot Robbie, đã đủ khiến khán giả bị quyến rũ và say đắm', N'thanh-lua.mp4', N'thanh-lua.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (14, N'TẨU THOÁT', N'Daniel Benmayor', N'Taylor Lautner, Marie Avgeropoulos, Adam Rayner', N'Phim Hành Động', N'3D', N'DreamWorks Animation', N'USA', 94, N'tau-thoat.jpg', N'Trong Tracers, người sói Taylor Lautner đã hoàn toàn lột xác trong một vai diễn làm nhiều người bất ngờ: thể hiện kĩ thuật parkour tuyệt đỉnh, đua xe đạp như bay, tham gia vụ cướp ngân hàng, bắt giữ người làm con tin, và thậm chí còn có cả cảnh nóng đến bỏng mắt với người tình màn ảnh - Marie Avgeropoulos.

Anh chàng Cam (Taylor Lautner) lao vun vút trên đường bằng chiếc xe 2 bánh, mạo hiểm cuộc sống của mình khi vượt qua cả ô tô, nhảy từ nhà này sang nhà kia và lượn lờ rất khéo léo ở những những khúc cua gắt. Anh thực hiện nhiệm vụ hàng ngày của mình: đưa thư. Cho đến một ngày, Cam lao xe của mình vào một cô gái xinh đẹp tên là Nikki (Marie Avgeropoulos). Họ quen nhau và Cam bắt đầu tham gia vào nhóm parkour, mà cô bạn gái mới quen là một chuyên gia.

Để kiếm tiền, Cam vô tình tham gia cùng một nhóm kẻ xấu đang khao khát tiền bạc và máu. Anh chàng hết hồn khi thấy chúng tổ chức cướp ngân hàng và bắt người làm con tin. Thậm chí khi phải đào thoát, chúng ra tay giết người không gớm tay. Cam quyết định chạy trốn cùng với Nikki nhằm thoát khỏi băng nhóm tàn ác.

Tham gia vào Tracers, Taylor Lautner đã lột xác với một tạo hình hoàn toàn mới. Thay vì là một chàng trai chỉn chu, cực kỳ nam tính trong những dự án trước, lần nay, anh để tóc bờm xờm cùng hàng râu quai nón hết sức gai góc. Đây là bộ phim đầu tiên của Taylor kể từ khi vai diễn ngắn trong Grown Ups 2. Tuy nhiên, nhiều khán giả nhận xét trông Taylor còn manly hơn cả những vai diễn trong các bộ phim trước kia', N'tau-thoat.mp4', N'tau-thoat.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (15, N'PHIM O', NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (16, N'PHIM P', NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (17, N'PHIM Q', NULL, NULL, NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (18, N'PHIM R', NULL, NULL, NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (21, N'PHIM AB', NULL, NULL, NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (22, N'PHIM AC', NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (23, N'PHIM AD', NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (24, N'PHIM AE', NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (25, N'PHIM AF', NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (26, N'PHIM AG', NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (27, N'PHIM AH', NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (28, N'PHIM AI', NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (29, N'JURASSIC WORLD', N'Colin Trevorrow', N'Chris Pratt, Judy Greer, Ty Simpkins', N'Hành động, Khoa học viễn tưởng', N'3D', N'Lengendary', N'USA', 100, N'JURASSIC-WORLD.jpg', N'Công viên kỷ Jura ngày nào giờ đã trở thành Công viên Khủng long thật sự. Tuy nhiên, khu tham quan này lại rất vắng khách, vì người dân không còn chuộng những con quái vật cổ đại nữa. Để thu hút khách trở lại, tập đoàn sở hữu Masrani quyết định lai tạo ra một loài khủng long mới, nhưng điều đó nhanh chóng dẫn đến thảm họa.', N'JURASSIC-WORLD.mp4', N'JURASSIC-WORLD.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (30, N'THÁM TỬ HÊN RY', N'Tấn Beo', N'Tấn Beo, Nhi Katy, Hoàng Bách, Á hậu Ái Châu, Duy Nhân, Bella Mai Phương, Trương Thế Vinh', N'Hài, Kinh dị, Ma', N'2D', N'Tấn Beo', N'Việt Nam', 90, N'tham-tu-hen-ry.jpg', N'Thám Tử Hên Ry kể về câu chuyện vào 3 năm trước, một cô gái bị tai nạn giao thông tại đoạn đường vắng nhưng vết thương quá nặng cô không thể qua khỏi. Cũng từ đó nơi ấy thưa vắng người qua lại, địa điểm xảy ra tai nạn cũng dần tồn tại dưới cái tên “cung đường thảm khốc”. Ba năm sau, vợ của Huy tìm đến thám tử lừng danh Hên Ry để nhờ anh điều tra về vụ tai nạn bí ẩn của chồng mình. Huy cũng gặp nạn trên cung đường ngày xưa nay lưu truyền rằng thỉnh thoảng có một cô gái váy trắng xin quá giang người qua đường rồi biến mất. Để giải mã chuỗi vụ án kì bí có liên quan đến “hồn ma áo trắng”, thám tử Hên Ry cùng với cô trợ lý xinh đẹp và chàng cảnh sát hình sự đã lần theo các manh mối tìm về quá khứ.', N'tham-tu-hen-ry.mp4', N'tham-tu-hen-ry.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (31, N'ANT-MAN', N'Peyton Reed', N'Paul Rudd, Evangeline Lilly, Hayley Atwell', N'Hành động, Khoa học viễn tưởng', N'3D', N'Đang cập nhật', N'Đang cập nhật', 100, N'ant-man.jpg', N'Nhân vật mới nhất của Marvel được lên màn ảnh là “Người Kiến” (Ant-Man), kể về một siêu trộm tên Scott Lang (Paul Rudd). Một lần tình cờ anh ta ăn trộm được bộ đồ thí nghiệm khiến con người thu nhỏ lại bằng kích cỡ kiến, nhưng sức mạnh tăng lên. Với sự động viên của nhà khoa học đã sáng chế nên bộ đồ đó, Lang quyết định từ bỏ quá khứ tội phạm, và dành hết thời gian chiến đấu cho lẽ phải trong lốt siêu anh hùng.', N'ant-man.mp4', N'ant-man.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (32, N'KẺ HUỶ DIỆT
', N'Alan Taylor', N'Emilia Clarke, J.K. Simmons, Jai Courtney', N'Hành động, Phiêu lưu', N'3D', N'Paramount Pictures', N'USA', 112, N'ke-huy-diet.jpg', N'Phần 5 của loạt phim kinh điển Terminator, và được cho là phần phim sẽ “tái tạo” lại toàn bộ thế giới “Kẻ hủy diệt”. Một câu chuyện hoàn toàn khác về Sarah Conner (Emilia Clarke), người sẽ sinh ra thủ lĩnh tương lai của loài người John Connor (Jason Clarke). Trong phim, cô được nhận nuôi ngay từ tấm bé bởi người máy T-800 và được huấn luyện để đối diện với số phận khắc nghiệt của mình. Phim có sự trở lại của biểu tượng của cả loạt phim Arnold Schwarzenegger.', N'ke-huy-diet.mp4', N'ke-huy-diet.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (33, N'HÀNH TRÌNH TRỞ VỀ ', N'Tim Johnson', N'Jim Parsons, Rihanna, Jennifer Lopez', N'Phim hoạt hình', N'2D', N'DreamWorks ', N'USA', 120, N'hanh-trinh-tro-ve.jpg', N'Bộ phim là hành trình vui nhộn giữa Oh, một người ngoài hành tinh đáng yêu đang chạy trốn khỏi chủng tộc của mình, và Tip, một cô bé đầy sức sống, cùng con mèo cưng của cô. Trên chuyến đi ấy, họ đã thấu hiểu về nhau hơn, xây dựng một tình bạn khắng khít, và cùng cứu lấy thế giới', N'hanh-trinh-tro-ve.mp4', N'hanh-trinh-tro-ve.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (34, N'VUA BANH BÀN', N'Juan José Campanella', N'Gabriel Almirón, Federico Cecere, Ezequiel Cipols', N'Phim hoạt hình', N'2D', N'Đang cập nhật', N'USA', 100, N'vua-banh-ban.jpg', N'Foosball (Vua banh bàn), đúng như tựa đề, là bộ phim hoạt hình đến từ Aghentina xoay quanh một trò chơi quen thuộc: banh bàn. Nội dung kể về Amedo, vốn là một cậu bé nhút nhát nhưng cực kỳ tài năng ở trò này. Cậu cố gắng tập hợp những bạn bè cũ thành một đội, để chiến thắng trước kẻ thù không đội trời chung Grosso. Một chuyến phiêu lưu nhiều nụ cười và những trận bóng đầy sôi động, Foosball sẽ là một phim khiến khán giả gợi nhớ lại về những ký ức đẹp bên chiếc bàn gỗ tuổi thơ.', N'vua-banh-ban.mp4', N'vua-banh-ban.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (35, N'TẨU THOÁT TRONG ĐÊM', N'Jaume Collet-Serra', N'Liam Neeson, Ed Harris, Joel Kinnaman', N'Phim hành động', N'3D', N'Đang cập nhật', N'USA', 114, N'tau-thoat-trong-dem.jpg', N'Liam Neeson vào vai một cựu sát thủ khét tiếng ở Brooklyn tên Jimmy Conlon, kẻ có biệt danh “người đào huyệt” từng gieo rắc sợ hãi trong giới xã hội đen, nhưng đã giải nghệ. Giờ đây, ông phải đứng trước quyết định khó khăn: bảo vệ đứa con trai duy nhất khỏi cái chết, hay giúp nó chống lại trùm băng đảng là người bạn chí cốt ngày xưa.', N'tau-thoat-trong-dem.mp4', N'tau-thoat-trong-dem.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (36, N'CHUYẾN BAY VP7500', N'Takashi Shimizu', N'Ryan Kwanten, Amy Smart, Leslie Bibb, Jamie Chung', N'Phim Kinh Dị, Phim Viễn Tưởng', N'2D', N'Đang cập nhật', N'USA', 98, N'chuyen-bay-vp7500.jpg', NULL, N'chuyen-bay-vp7500.mp4', N'chuyen-bay-vp7500.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (37, N'Người hùng tia chớp', N'Đang cập nhật', N'Stephen Amell, Tom Cavanagh, Fulvio Cecere', N'Phim hành động', N'2D', N'Kennedy Miller Productions', N'USA', 120, N'nguoi-hung-tia-chop.jpg', N'Trong một lần tại Starling City, Barry đã vô tình bị ảnh hưởng bởi vụ nổ phòng thí nghiệm của S.T.A.R khiến anh bị bất tỉnh nhiều ngày trong bệnh viện. Khi tỉnh dậy, anh ta đã phát hiện ra rằng mình có khả năng đặc biệt đó là tăng tốc độ cơ thể và di chuyển siêu nhanh. Kể từ đây, huyền thoại về người anh hùng Flash bắt đầu.

Trailer đầu tiên của bộ phim truyền hình nhiều tập của Mỹ, dựa trên nhân vật Flash/Barry Allen của DC Comics, một người hùng chống lại tội ác. Đóng vai trò như phần ngoại truyện của Arrow cùng chung một thế giới, phim sẽ phát sóng vào mùa thu 2014 trên kênh truyền hình CW.', N'nguoi-hung-tia-chop.mp4', N'nguoi-hung-tia-chop.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (38, N'Búp bê ANNABELLE', N'John R. Leonetti', N'Ward Horton, Annabelle Wallis, Alfre Woodard', N'Phim kinh dị', N'3D', N'Universal Pictures', N'USA', 99, N'bup-be-ma.jpg', N'Bộ phim bắt đầu với cảnh đầu tiên từ The Conjuring, với hai người phụ nữ và một người đàn ông vào năm 1968 đang kể với Ed và Lorraine về trải nghiệm của họ với con búp bê mà họ nghĩ đã bị ám, với cái tên Annabelle.
Vào năm 1969, John Gordon (Ward Horton) cùng vợ là Mia (Annabelle Wallis) đang chuẩn bị chào đón đứa con đầu lòng. Một đêm nọ, sau khi trở về từ nhà thờ, John đã tặng Mia một con búp bê mà cô đã tìm kiếm bấy lâu cho bộ sưu tập của mình.', N'bup-be-ma.mp4', N'bup-be-ma.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (39, N'Lính bắn tỉa Mỹ', N'Clint Eastwood', N'Bradley Cooper, Sienna Miller, Kyle Gallner', N'Phim Hành Động', N'3D', N'Universal Pictures', N'USA', 120, N'linh-ban-tia-my.jpg', N'Phim kể về Liệt sĩ Biệt đội Lính thủy Đánh bộ Chris Kyle, một xạ thủ bắn tỉa đã đạt kỷ lục giết nhiều kẻ địch nhất trong lịch sử quân đội Mỹ. Chris là tay súng bắn tỉa "bách phát bách trúng" thuộc biên chế Biệt đội Hải cẩu (SEAL), từng bốn lần tham gia chiến trường Iraq với một sứ mạng duy nhất: bảo vệ các đồng đội. Những phát đạn chính xác của anh đã cứu sống nhiều binh sĩ Mỹ trên chiến trường. Tiếng tăm về tài bắn tỉa của anh khiến nhiều kẻ thù kinh sợ, và chúng quyết định treo tiền thưởng cho kẻ nào giết được Kyle. Người ta thậm chí đã tôn vinh Chris bằng nickname "Legend" (Huyền thoại). Tuy nhiên, khi trở về quê hương với vợ và các con, Chris mới nhận ra rằng, đó là một cuộc chiến mà anh không thể gạt bỏ lại phía sau, việc phải chinh chiến thường xuyên của Kyle cũng khiến gia đinh anh luôn lâm vào tình trạng căng thẳng. Chris Kyle hy sinh vào năm 2014, tử nạn do bị bắn bởi một đồng sự của mình.', N'linh-ban-tia-my.mp4', N'linh-ban-tia-my.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (40, N'CON ĐƯỜNG NGUY HIỂM', N'George Miller', N'Tom Hardy,...', N'Phim hành động', N'3D', N'Kennedy Miller Productions', N'Úc', 120, N'con-duong-nguy-hiem.jpg', N'Bối cảnh phim ở một nơi rất xa của trái đất, nơi ấy sa mạc bao phủ hầu hết bề mặt và hầu hết mọi người đều điên cuồng đấu tranh cho những nhu cầu của cuộc sống. 
Trong thế giới này tồn tại hai phiến quân đang chạy trốn những người được coi là có thể để khôi phục lại trật tự thế giới. 
Trong đó có Max, một người đàn ông của hành động và ít nói, đang tìm kiếm sự an tâm sau khi mất vợ và con của mình do hậu quả của sự hỗn loạn. Và Furiosa, một phụ nữ luôn hành động và tin rằng con đường của mình để tồn tại có thể đạt được nếu cô ấy có thể vượt sa mạc sở về quê hương yêu dấu.', N'con-duong-nguy-hiem.mp4', N'con-duong-nguy-hiem.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (41, N'Avengers: Age of Ultron', N'Joss Whedon', N'Robert Downey Jr., Chris Evans, Mark Ruffalo', N'Hành động, Kịch tính', N'3D', N'Marvel Studios', N'USA', 120, N'avengers-age-of-ultron.jpg', N'Ở phần này, Biệt đội siêu anh hùng của S.H.I.E.L.D phải tập hợp lại để chiến đấu với Ultron, con Robot cực kỳ thông minh và bất khả chiến bại, với dã tâm tiêu diệt tất cả siêu anh hùng trên thế giới', N'avengers-age-of-ultron.mp4', N'avengers-age-of-ultron.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (42, N'LÁ BÀI SỐ PHẬN', N'Simon West', N'Jason Statham, Michael Angarano, Dominik García Lorido', N'Phim Hành Động', N'3D', N'Universal Pictures', N'USA', 92, N'la-bai-so-phan.jpg', N'Những bộ phim có sự góp mặt của Jason Statham luôn rất thú vị, đậm chất hành động và Wild Card (tựa tiếng việt là Trùm Bài) cũng là một bộ phim hành động đáng để xem trong dịp này. Bộ phim đưa chúng ta đến thành phố cờ bạc, xa hoa nhưng cũng không kém phần nguy hiểm- Las Vegas.Jason Statham vào vai Nick Wild một người có lai lịch rất bí ẩn và là một tay cờ bạc khét tiếng ở Las Vegas. Qúa khứ của Nick không được đề cập trong phim nhưng rõ ràng anh ta là một tay giang hồ có hạng trong thế giới ngầm. Ngoài tài đấm đá rất riêng của mình thì Nick là một con bạc chính hiệu nhưng bị cái dớp không bao giờ thắng quá 500 ngàn USD, chính vì vậy mà ước mơ của Nick là kiếm đủ 500 ngàn USD và dong buồm đến hòn đảo Địa Trung Hải để an hưởng tuổi già.', N'la-bai-so-phan.mp4', N'la-bai-so-phan.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (45, N'SĂN LÙNG', N'Jalmari Helander', N'Samuel L. Jackson, Felicity Huffman, Ray Stevenson', N'Hành động, Khoa học viễn tưởng', N'3D', N'EOne Entertainment', N'Đang cập nhật', 114, N'san-lung.jpg', N'Bộ phim là sự hợp tác giữa Anh và Phần Lan, kể về một chuyến phiêu lưu của hai nhân vật đặc biệt. Khi chiếc máy bay Air Force One bị lũ khủng bố bắn hạ, tổng thống Mỹ (Samuel L. Jackson) đã may mắn sống sót nhưng lạc trong khu rừng hoang dã ở Phần Lan. Người duy nhất có thể cứu tổng thống lại là một cậu nhóc 13 tuổi, tình cờ cắm trại gần đó. Cùng nhau, họ trải qua 24 giờ vừa nguy hiểm vừa đáng nhớ nhất trong cuộc đời mình. Big Game là bộ phim có kinh phí sản xuất cao nhất ở Phần Lan, với 8,5 triệu euro.', N'san-lung..mp4', N'san-lung.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (46, N'Quá nhanh quá nguy hiểm 7', N'James Wan', N'Paul Walker, Vin Diesel', N'Phim hành động', N'3D', N'Universal Pictures', N'USA', 120, N'qua-nhanh-qua-nguy-hiem-7.jpg', N'Phim Furious 7 (Quá Nhanh Quá Nguy Hiểm 7) là phần 7 của loạt series Fast & Furious nổi tiếng. Ở cuối phần trước, tưởng chừng như mọi chuyện đã kết thúc, và mở ra một cuộc sống bình lặng, khi cả nhóm đã tiêu diệt được Owen Shaw. Thì trong phần này, sự xuất hiện của Deckard Shaw, người đã giết chết Han, và khiêu chiến với Dominic Toretto, để trả thù cho em trai Owen Shaw của mình, đã làm thay đổi tất cả. Khiến cho cuộc đụng độ giữa 2 băng nhóm lên đến đỉnh điểm. 

Hai anh em của Paul Walker sẽ là diễn viên đóng thế anh sau khi Paul Walker qua đời.', N'qua-nhanh-qua-nguy-hiem-7.mp4', N'qua-nhanh-qua-nguy-hiem-7.pdf')
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (55, N'Tên phim:', N'Đạo diễn', N'Diễn viên:', N'Thể loại:', N'Phiên bản:', N'Hãng', N'Nước sản xuất:', 12, NULL, N'<p>Giới Thi&ecirc;̣u</p>
', NULL, NULL)
INSERT [dbo].[PHIM] ([ID], [Ten], [Dao_dien], [Dien_vien], [The_loai], [Phien_ban], [Hang_phim], [Nuoc_san_xuat], [Do_dai], [Poster], [Gioi_thieu], [Trailer], [PDF]) VALUES (56, N'asdsad', N'dsad', N'asdasdsa', N'asdsad', N'sadsa', N'dsad', N'sad', 2, N'Null.png', N'<p>asdsad</p>
', NULL, NULL)
SET IDENTITY_INSERT [dbo].[PHIM] OFF
SET IDENTITY_INSERT [dbo].[PHONG] ON 

INSERT [dbo].[PHONG] ([ID], [Ten]) VALUES (1, N'Phòng A1')
INSERT [dbo].[PHONG] ([ID], [Ten]) VALUES (2, N'Phòng B1')
INSERT [dbo].[PHONG] ([ID], [Ten]) VALUES (3, N'Phòng C1')
INSERT [dbo].[PHONG] ([ID], [Ten]) VALUES (4, N'Phòng A2')
INSERT [dbo].[PHONG] ([ID], [Ten]) VALUES (5, N'Phòng B2')
INSERT [dbo].[PHONG] ([ID], [Ten]) VALUES (6, N'Phòng D1')
INSERT [dbo].[PHONG] ([ID], [Ten]) VALUES (9, N'Phòng asdasdadasd')
SET IDENTITY_INSERT [dbo].[PHONG] OFF
SET IDENTITY_INSERT [dbo].[VE] ON 

INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (1, 0, 518, 97, CAST(170000000 AS Decimal(18, 0)), N'duyquoc1234')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (2, 0, 520, 49, CAST(170000000 AS Decimal(18, 0)), N'duyquoc1234')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (3, 0, 222, 37, CAST(170000000 AS Decimal(18, 0)), N'duyquoc1234')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (4, 0, 497, 61, CAST(170000000 AS Decimal(18, 0)), N'duyquoc1234')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (5, 0, 521, 77, CAST(170000000 AS Decimal(18, 0)), N'duyquoc1234')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (6, 0, 544, 40, CAST(170000000 AS Decimal(18, 0)), N'duyquoc1234')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (7, 0, 427, 33, CAST(170000000 AS Decimal(18, 0)), N'duyquoc1234')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (8, 0, 547, 63, CAST(170000000 AS Decimal(18, 0)), N'duyquoc1234')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (11, 0, 523, 64, CAST(170000000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (12, 0, 514, 16, CAST(170000000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (13, 0, 218, 32, CAST(170000000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (14, 0, 218, 2, CAST(170000000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (15, 0, 218, 5, CAST(170000000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (1009, 0, 5, 8, CAST(700000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (1010, 0, 5, 5, CAST(700000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (1011, 0, 218, 6, CAST(700000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (1012, 0, 541, 7, CAST(700000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (1013, 0, 541, 10, CAST(700000 AS Decimal(18, 0)), N'Admin')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (1014, 0, 218, 9, CAST(700000 AS Decimal(18, 0)), N'duyquoc')
INSERT [dbo].[VE] ([ID], [Trang_thai], [ID_XUAT_CHIEU], [ID_GHE], [Gia_tien], [ID_NGUOI_DUNG]) VALUES (2012, 0, 547, 7, CAST(700000 AS Decimal(18, 0)), N'Admin')
SET IDENTITY_INSERT [dbo].[VE] OFF
SET IDENTITY_INSERT [dbo].[XUAT_CHIEU] ON 

INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (1, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 1, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (2, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 1, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (3, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 2, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (4, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 2, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (5, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 3, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (6, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 3, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (7, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 4, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (8, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 4, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (9, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 5, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (10, CAST(N'2015-06-09 00:00:00.000' AS DateTime), 1, 5, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (11, CAST(N'2015-06-10 00:00:00.000' AS DateTime), 1, 1, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (12, CAST(N'2015-06-10 00:00:00.000' AS DateTime), 1, 1, 2, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (13, CAST(N'2015-06-10 00:00:00.000' AS DateTime), 1, 2, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (14, CAST(N'2015-06-10 00:00:00.000' AS DateTime), 1, 2, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (15, CAST(N'2015-06-10 00:00:00.000' AS DateTime), 1, 3, 1, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (16, CAST(N'2015-06-10 00:00:00.000' AS DateTime), 1, 3, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (17, CAST(N'2015-06-10 00:00:00.000' AS DateTime), 1, 4, 1, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (18, CAST(N'2015-06-10 00:00:00.000' AS DateTime), 1, 4, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (19, CAST(N'2015-01-10 00:00:00.000' AS DateTime), 1, 5, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (20, CAST(N'2015-01-10 00:00:00.000' AS DateTime), 1, 5, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (21, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 1, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (22, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 1, 2, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (23, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 2, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (24, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 2, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (25, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 3, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (26, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 3, 2, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (27, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 4, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (28, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 4, 2, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (29, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 5, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (30, CAST(N'2015-01-11 00:00:00.000' AS DateTime), 1, 5, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (31, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 1, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (32, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 1, 2, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (33, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 2, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (34, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 2, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (35, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 3, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (36, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 3, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (37, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 4, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (38, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 4, 2, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (39, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 5, 1, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (40, CAST(N'2015-01-12 00:00:00.000' AS DateTime), 1, 5, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (41, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 1, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (42, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 1, 2, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (43, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 2, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (44, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 2, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (45, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 3, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (46, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 3, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (47, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 4, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (48, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 4, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (49, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 5, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (50, CAST(N'2015-01-13 00:00:00.000' AS DateTime), 1, 5, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (51, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 1, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (52, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 1, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (53, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 2, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (54, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 2, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (55, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 3, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (56, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 3, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (57, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 4, 1, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (58, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 4, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (59, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 5, 1, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (60, CAST(N'2015-01-14 00:00:00.000' AS DateTime), 1, 5, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (61, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 1, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (62, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 1, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (63, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 2, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (64, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 2, 2, 21)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (65, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 3, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (66, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 3, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (67, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 4, 1, 16)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (68, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 4, 2, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (69, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 5, 1, 17)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (70, CAST(N'2015-01-15 00:00:00.000' AS DateTime), 1, 5, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (71, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 1, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (72, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 1, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (73, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 2, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (74, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 2, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (75, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 3, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (76, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 3, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (77, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 4, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (78, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 4, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (79, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 5, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (80, CAST(N'2015-01-16 00:00:00.000' AS DateTime), 2, 5, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (81, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 1, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (82, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 1, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (83, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 2, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (84, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 2, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (85, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 3, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (86, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 3, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (87, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 4, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (88, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 4, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (89, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 5, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (90, CAST(N'2015-01-17 00:00:00.000' AS DateTime), 2, 5, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (91, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 1, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (92, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 1, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (93, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 2, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (94, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 2, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (95, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 3, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (96, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 3, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (97, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 4, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (98, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 4, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (99, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 5, 1, 24)
GO
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (100, CAST(N'2015-01-18 00:00:00.000' AS DateTime), 2, 5, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (101, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 1, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (102, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 1, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (103, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 2, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (104, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 2, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (105, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 3, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (106, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 3, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (107, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 4, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (108, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 4, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (109, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 5, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (110, CAST(N'2015-01-19 00:00:00.000' AS DateTime), 2, 5, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (111, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 1, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (112, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 1, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (113, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 2, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (114, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 2, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (115, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 3, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (116, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 3, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (117, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 4, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (118, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 4, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (119, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 5, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (120, CAST(N'2015-01-20 00:00:00.000' AS DateTime), 2, 5, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (121, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 1, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (122, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 1, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (123, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 2, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (124, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 2, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (125, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 3, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (126, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 3, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (127, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 4, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (128, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 4, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (129, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 5, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (130, CAST(N'2015-01-21 00:00:00.000' AS DateTime), 2, 5, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (131, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 1, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (132, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 1, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (133, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 2, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (134, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 2, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (135, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 3, 1, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (136, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 3, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (137, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 4, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (138, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 4, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (139, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 5, 1, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (140, CAST(N'2015-01-22 00:00:00.000' AS DateTime), 2, 5, 2, 24)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (141, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 1, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (142, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 1, 2, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (143, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 2, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (144, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 2, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (145, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 3, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (146, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 3, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (147, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 4, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (148, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 4, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (149, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 5, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (150, CAST(N'2015-01-23 00:00:00.000' AS DateTime), 3, 5, 2, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (151, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 1, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (152, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 1, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (153, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 2, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (154, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 2, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (155, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 3, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (156, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 3, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (157, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 4, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (158, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (159, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 5, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (160, CAST(N'2015-01-24 00:00:00.000' AS DateTime), 3, 5, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (161, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 1, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (162, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 1, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (163, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 2, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (164, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 2, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (165, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 3, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (166, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 3, 2, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (167, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 4, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (168, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 4, 2, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (169, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 5, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (170, CAST(N'2015-01-25 00:00:00.000' AS DateTime), 3, 5, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (171, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 1, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (172, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 1, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (173, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 2, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (174, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 2, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (175, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 3, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (176, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 3, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (177, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 4, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (178, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 4, 2, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (179, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 5, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (180, CAST(N'2015-01-26 00:00:00.000' AS DateTime), 3, 5, 2, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (181, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 1, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (182, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 1, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (183, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 2, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (184, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 2, 2, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (185, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 3, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (186, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 3, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (187, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 4, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (188, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 4, 2, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (189, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 5, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (190, CAST(N'2015-01-27 00:00:00.000' AS DateTime), 3, 5, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (191, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 1, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (192, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 1, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (193, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 2, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (194, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 2, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (195, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 3, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (196, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 3, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (197, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 4, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (198, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (199, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 5, 1, 25)
GO
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (200, CAST(N'2015-01-28 00:00:00.000' AS DateTime), 3, 5, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (201, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 1, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (202, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 1, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (203, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 2, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (204, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 2, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (205, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 3, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (206, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 3, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (207, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 4, 1, 10)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (208, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (209, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 5, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (210, CAST(N'2015-01-29 00:00:00.000' AS DateTime), 3, 5, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (211, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 1, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (212, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 1, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (213, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 2, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (214, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 2, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (215, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 3, 1, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (216, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 3, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (217, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 4, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (218, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 4, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (219, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 5, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (220, CAST(N'2015-01-30 00:00:00.000' AS DateTime), 4, 5, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (221, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 1, 1, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (222, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 1, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (223, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 2, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (224, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 2, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (225, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 3, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (226, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 3, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (227, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 4, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (228, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 4, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (229, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 5, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (230, CAST(N'2015-01-31 00:00:00.000' AS DateTime), 4, 5, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (231, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 1, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (232, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 1, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (233, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 2, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (234, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 2, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (235, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 3, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (236, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 3, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (237, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 4, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (238, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 4, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (239, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 5, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (240, CAST(N'2015-02-01 00:00:00.000' AS DateTime), 4, 5, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (241, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 1, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (242, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 1, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (243, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 2, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (244, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 2, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (245, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 3, 1, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (246, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 3, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (247, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 4, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (248, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 4, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (249, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 5, 1, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (250, CAST(N'2015-02-02 00:00:00.000' AS DateTime), 4, 5, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (251, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 1, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (252, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 1, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (253, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 2, 1, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (254, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 2, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (255, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 3, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (256, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 3, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (257, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 4, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (258, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 4, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (259, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 5, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (260, CAST(N'2015-02-03 00:00:00.000' AS DateTime), 4, 5, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (261, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 1, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (262, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 1, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (263, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 2, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (264, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 2, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (265, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 3, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (266, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 3, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (267, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 4, 1, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (268, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 4, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (269, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 5, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (270, CAST(N'2015-02-04 00:00:00.000' AS DateTime), 4, 5, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (271, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 1, 1, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (272, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 1, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (273, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 2, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (274, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 2, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (275, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 3, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (276, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 3, 2, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (277, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 4, 1, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (278, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 4, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (279, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 5, 1, 1)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (280, CAST(N'2015-02-05 00:00:00.000' AS DateTime), 4, 5, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (281, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 1, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (282, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 1, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (283, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 2, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (284, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 2, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (285, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 3, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (286, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 3, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (287, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 4, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (288, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 4, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (289, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 5, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (290, CAST(N'2015-03-30 00:00:00.000' AS DateTime), 5, 5, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (291, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 1, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (292, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 1, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (293, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 2, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (294, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 2, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (295, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 3, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (296, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 3, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (297, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 4, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (298, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (299, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 5, 1, 5)
GO
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (300, CAST(N'2015-03-31 00:00:00.000' AS DateTime), 5, 5, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (301, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 1, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (302, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 1, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (303, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 2, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (304, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 2, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (305, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 3, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (306, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 3, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (307, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 4, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (308, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (309, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 5, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (310, CAST(N'2015-04-01 00:00:00.000' AS DateTime), 5, 5, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (311, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 1, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (312, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 1, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (313, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 2, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (314, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 2, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (315, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 3, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (316, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 3, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (317, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 4, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (318, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 4, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (319, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 5, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (320, CAST(N'2015-04-02 00:00:00.000' AS DateTime), 5, 5, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (321, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 1, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (322, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 1, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (323, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 2, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (324, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 2, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (325, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 3, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (326, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 3, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (327, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 4, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (328, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (329, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 5, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (330, CAST(N'2015-04-03 00:00:00.000' AS DateTime), 5, 5, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (331, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 1, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (332, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 1, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (333, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 2, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (334, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 2, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (335, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 3, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (336, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 3, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (337, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 4, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (338, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (339, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 5, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (340, CAST(N'2015-04-04 00:00:00.000' AS DateTime), 5, 5, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (341, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 1, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (342, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 1, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (343, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 2, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (344, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 2, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (345, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 3, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (346, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 3, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (347, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 4, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (348, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 4, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (349, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 5, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (350, CAST(N'2015-04-05 00:00:00.000' AS DateTime), 5, 5, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (351, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 1, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (352, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 1, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (353, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 2, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (354, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 2, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (355, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 3, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (356, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 3, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (357, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 4, 1, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (358, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 4, 2, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (359, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 5, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (360, CAST(N'2015-04-06 00:00:00.000' AS DateTime), 6, 5, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (361, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 1, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (362, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 1, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (363, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 2, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (364, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 2, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (365, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 3, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (366, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 3, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (367, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 4, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (368, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 4, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (369, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 5, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (370, CAST(N'2015-04-07 00:00:00.000' AS DateTime), 6, 5, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (371, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 1, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (372, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 1, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (373, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 2, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (374, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 2, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (375, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 3, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (376, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 3, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (377, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 4, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (378, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 4, 2, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (379, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 5, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (380, CAST(N'2015-04-08 00:00:00.000' AS DateTime), 6, 5, 2, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (381, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 1, 1, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (382, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 1, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (383, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 2, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (384, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 2, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (385, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 3, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (386, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 3, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (387, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 4, 1, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (388, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 4, 2, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (389, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 5, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (390, CAST(N'2015-04-09 00:00:00.000' AS DateTime), 6, 5, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (391, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 1, 1, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (392, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 1, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (393, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 2, 1, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (394, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 2, 2, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (395, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 3, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (396, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 3, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (397, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 4, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (398, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 4, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (399, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 5, 1, 5)
GO
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (400, CAST(N'2015-04-10 00:00:00.000' AS DateTime), 6, 5, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (401, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 1, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (402, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 1, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (403, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 2, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (404, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 2, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (405, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 3, 1, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (406, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 3, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (407, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 4, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (408, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 4, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (409, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 5, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (410, CAST(N'2015-04-11 00:00:00.000' AS DateTime), 6, 5, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (411, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 1, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (412, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 1, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (413, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 2, 1, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (414, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 2, 2, 3)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (415, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 3, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (416, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 3, 2, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (417, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 4, 1, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (418, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 4, 2, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (419, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 5, 1, 5)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (420, CAST(N'2015-04-12 00:00:00.000' AS DateTime), 6, 5, 2, 15)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (421, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 1, 1, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (422, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 1, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (423, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 2, 1, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (424, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 2, 2, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (425, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 3, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (426, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 3, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (427, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 4, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (428, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (429, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 5, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (430, CAST(N'2015-04-13 00:00:00.000' AS DateTime), 7, 5, 2, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (431, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 1, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (432, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 1, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (433, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 2, 1, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (434, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 2, 2, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (435, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 3, 1, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (436, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 3, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (437, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 4, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (438, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (439, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 5, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (440, CAST(N'2015-04-14 00:00:00.000' AS DateTime), 7, 5, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (441, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 1, 1, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (442, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 1, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (443, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 2, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (444, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 2, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (445, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 3, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (446, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 3, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (447, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 4, 1, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (448, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (449, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 5, 1, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (450, CAST(N'2015-04-15 00:00:00.000' AS DateTime), 7, 5, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (451, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 1, 1, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (452, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 1, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (453, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 2, 1, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (454, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 2, 2, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (455, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 3, 1, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (456, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 3, 2, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (457, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 4, 1, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (458, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 4, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (459, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 5, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (460, CAST(N'2015-04-16 00:00:00.000' AS DateTime), 7, 5, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (461, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 1, 1, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (462, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 1, 2, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (463, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 2, 1, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (464, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 2, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (465, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 3, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (466, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 3, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (467, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 4, 1, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (468, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (469, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 5, 1, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (470, CAST(N'2015-04-17 00:00:00.000' AS DateTime), 7, 5, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (471, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 1, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (472, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 1, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (473, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 2, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (474, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 2, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (475, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 3, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (476, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 3, 2, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (477, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 4, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (478, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 4, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (479, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 5, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (480, CAST(N'2015-04-18 00:00:00.000' AS DateTime), 7, 5, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (481, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 1, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (482, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 1, 2, 23)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (483, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 2, 1, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (484, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 2, 2, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (485, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 3, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (486, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 3, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (487, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 4, 1, 25)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (488, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 4, 2, 11)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (489, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 5, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (490, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 7, 5, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (491, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 1, 1, 41)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (492, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 1, 2, 42)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (493, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 2, 1, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (494, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 2, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (495, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 3, 1, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (496, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 3, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (497, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 4, 1, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (498, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 4, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (499, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 5, 1, 45)
GO
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (500, CAST(N'2015-04-19 00:00:00.000' AS DateTime), 8, 5, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (501, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 1, 1, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (502, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 1, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (503, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 2, 1, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (504, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 2, 2, 14)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (505, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 3, 1, 13)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (506, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 3, 2, 14)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (507, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 4, 1, 13)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (508, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 4, 2, 14)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (509, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 5, 1, 13)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (510, CAST(N'2015-04-20 00:00:00.000' AS DateTime), 8, 5, 2, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (511, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 1, 1, 41)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (512, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 1, 2, 42)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (513, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 2, 1, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (514, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 2, 2, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (515, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 3, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (516, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 3, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (517, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 4, 1, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (518, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 4, 2, 42)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (519, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 5, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (520, CAST(N'2015-04-21 00:00:00.000' AS DateTime), 8, 5, 2, 42)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (521, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 1, 1, 42)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (522, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 1, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (523, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 2, 1, 41)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (524, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 2, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (525, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 3, 1, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (526, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 3, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (527, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 4, 1, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (528, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 4, 2, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (529, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 5, 1, 29)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (530, CAST(N'2015-04-22 00:00:00.000' AS DateTime), 8, 5, 2, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (531, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 1, 1, 28)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (532, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 1, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (533, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 2, 1, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (534, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 2, 2, 14)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (535, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 3, 1, 13)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (536, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 3, 2, 28)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (537, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 4, 1, 29)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (538, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 4, 2, 30)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (539, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 5, 1, 31)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (540, CAST(N'2015-04-23 00:00:00.000' AS DateTime), 8, 5, 2, 32)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (541, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 1, 1, 33)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (542, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 1, 2, 34)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (543, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 2, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (544, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 2, 2, 36)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (545, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 3, 1, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (546, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 3, 2, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (547, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 4, 1, 39)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (548, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 4, 2, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (549, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 5, 1, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (550, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 5, 2, 42)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (551, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 1, 1, 41)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (552, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 1, 2, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (553, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 2, 1, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (554, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 2, 2, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (555, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 3, 1, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (556, CAST(N'2015-04-24 00:00:00.000' AS DateTime), 8, 3, 2, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (557, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 4, 1, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (558, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 4, 2, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (559, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 5, 1, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (560, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 3, 4, 36)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (561, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 2, 3, 35)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (565, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 3, 1, 36)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (566, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 4, 2, 37)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (567, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 5, 2, 38)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (568, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 2, 2, 39)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (569, CAST(N'2015-04-25 00:00:00.000' AS DateTime), 8, 1, 1, 40)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (570, CAST(N'2015-04-26 00:00:00.000' AS DateTime), 8, 2, 1, 41)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (571, CAST(N'2015-04-26 00:00:00.000' AS DateTime), 8, 3, 2, 42)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (572, CAST(N'2015-04-26 00:00:00.000' AS DateTime), 8, 1, 2, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (573, CAST(N'2015-04-26 00:00:00.000' AS DateTime), 8, 3, 1, 46)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (574, CAST(N'2015-04-26 00:00:00.000' AS DateTime), 8, 4, 2, 45)
INSERT [dbo].[XUAT_CHIEU] ([ID], [Ngay], [ID_LICH_CHIEU], [ID_CA_CHIEU], [ID_PHONG], [ID_PHIM]) VALUES (575, CAST(N'2015-04-26 00:00:00.000' AS DateTime), 8, 5, 1, 46)
SET IDENTITY_INSERT [dbo].[XUAT_CHIEU] OFF
ALTER TABLE [dbo].[BAO_GOM]  WITH CHECK ADD  CONSTRAINT [FK_BAO_GOM_LICH_CHIEU] FOREIGN KEY([ID_LICH_CHIEU])
REFERENCES [dbo].[LICH_CHIEU] ([ID])
GO
ALTER TABLE [dbo].[BAO_GOM] CHECK CONSTRAINT [FK_BAO_GOM_LICH_CHIEU]
GO
ALTER TABLE [dbo].[BAO_GOM]  WITH CHECK ADD  CONSTRAINT [FK_BAO_GOM_PHIM] FOREIGN KEY([ID_PHIM])
REFERENCES [dbo].[PHIM] ([ID])
GO
ALTER TABLE [dbo].[BAO_GOM] CHECK CONSTRAINT [FK_BAO_GOM_PHIM]
GO
ALTER TABLE [dbo].[GHE]  WITH CHECK ADD  CONSTRAINT [FK_GHE_PHONG] FOREIGN KEY([ID_PHONG])
REFERENCES [dbo].[PHONG] ([ID])
GO
ALTER TABLE [dbo].[GHE] CHECK CONSTRAINT [FK_GHE_PHONG]
GO
ALTER TABLE [dbo].[NGUOI_DUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOI_DUNG_NHOM_NGUOI_DUNG] FOREIGN KEY([ID_NHOM_NGUOI_DUNG])
REFERENCES [dbo].[NHOM_NGUOI_DUNG] ([ID])
GO
ALTER TABLE [dbo].[NGUOI_DUNG] CHECK CONSTRAINT [FK_NGUOI_DUNG_NHOM_NGUOI_DUNG]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK_VE_GHE] FOREIGN KEY([ID_GHE])
REFERENCES [dbo].[GHE] ([ID])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK_VE_GHE]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [FK_VE_XUAT_CHIEU] FOREIGN KEY([ID_XUAT_CHIEU])
REFERENCES [dbo].[XUAT_CHIEU] ([ID])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [FK_VE_XUAT_CHIEU]
GO
ALTER TABLE [dbo].[XUAT_CHIEU]  WITH CHECK ADD  CONSTRAINT [FK_XUAT_CHIEU_CA_CHIEU] FOREIGN KEY([ID_CA_CHIEU])
REFERENCES [dbo].[CA_CHIEU] ([ID])
GO
ALTER TABLE [dbo].[XUAT_CHIEU] CHECK CONSTRAINT [FK_XUAT_CHIEU_CA_CHIEU]
GO
ALTER TABLE [dbo].[XUAT_CHIEU]  WITH CHECK ADD  CONSTRAINT [FK_XUAT_CHIEU_LICH_CHIEU] FOREIGN KEY([ID_LICH_CHIEU])
REFERENCES [dbo].[LICH_CHIEU] ([ID])
GO
ALTER TABLE [dbo].[XUAT_CHIEU] CHECK CONSTRAINT [FK_XUAT_CHIEU_LICH_CHIEU]
GO
ALTER TABLE [dbo].[XUAT_CHIEU]  WITH CHECK ADD  CONSTRAINT [FK_XUAT_CHIEU_PHIM] FOREIGN KEY([ID_PHIM])
REFERENCES [dbo].[PHIM] ([ID])
GO
ALTER TABLE [dbo].[XUAT_CHIEU] CHECK CONSTRAINT [FK_XUAT_CHIEU_PHIM]
GO
ALTER TABLE [dbo].[XUAT_CHIEU]  WITH CHECK ADD  CONSTRAINT [FK_XUAT_CHIEU_PHONG] FOREIGN KEY([ID_PHONG])
REFERENCES [dbo].[PHONG] ([ID])
GO
ALTER TABLE [dbo].[XUAT_CHIEU] CHECK CONSTRAINT [FK_XUAT_CHIEU_PHONG]
GO
/****** Object:  StoredProcedure [dbo].[LapLichChieuPhim]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LapLichChieuPhim] @idLichChieu int
	
AS
BEGIN
	select '1'
END


GO
/****** Object:  StoredProcedure [dbo].[spThemPhong]    Script Date: 08/12/2015 6:53:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spThemPhong]
	
AS
BEGIN
	Insert into Phong(Ten) values('Phong new')
END


GO
USE [master]
GO
ALTER DATABASE [QLPHIM] SET  READ_WRITE 
GO
