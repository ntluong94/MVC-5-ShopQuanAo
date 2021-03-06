USE [master]
GO
/****** Object:  Database [ShopQuanAoLite]    Script Date: 12/05/2018 2:56:59 PM ******/
CREATE DATABASE [ShopQuanAoLite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopQuanAoLite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShopQuanAoLite.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopQuanAoLite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShopQuanAoLite_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopQuanAoLite] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopQuanAoLite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopQuanAoLite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopQuanAoLite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopQuanAoLite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopQuanAoLite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopQuanAoLite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopQuanAoLite] SET  MULTI_USER 
GO
ALTER DATABASE [ShopQuanAoLite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopQuanAoLite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopQuanAoLite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopQuanAoLite] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopQuanAoLite] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopQuanAoLite', N'ON'
GO
USE [ShopQuanAoLite]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[TaiKhoanAdmin] [varchar](30) NOT NULL,
	[MatKhau] [varchar](30) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoanAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](255) NULL,
	[NoiDung] [text] NULL,
	[NgayBL] [date] NULL,
	[MaKH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC,
	[MaKH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BoSuuTap]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoSuuTap](
	[MaBST] [int] IDENTITY(1,1) NOT NULL,
	[TenBST] [nvarchar](50) NULL,
 CONSTRAINT [PK_BosuuTap] PRIMARY KEY CLUSTERED 
(
	[MaBST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NULL,
	[MaS] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhAnh] [nvarchar](200) NULL,
	[MaSP] [int] NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLapHD] [date] NULL,
	[MaKH] [int] NULL,
	[DiaChiGiaoHang] [nvarchar](255) NULL,
	[TrangThai] [bit] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [int] NOT NULL,
	[DiaChi] [text] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaL] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[MaGioiTinh] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[MaQC] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnhQC] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[MaQC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[GiaKhuyenMai] [bigint] NULL,
	[GiaBan] [bigint] NULL,
	[MaL] [int] NULL,
	[MaBST] [int] NULL,
	[SoLuong] [int] NULL,
	[ThongTin] [nvarchar](1000) NULL,
	[GioiTinh] [int] NULL,
	[ngayNhapHang] [date] NULL,
	[AnhBia] [nvarchar](255) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPhamSize]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamSize](
	[MaSP] [int] NOT NULL,
	[MaS] [int] NOT NULL,
 CONSTRAINT [PK_SanPhamSize] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 12/05/2018 2:56:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[MaS] [int] IDENTITY(1,1) NOT NULL,
	[TenS] [nchar](3) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[MaS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([TaiKhoanAdmin], [MatKhau], [HoTen], [Email]) VALUES (N'admin', N'admin', N'Nguyen Thanh Luong', N'ntluong823@gmail.com')
SET IDENTITY_INSERT [dbo].[BoSuuTap] ON 

INSERT [dbo].[BoSuuTap] ([MaBST], [TenBST]) VALUES (1, N'NONE')
INSERT [dbo].[BoSuuTap] ([MaBST], [TenBST]) VALUES (9, N'Xuân hè')
INSERT [dbo].[BoSuuTap] ([MaBST], [TenBST]) VALUES (10, N'Thu đông')
SET IDENTITY_INSERT [dbo].[BoSuuTap] OFF
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaS], [TenSP], [DonGia], [SoLuong]) VALUES (40, NULL, 1, N'7', 11111, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaS], [TenSP], [DonGia], [SoLuong]) VALUES (41, NULL, 2, N'vay xinh', 2222, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaS], [TenSP], [DonGia], [SoLuong]) VALUES (42, NULL, 2, N'vay xinh2-4119', 2222, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaS], [TenSP], [DonGia], [SoLuong]) VALUES (43, NULL, 2, N'4128 - Vay', 111, 1)
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2117, N'images/hinhanh/chanvaysexy.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2118, N'images/hinhanh/Funny01.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2119, N'images/hinhanh/Kute01.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2120, N'images/hinhanh/QC.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2121, N'images/hinhanh/QC1.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2122, N'images/hinhanh/QC2.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2123, N'images/hinhanh/quanjeannamb39.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2124, N'images/hinhanh/quanjeannamb131.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2125, N'images/hinhanh/quanjeannamms104.jpg', 4120)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2126, N'images/hinhanh/quanjeannu267.jpg', 4121)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2127, N'images/hinhanh/quanjeannut19.jpg', 4121)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2128, N'images/hinhanh/quanjoggernu.jpg', 4121)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2129, N'images/hinhanh/quankakinamhollis.jpg', 4121)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2130, N'images/hinhanh/quankakinamhq.jpg', 4121)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2131, N'images/hinhanh/quankakinamkhoazip.jpg', 4121)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2132, N'images/hinhanh/quanshortskakinu.jpg', 4121)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2133, N'images/hinhanh/quanyemjeannu.jpg', 4121)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2134, N'images/hinhanh/aothunnu01.jpg', 4122)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2135, N'images/hinhanh/aothunnu02.jpg', 4122)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2136, N'images/hinhanh/aothunnu03.jpg', 4122)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2137, N'images/hinhanh/aokhoacnuphao.jpg', 4123)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2138, N'images/hinhanh/aothunnu01.jpg', 4123)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2139, N'images/hinhanh/aothunnu02.jpg', 4123)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2140, N'images/hinhanh/aothunnu03.jpg', 4123)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2141, N'images/hinhanh/aothunnu04.jpg', 4123)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2142, N'images/hinhanh/aothuntronnam.jpg', 4123)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2143, N'images/hinhanh/AXN01.jpg', 4123)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2144, N'images/hinhanh/chanvaysexy.jpg', 4123)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2145, N'images/hinhanh/41.jpg', 4124)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2146, N'images/hinhanh/aokhoacnuphao.jpg', 4125)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2147, N'images/hinhanh/aothunnu01.jpg', 4125)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2148, N'images/hinhanh/aothunnu02.jpg', 4125)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2149, N'images/hinhanh/aothunnu03.jpg', 4125)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2150, N'images/hinhanh/aothunnu04.jpg', 4125)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2151, N'images/hinhanh/aothuntronnam.jpg', 4125)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2152, N'images/hinhanh/AXN01.jpg', 4125)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2153, N'images/hinhanh/chanvaysexy.jpg', 4125)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2154, N'images/hinhanh/aothunnu01.jpg', 4126)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2155, N'images/hinhanh/aothunnu02.jpg', 4126)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2156, N'images/hinhanh/aothunnu03.jpg', 4126)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2157, N'images/hinhanh/quankakinamhq.jpg', 4127)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2158, N'images/hinhanh/quankakinamkhoazip.jpg', 4127)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2159, N'images/hinhanh/quanshortskakinu.jpg', 4127)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2160, N'images/hinhanh/quanyemjeannu.jpg', 4127)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2161, N'images/hinhanh/Rock01.jpg', 4127)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2162, N'images/hinhanh/sominua06.jpg', 4127)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2163, N'images/hinhanh/sominuvienco.jpg', 4127)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (2164, N'images/hinhanh/somisocdungnam.jpg', 4127)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayLapHD], [MaKH], [DiaChiGiaoHang], [TrangThai], [GhiChu]) VALUES (40, CAST(N'2018-05-12' AS Date), 1, N'376', 0, N'ggt')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLapHD], [MaKH], [DiaChiGiaoHang], [TrangThai], [GhiChu]) VALUES (41, CAST(N'2018-05-12' AS Date), 1, N'376', 0, N'ssss')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLapHD], [MaKH], [DiaChiGiaoHang], [TrangThai], [GhiChu]) VALUES (42, CAST(N'2018-05-12' AS Date), 1, N'376', 0, N'ggt')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLapHD], [MaKH], [DiaChiGiaoHang], [TrangThai], [GhiChu]) VALUES (43, CAST(N'2018-05-12' AS Date), 1, N'376', 0, N'aa')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [DiaChi], [Email], [SoDienThoai]) VALUES (1, N'ntluong94', N'111111', N'Nguyen Thanh Luong', 0, N'376', N'ntluong823@gmail.com', N'0975645410')
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [DiaChi], [Email], [SoDienThoai]) VALUES (3, N'ntluong96', N'111111', N'Nguyen Thanh Luong', 0, N'665', N'ntuong826@gmail.com', N'223232')
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [DiaChi], [Email], [SoDienThoai]) VALUES (4, N'ntluong97', N'111111', N'dfdsfsdfdsfds', 0, N'dsfsdfdfds', N'ntluong827@gmail.com', N'34453453')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (1, N'Áo thun nam', 1)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (2, N'Áo sơ mi nam', 1)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (3, N'Áo khoác nam', 1)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (4, N'Quần jean nam', 1)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (5, N'Quần kaki nam', 1)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (6, N'Áo thun nữ', 0)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (7, N'Áo sơ mi nữ', 0)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (8, N'Á khoác nữ', 0)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (9, N'Quần jean nữ', 0)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (10, N'Quần kaki nữ', 0)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (11, N'Váy', 0)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (15, N'vayyyy', 0)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[QuangCao] ON 

INSERT [dbo].[QuangCao] ([MaQC], [HinhAnhQC]) VALUES (7, N'/images/quangcao/QC1.jpg')
INSERT [dbo].[QuangCao] ([MaQC], [HinhAnhQC]) VALUES (9, N'/images/quangcao/QC2.jpg')
INSERT [dbo].[QuangCao] ([MaQC], [HinhAnhQC]) VALUES (13, N'/images/quangcao/QC2.jpg')
SET IDENTITY_INSERT [dbo].[QuangCao] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia]) VALUES (4120, N'11', 11, 11, 11, 9, 111, N'sdsdsd', 0, CAST(N'2018-04-25' AS Date), N'images/anhbia/AXN01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia]) VALUES (4121, N'22', 22, 22, 11, 9, NULL, N'đ', 0, CAST(N'2018-04-16' AS Date), N'images/anhbia/39.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia]) VALUES (4122, N'22', 22, 22, 11, 9, NULL, N'đ', 0, NULL, N'images/anhbia/Kute01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia]) VALUES (4123, N'11', 11, 11, 11, 9, 111, N'sdsdsd', 0, NULL, N'images/anhbia/ao012.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia]) VALUES (4124, N'222', 22, 222, 11, 9, 222, N'sd', 0, NULL, N'images/anhbia/39.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia]) VALUES (4125, N'4444', 44, 44, 11, 9, 55, N'fgfg', 0, NULL, N'images/anhbia/Funny01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia]) VALUES (4126, N'11', 11, 11, 11, 1, 111, N'dfdsf', 0, CAST(N'2018-04-25' AS Date), N'images/anhbia/ao012.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia]) VALUES (4127, N'888', 88, 88, 11, 9, 111, N'dffdf', 0, NULL, N'images/anhbia/quanshortskakinu.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4120, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4120, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4121, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4122, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4123, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4123, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4124, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4125, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4126, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4127, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (4127, 4)
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (1, N'S  ')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (2, N'M  ')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (3, N'L  ')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (4, N'XL ')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (5, N'XXL')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (9, N'MML')
SET IDENTITY_INSERT [dbo].[Size] OFF
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [Fk_KhachHangBL] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [Fk_KhachHangBL]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [Fk_SanPhamBL] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [Fk_SanPhamBL]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_Size] FOREIGN KEY([MaS])
REFERENCES [dbo].[Size] ([MaS])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_Size]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamHA] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_SanPhamHA]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [Fk_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [Fk_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_BoSuuTap] FOREIGN KEY([MaBST])
REFERENCES [dbo].[BoSuuTap] ([MaBST])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_BoSuuTap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPham] FOREIGN KEY([MaL])
REFERENCES [dbo].[LoaiSanPham] ([MaL])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPhamSize]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamSize_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[SanPhamSize] CHECK CONSTRAINT [FK_SanPhamSize_SanPham]
GO
ALTER TABLE [dbo].[SanPhamSize]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamSize_Size] FOREIGN KEY([MaS])
REFERENCES [dbo].[Size] ([MaS])
GO
ALTER TABLE [dbo].[SanPhamSize] CHECK CONSTRAINT [FK_SanPhamSize_Size]
GO
USE [master]
GO
ALTER DATABASE [ShopQuanAoLite] SET  READ_WRITE 
GO
