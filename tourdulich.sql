/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [TourDuLich]    Script Date: 11/26/2017 3:39:17 PM ******/
CREATE DATABASE [TourDuLich] ON  PRIMARY 
( NAME = N'TourDuLich', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\TourDuLich.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TourDuLich_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\TourDuLich_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TourDuLich].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TourDuLich] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TourDuLich] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TourDuLich] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TourDuLich] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TourDuLich] SET ARITHABORT OFF 
GO
ALTER DATABASE [TourDuLich] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TourDuLich] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TourDuLich] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TourDuLich] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TourDuLich] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TourDuLich] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TourDuLich] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TourDuLich] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TourDuLich] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TourDuLich] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TourDuLich] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TourDuLich] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TourDuLich] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TourDuLich] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TourDuLich] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TourDuLich] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TourDuLich] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TourDuLich] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TourDuLich] SET  MULTI_USER 
GO
ALTER DATABASE [TourDuLich] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TourDuLich] SET DB_CHAINING OFF 
GO
USE [TourDuLich]
GO
/****** Object:  Table [dbo].[BangDangKy]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDangKy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[MaThoiGian] [int] NULL,
	[MaDoanDuLich] [int] NULL,
	[NgayDangKy] [datetime] NULL,
 CONSTRAINT [PK_KhachDangKy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiPhiAnUong]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiPhiAnUong](
	[MaChiPhiAnUong] [int] IDENTITY(1,1) NOT NULL,
	[TenQuanAn] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_ChiPhiAnUong] PRIMARY KEY CLUSTERED 
(
	[MaChiPhiAnUong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiPhiKhachSan]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiPhiKhachSan](
	[MaChiPhiKhachSan] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachSan] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_ChiPhiKhachSan] PRIMARY KEY CLUSTERED 
(
	[MaChiPhiKhachSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiPhiPhatSinh]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiPhiPhatSinh](
	[MaChiPhiPhatSinh] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](250) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_ChiPhiPhatSinh] PRIMARY KEY CLUSTERED 
(
	[MaChiPhiPhatSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiPhiPhuongTien]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiPhiPhuongTien](
	[MaChiPhiPhuongTien] [int] IDENTITY(1,1) NOT NULL,
	[TenPhuongTien] [nvarchar](250) NULL,
	[BienSoXe] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_ChiPhiPhuongTien] PRIMARY KEY CLUSTERED 
(
	[MaChiPhiPhuongTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDiaDiem]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDiaDiem](
	[MaChiTietDiaDiem] [int] IDENTITY(1,1) NOT NULL,
	[MaDiaDiem] [int] NULL,
	[GhiChu] [nvarchar](250) NULL,
 CONSTRAINT [PK_ChiTietDiaDiem] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDiaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiem](
	[MaDiaDiem] [int] IDENTITY(1,1) NOT NULL,
	[MaTinhThanh] [int] NULL,
	[TenDiaDiem] [nvarchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_DiaDiem] PRIMARY KEY CLUSTERED 
(
	[MaDiaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanDuLich]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanDuLich](
	[MaDoanDuLich] [int] IDENTITY(1,1) NOT NULL,
	[MaThoiGianTour] [int] NULL,
	[TenDoanDuLich] [nvarchar](250) NULL,
	[SoLuongKhach] [int] NULL,
	[SoLuongNhanVien] [int] NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_DoanDuLich] PRIMARY KEY CLUSTERED 
(
	[MaDoanDuLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaTour]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaTour] [int] NULL,
	[ThoiGianBatDau] [nvarchar](50) NULL,
	[ThoiGianKetThuc] [nvarchar](50) NULL,
	[GiaTien] [float] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_GiaTour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](250) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[CMND] [nvarchar](12) NULL,
	[Passport] [nvarchar](50) NULL,
	[QuocTich] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTrinh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaDoanDuLich] [int] NULL,
	[Ngay] [int] NULL,
	[Buoi] [nvarchar](250) NULL,
	[MaChiTietDiaDiem] [int] NULL,
	[MaChiPhiKhachSan] [int] NULL,
	[MaChiPhiAnUong] [int] NULL,
	[MaChiPhiPhuongTien] [int] NULL,
	[MaChiPhiPhatSinh] [int] NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_LichTrinh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHinhDuLich]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHinhDuLich](
	[MaLoaiHinh] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiHinh] [nvarchar](250) NULL,
 CONSTRAINT [PK_LoaiHinhDuLich] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](250) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[CMND] [nvarchar](12) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhiemVu]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhiemVu](
	[MaNhiemVu] [int] IDENTITY(1,1) NOT NULL,
	[TenNhiemVu] [nvarchar](250) NULL,
 CONSTRAINT [PK_NhiemVu] PRIMARY KEY CLUSTERED 
(
	[MaNhiemVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaDoanDuLich] [int] NULL,
	[MaNhanVien] [int] NULL,
	[MaNhiemVu] [int] NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiGianTour]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiGianTour](
	[MaThoiGianTour] [int] IDENTITY(1,1) NOT NULL,
	[MaTour] [int] NULL,
	[NgayDi] [date] NULL,
	[NgayVe] [date] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_ThoiGian] PRIMARY KEY CLUSTERED 
(
	[MaThoiGianTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[MaTinhThanh] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanh] [nvarchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_TinhThanh] PRIMARY KEY CLUSTERED 
(
	[MaTinhThanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiHinh] [int] NULL,
	[TenTour] [nvarchar](500) NULL,
	[SoNgay] [int] NULL,
	[SoDem] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourDiemThamQuan]    Script Date: 11/26/2017 3:39:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourDiemThamQuan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaTour] [int] NULL,
	[MaDiaDiem] [int] NULL,
 CONSTRAINT [PK_TourDiemThamQuan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DiaDiem] ON 

INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (1, 63, N'Chợ Bến Thành', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (2, 63, N'Nhà Thờ Đức Bà', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (3, 63, N'Bưu Điện trung tâm Sài Gòn', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (4, 63, N'Nhà Hát Lớn', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (5, 63, N'Sài Gòn Square', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (6, 63, N'Cầu Ánh Sao', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (7, 63, N'Dinh Độc Lập', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (8, 63, N'Công viên nước Đầm Sen', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (9, 63, N'Khu du lịch văn hóa Suối Tiên', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (10, 31, N'Ga Đà Lạt', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (11, 31, N'Đỉnh LangBiang', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (12, 31, N'Chợ Đà Lạt', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (13, 31, N'Các vườn dâu ở Đà Lạt', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (14, 31, N'Thung Lũng Tình Yêu', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (15, 31, N'Trường cao đẳng sư phạm Đà Lạt', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (16, 31, N'Nhà Thờ Con Gà', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (17, 31, N'Hồ Xuân Hương', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (18, 31, N'Nhà Thiếu Nhi Đà Lạt', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (19, 31, N'Đồi Chè Cầu Đất', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (20, 31, N'Hồ Tuyền Lâm', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (21, 31, N'Làng Đất Sét', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (22, 31, N'Biệt Thự Hằng Nga', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (23, 31, N'Mê Linh Coffee Garden', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (24, 31, N'Trại Mát', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (25, 31, N'Nhà thờ Domain De Marie', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (26, 31, N'Ma Rừng Lữ Quán', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (27, 31, N'Làng Cù Lần', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (28, 31, N'Thác Datanla', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (29, 31, N'Chùa Linh Phước', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (30, 31, N'Thác Camly', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (31, 31, N'Nhà Ga Xe Lửa TP. Đà Lạt', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (32, 31, N'Thác Prenn', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (33, 31, N'Thiền Viện Trúc Lâm', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (34, 31, N'Vườn hoa Thành Phố Đà Lạt', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (35, 31, N'Hồ Suối Vàng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (36, 31, N'Làng Hoa Vạn Thành', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (37, 31, N'Chùa Thiên Vương Cổ Sát', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (38, 31, N'Dinh Bảo Đại', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (39, 31, N'Đồi Cỏ Hồng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (40, 31, N'Chùa Linh Ấn', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (41, 31, N'Thác Pongour', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (42, 31, N'Thác Dambri', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (43, 31, N'Thác Liên Khương', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (44, 31, N'Hồ Than Thở', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (45, 47, N' Hồ Dầu Tiếng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (46, 47, N' Khu du lịch Ma Thiên Lãnh', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (47, 47, N' Núi Bà Đen', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (48, 47, N' Tòa thánh Tây Ninh', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (49, 47, N' Tháp cổ Bình Thạnh', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (50, 47, N' Tháp Chóp Mạt', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (51, 47, N' Vườn quốc gia Lò Gò – Xa Mát', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (52, 47, N' Tham quan căn cứ trung ương cục miền Nam', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (53, 47, N' Cửa khẩu Mộc Bài', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (54, 47, N' Khu du lịch Long Điền Sơn', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (55, 47, N' Rừng Chàng Riệc', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (56, 47, N' Chùa Thái Sơn núi Cậu', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (57, 47, N' Vườn trái cây Gò Chùa', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (58, 47, N' Vườn trái cây Út Phương', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (59, 47, N' Di tích lịch sử văn hóa chiến thắng Tua Hai', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (60, 51, N'Chùa Thiên Mụ', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (61, 51, N'Núi Ngự Bình', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (62, 51, N'Đại Nội Huế', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (63, 51, N'Hệ thống lăng tẩm', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (64, 51, N'Sông Hương', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (65, 51, N'Bãi biển Thuận An', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (66, 51, N'Bãi biển Lăng Cô', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (67, 51, N'Nhà vườn An Hiên Huế', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (68, 51, N'Bảo tàng mỹ thuật Huế', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (69, 27, N' Du lịch Con Sẻ Tre', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (70, 27, N' Đầm Nha Phu', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (71, 27, N' Bí ẩn thác Yangbay', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (72, 27, N' Hòn Chồng kỳ thú', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (73, 27, N' Chùa Long Sơn yên bình giữa biển trời Nha Trang', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (74, 27, N' Những khu suối khoáng nóng Nha Trang nổi tiếng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (75, 27, N' Khám phá lòng biển Hòn Mun', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (76, 27, N' Bãi biển Dốc Lết', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (77, 27, N' Vinpearl Nha Trang – Đảo Thiên Đường', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (78, 27, N' Lầu Bảo Đại', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (79, 27, N' Viện Hải dương học Nha Trang', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (80, 27, N' Tháp Bà Ponagar', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (81, 27, N' Vịnh Vân Phong', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (82, 27, N' Khu du lịch sinh thái Ba Hồ', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (83, 27, N' Thành cổ Diên Khánh', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (84, 27, N' Vịnh Cam Ranh', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (85, 27, N' Vịnh Ninh Vân', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (86, 27, N' Đảo Bình Ba', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (87, 11, N' Núi Tà Cú', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (88, 11, N' Tháp Poshanư', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (89, 11, N' Suối Tiên', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (90, 11, N' Đồi Hồng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (91, 11, N' Thắng cảnh Bàu Trắng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (92, 11, N' Trường Dục Thanh', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (93, 11, N' Dinh Vạn Thủy Tú', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (94, 11, N' Bãi Rạng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (95, 11, N' Hòn Rơm', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (96, 11, N' Hòn Ghềnh', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (97, 11, N' Đảo Hòn Bà', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (98, 11, N' Hải đăng Kê Gà', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (99, 11, N' Biển & bãi đá Cổ Thạch', 1)
GO
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (100, 11, N' Chùa Hang', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (101, 11, N' Đảo Phú Quý', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (102, 11, N' Cù lao Câu', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (103, 11, N' Mũi Né', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (104, 58, N'Chợ nổi Cái Răng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (105, 58, N'Bến Ninh Kiều', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (106, 58, N'Nhà cổ Bình Thủy', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (107, 58, N'Miệt vườn trái cây', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (108, 58, N'Vườn cò Bằng Lăng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (109, 58, N'Vườn du lịch Mỹ Khánh', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (110, 58, N'Chợ đêm Tây Đô', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (111, 58, N'Làng hoa Bà Bộ', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (112, 58, N'Vãn cảnh chùa Nam Nhã', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (113, 58, N'Bảo tàng Cần Thơ', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (114, 58, N'Thiền viện Trúc Lâm', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (115, 58, N'Chùa Ông', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (116, 12, N'Mũi Cà Mau', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (117, 12, N'Đình Tân Hưng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (118, 12, N'Hòn Khoai', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (119, 12, N'Hòn Đá Bạc', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (120, 12, N'Khu du lịch biển Khai Long', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (121, 12, N'Sân chim Cà Mau', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (122, 12, N'Chợ nổi Cà Mau', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (123, 12, N'Đầm Thị Tường', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (124, 12, N'Rừng quốc gia U Minh hạ', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (125, 12, N'Rừng đước Năm Căn', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (126, 41, N'Chùa Cầu', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (127, 41, N'Hội quán Phúc Kiến', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (128, 41, N'Hội quán Triều Châu', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (129, 41, N'Hội quán Quảng Đông', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (130, 41, N'Nhà thờ tộc Trần', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (131, 41, N'Nhà Cổ Tấn Ký', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (132, 41, N'Xưởng thủ công mỹ nghệ Hội An', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (133, 41, N'Chùa Ông', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (134, 41, N'Giếng Bá Lễ', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (135, 41, N'Bảo tàng lịch sử, văn hóa', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (136, 41, N'Nhà cổ Quân Thắng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (137, 41, N'Chợ Hội An', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (138, 41, N'Nhà cổ Đức An', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (139, 41, N'Làng gốm Thanh Hà', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (140, 41, N'Làng rau Trà Quế', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (141, 41, N'Làng mộc Kim Bồng', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (142, 41, N'Bãi tắm Cửa Đại', 1)
INSERT [dbo].[DiaDiem] ([MaDiaDiem], [MaTinhThanh], [TenDiaDiem], [TrangThai]) VALUES (143, 41, N'Cù Lao Chàm', 1)
SET IDENTITY_INSERT [dbo].[DiaDiem] OFF
SET IDENTITY_INSERT [dbo].[GiaTour] ON 

INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (1, 1, N'2017-01-01', N'2017-03-31', 3500000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (2, 1, N'2017-04-01', N'2017-06-30', 3200000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (3, 1, N'2017-07-01', N'2017-12-31', 2900000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (4, 2, N'2017-01-01', N'2017-03-31', 3100000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (5, 2, N'2017-04-01', N'2017-06-30', 2950000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (6, 2, N'2017-07-01', N'2017-12-31', 2800000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (7, 3, N'2017-01-01', N'2017-03-31', 3500000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (8, 3, N'2017-04-01', N'2017-06-30', 3000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (9, 3, N'2017-07-01', N'2017-12-31', 3000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (10, 4, N'2017-01-01', N'2017-03-31', 3100000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (11, 4, N'2017-04-01', N'2017-06-30', 2950000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (12, 4, N'2017-07-01', N'2017-12-31', 2900000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (13, 5, N'2017-01-01', N'2017-03-31', 3300000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (14, 5, N'2017-04-01', N'2017-06-30', 2980000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (15, 5, N'2017-07-01', N'2017-12-31', 3000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (16, 6, N'2017-01-01', N'2017-03-31', 2800000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (17, 6, N'2017-04-01', N'2017-06-30', 2650000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (18, 6, N'2017-07-01', N'2017-12-31', 2500000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (19, 7, N'2017-01-01', N'2017-03-31', 3300000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (20, 7, N'2017-04-01', N'2017-06-30', 3000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (21, 7, N'2017-07-01', N'2017-12-31', 3200000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (22, 8, N'2017-01-01', N'2017-03-31', 2200000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (23, 8, N'2017-04-01', N'2017-06-30', 2000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (24, 8, N'2017-07-01', N'2017-12-31', 2150000, 1)
SET IDENTITY_INSERT [dbo].[GiaTour] OFF
SET IDENTITY_INSERT [dbo].[LoaiHinhDuLich] ON 

INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (1, N'Du lịch tham quan')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (2, N'Du lịch văn hóa')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (3, N'Du lịch ẩm thực')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (4, N'Du lịch xanh')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (5, N'Du lịch giải trí')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (6, N'Du lịch nghỉ dưỡng')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (7, N'Du lịch khám phá')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (8, N'Du lịch thể thao')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (9, N'Du lịch lễ hội')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (10, N'Du lịch tôn giáo')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (11, N'Du lịch nghiên cứu (học tập)')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (12, N'Du lịch hội nghị')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (13, N'Du lịch thể thao kết hợp')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (14, N'Du lịch chữa bệnh')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (15, N'Du lịch thăm thân')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (16, N'Du lịch kinh doanh')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (17, N'Du lịch quốc tế')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (18, N'Du lịch nội địa')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (19, N'Du lịch quốc gia')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (20, N'Du lịch miền biển')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (21, N'Du lịch núi')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (22, N'Du lịch đô thị')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (23, N'Du lịch thôn quê')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (24, N'Du lịch xe đạp')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (25, N'Du lịch ô tô')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (26, N'Du lịch bằng tàu hoả')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (27, N'Du lịch bằng tàu thuỷ')
INSERT [dbo].[LoaiHinhDuLich] ([MaLoaiHinh], [TenLoaiHinh]) VALUES (28, N'Du lịch máy bay')
SET IDENTITY_INSERT [dbo].[LoaiHinhDuLich] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [DiaChi], [TrangThai]) VALUES (1, N'Nguyễn Nhật Tân', 1, CAST(N'1996-10-06' AS Date), N'012456789', N'0233415646', N'TPHCM', 1)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [DiaChi], [TrangThai]) VALUES (2, N'Nguyễn Hữu Khánh', 1, CAST(N'1996-08-27' AS Date), N'096548654', N'0365463248', N'TPHCM', 1)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [DiaChi], [TrangThai]) VALUES (3, N'Mạc Khải Quân', 1, CAST(N'1996-12-25' AS Date), N'093486254', N'0323486548', N'TPHCM', 1)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [DiaChi], [TrangThai]) VALUES (4, N'Lý Thế Tin', 1, CAST(N'1996-02-14' AS Date), N'034865486', N'3061465468', N'Ninh Thuận', 1)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [DiaChi], [TrangThai]) VALUES (5, N'Trần Thị Mỹ Ngọc', 0, CAST(N'1997-03-27' AS Date), N'093432545', N'0654865484', N'Huế', 1)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [DiaChi], [TrangThai]) VALUES (6, N'Lê Mỹ Hiền', 0, CAST(N'1995-06-01' AS Date), N'0549846548', N'4654862486', N'TPHCM', 1)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [DiaChi], [TrangThai]) VALUES (7, N'Lý Thị Thơm', 0, CAST(N'1994-05-20' AS Date), N'0932453524', N'4321588635', N'TPHCM', 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhiemVu] ON 

INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (1, N'Trưởng đoàn')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (2, N'Tài xế')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (3, N'Hướng dẫn viên')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (4, N'Phục vụ')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (5, N'Thông dịch viên')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (6, N'Tiền trạm')
SET IDENTITY_INSERT [dbo].[NhiemVu] OFF
SET IDENTITY_INSERT [dbo].[ThoiGianTour] ON 

INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (1, 1, CAST(N'2017-11-29' AS Date), CAST(N'2017-12-02' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (2, 1, CAST(N'2017-11-28' AS Date), CAST(N'2017-12-01' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (3, 1, CAST(N'2017-11-27' AS Date), CAST(N'2017-11-30' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (4, 2, CAST(N'2017-11-28' AS Date), CAST(N'2017-11-30' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (5, 2, CAST(N'2017-11-29' AS Date), CAST(N'2017-12-01' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (6, 2, CAST(N'2017-11-30' AS Date), CAST(N'2017-12-02' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (7, 3, CAST(N'2017-11-30' AS Date), CAST(N'2017-12-02' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (8, 3, CAST(N'2017-12-01' AS Date), CAST(N'2017-12-03' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (9, 3, CAST(N'2017-12-02' AS Date), CAST(N'2017-12-04' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (10, 4, CAST(N'2017-11-30' AS Date), CAST(N'2017-12-03' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (11, 4, CAST(N'2017-12-01' AS Date), CAST(N'2017-12-04' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (12, 4, CAST(N'2017-12-02' AS Date), CAST(N'2017-12-05' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (13, 5, CAST(N'2017-12-01' AS Date), CAST(N'2017-12-03' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (14, 5, CAST(N'2017-12-02' AS Date), CAST(N'2017-12-04' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (15, 5, CAST(N'2017-12-03' AS Date), CAST(N'2017-12-05' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (16, 6, CAST(N'2017-11-28' AS Date), CAST(N'2017-11-30' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (17, 6, CAST(N'2017-11-29' AS Date), CAST(N'2017-12-01' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (18, 6, CAST(N'2017-11-30' AS Date), CAST(N'2017-12-02' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (19, 7, CAST(N'2017-11-28' AS Date), CAST(N'2017-12-01' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (20, 7, CAST(N'2017-11-29' AS Date), CAST(N'2017-12-02' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (21, 7, CAST(N'2017-11-30' AS Date), CAST(N'2017-12-03' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (22, 8, CAST(N'2017-11-28' AS Date), CAST(N'2017-11-09' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (23, 8, CAST(N'2017-11-29' AS Date), CAST(N'2017-11-30' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (24, 8, CAST(N'2017-11-30' AS Date), CAST(N'2017-12-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[ThoiGianTour] OFF
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (1, N'An Giang', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (2, N'Bà Rịa - Vũng Tàu', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (3, N'Bắc Giang', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (4, N'Bắc Kạn', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (5, N'Bạc Liêu', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (6, N'Bắc Ninh', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (7, N'Bến Tre', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (8, N'Bình Định', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (9, N'Bình Dương', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (10, N'Bình Phước', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (11, N'Bình Thuận', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (12, N'Cà Mau', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (13, N'Cao Bằng', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (14, N'Đắk Lắk', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (15, N'Đắk Nông', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (16, N'Điện Biên', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (17, N'Đồng Nai', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (18, N'Đồng Tháp', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (19, N'Gia Lai', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (20, N'Hà Giang', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (21, N'Hà Nam', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (22, N'Hà Tĩnh', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (23, N'Hải Dương', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (24, N'Hậu Giang', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (25, N'Hòa Bình', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (26, N'Hưng Yên', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (27, N'Khánh Hòa', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (28, N'Kiên Giang', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (29, N'Kon Tum', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (30, N'Lai Châu', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (31, N'Lâm Đồng', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (32, N'Lạng Sơn', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (33, N'Lào Cai', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (34, N'Long An', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (35, N'Nam Định', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (36, N'Nghệ An', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (37, N'Ninh Bình', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (38, N'Ninh Thuận', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (39, N'Phú Thọ', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (40, N'Quảng Bình', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (41, N'Quảng Nam', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (42, N'Quảng Ngãi', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (43, N'Quảng Ninh', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (44, N'Quảng Trị', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (45, N'Sóc Trăng', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (46, N'Sơn La', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (47, N'Tây Ninh', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (48, N'Thái Bình', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (49, N'Thái Nguyên', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (50, N'Thanh Hóa', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (51, N'Thừa Thiên Huế', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (52, N'Tiền Giang', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (53, N'Trà Vinh', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (54, N'Tuyên Quang', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (55, N'Vĩnh Long', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (56, N'Vĩnh Phúc', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (57, N'Yên Bái', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (58, N'Cần Thơ', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (59, N'Phú Yên', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (60, N'Đà Nẵng', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (61, N'Hải Phòng', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (62, N'Hà Nội', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (63, N'TP HCM', 1)
SET IDENTITY_INSERT [dbo].[TinhThanh] OFF
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (1, 1, N'TOUR SÀI GÒN - ĐÀ LẠT', 4, 3, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (2, 1, N'TOUR SÀI GÒN - TÂY NINH', 3, 2, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (3, 3, N'TOUR SÀI GÒN - HUẾ', 3, 2, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (4, 3, N'TOUR SÀI GÒN - HỘI AN', 4, 3, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (5, 5, N'TOUR SÀI GÒN - NHA TRANG', 3, 2, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (6, 5, N'TOUR SÀI GÒN - MŨI NÉ - PHAN THIẾT', 3, 2, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (7, 1, N'TOUR SÀI GÒN - CẦN THƠ', 4, 3, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (8, 2, N'TOUR SÀI GÒN - CÀ MAU', 2, 2, 1)
SET IDENTITY_INSERT [dbo].[Tour] OFF
SET IDENTITY_INSERT [dbo].[TourDiemThamQuan] ON 

INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (1, 1, 10)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (2, 1, 11)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (3, 1, 12)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (4, 1, 14)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (5, 1, 16)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (6, 1, 20)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (7, 1, 22)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (8, 1, 26)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (9, 2, 45)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (10, 2, 47)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (11, 2, 49)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (12, 2, 50)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (13, 2, 51)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (14, 2, 54)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (15, 2, 55)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (16, 3, 60)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (17, 3, 61)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (18, 3, 62)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (19, 3, 63)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (20, 3, 64)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (21, 3, 66)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (22, 3, 68)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (23, 4, 133)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (24, 4, 134)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (25, 4, 135)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (26, 4, 136)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (27, 4, 137)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (28, 4, 138)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (29, 4, 139)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (30, 4, 140)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (31, 4, 141)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (32, 4, 142)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (33, 5, 69)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (34, 5, 70)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (35, 5, 71)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (36, 5, 72)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (37, 5, 73)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (38, 5, 74)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (39, 5, 75)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (40, 5, 76)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (41, 5, 77)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (42, 5, 78)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (43, 6, 87)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (44, 6, 88)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (45, 6, 89)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (46, 6, 90)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (47, 6, 91)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (48, 6, 92)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (49, 6, 93)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (50, 6, 94)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (51, 6, 95)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (52, 6, 97)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (53, 7, 105)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (54, 7, 106)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (57, 7, 107)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (58, 7, 108)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (59, 7, 109)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (60, 7, 110)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (61, 7, 111)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (62, 7, 112)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (63, 7, 113)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (64, 8, 116)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (65, 8, 117)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (66, 8, 118)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (67, 8, 119)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (68, 8, 120)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (69, 8, 121)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (70, 8, 122)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (71, 8, 123)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (72, 8, 124)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (73, 8, 125)
SET IDENTITY_INSERT [dbo].[TourDiemThamQuan] OFF
ALTER TABLE [dbo].[BangDangKy]  WITH CHECK ADD  CONSTRAINT [FK_KhachDangKy_DoanDuLich] FOREIGN KEY([MaDoanDuLich])
REFERENCES [dbo].[DoanDuLich] ([MaDoanDuLich])
GO
ALTER TABLE [dbo].[BangDangKy] CHECK CONSTRAINT [FK_KhachDangKy_DoanDuLich]
GO
ALTER TABLE [dbo].[BangDangKy]  WITH CHECK ADD  CONSTRAINT [FK_KhachDangKy_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[BangDangKy] CHECK CONSTRAINT [FK_KhachDangKy_KhachHang]
GO
ALTER TABLE [dbo].[BangDangKy]  WITH CHECK ADD  CONSTRAINT [FK_KhachDangKy_ThoiGian] FOREIGN KEY([MaThoiGian])
REFERENCES [dbo].[ThoiGianTour] ([MaThoiGianTour])
GO
ALTER TABLE [dbo].[BangDangKy] CHECK CONSTRAINT [FK_KhachDangKy_ThoiGian]
GO
ALTER TABLE [dbo].[ChiTietDiaDiem]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDiaDiem_DiaDiem] FOREIGN KEY([MaDiaDiem])
REFERENCES [dbo].[DiaDiem] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[ChiTietDiaDiem] CHECK CONSTRAINT [FK_ChiTietDiaDiem_DiaDiem]
GO
ALTER TABLE [dbo].[DiaDiem]  WITH CHECK ADD  CONSTRAINT [FK_DiaDiem_TinhThanh] FOREIGN KEY([MaTinhThanh])
REFERENCES [dbo].[TinhThanh] ([MaTinhThanh])
GO
ALTER TABLE [dbo].[DiaDiem] CHECK CONSTRAINT [FK_DiaDiem_TinhThanh]
GO
ALTER TABLE [dbo].[DoanDuLich]  WITH CHECK ADD  CONSTRAINT [FK_DoanDuLich_ThoiGianTour] FOREIGN KEY([MaThoiGianTour])
REFERENCES [dbo].[ThoiGianTour] ([MaThoiGianTour])
GO
ALTER TABLE [dbo].[DoanDuLich] CHECK CONSTRAINT [FK_DoanDuLich_ThoiGianTour]
GO
ALTER TABLE [dbo].[GiaTour]  WITH CHECK ADD  CONSTRAINT [FK_GiaTour_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[GiaTour] CHECK CONSTRAINT [FK_GiaTour_Tour]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_ChiPhiAnUong] FOREIGN KEY([MaChiPhiAnUong])
REFERENCES [dbo].[ChiPhiAnUong] ([MaChiPhiAnUong])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_ChiPhiAnUong]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_ChiPhiKhachSan] FOREIGN KEY([MaChiPhiKhachSan])
REFERENCES [dbo].[ChiPhiKhachSan] ([MaChiPhiKhachSan])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_ChiPhiKhachSan]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_ChiPhiPhatSinh] FOREIGN KEY([MaChiPhiPhatSinh])
REFERENCES [dbo].[ChiPhiPhatSinh] ([MaChiPhiPhatSinh])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_ChiPhiPhatSinh]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_ChiPhiPhuongTien] FOREIGN KEY([MaChiPhiPhuongTien])
REFERENCES [dbo].[ChiPhiPhuongTien] ([MaChiPhiPhuongTien])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_ChiPhiPhuongTien]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_ChiTietDiaDiem] FOREIGN KEY([MaChiTietDiaDiem])
REFERENCES [dbo].[ChiTietDiaDiem] ([MaChiTietDiaDiem])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_ChiTietDiaDiem]
GO
ALTER TABLE [dbo].[LichTrinh]  WITH CHECK ADD  CONSTRAINT [FK_LichTrinh_DoanDuLich] FOREIGN KEY([MaDoanDuLich])
REFERENCES [dbo].[DoanDuLich] ([MaDoanDuLich])
GO
ALTER TABLE [dbo].[LichTrinh] CHECK CONSTRAINT [FK_LichTrinh_DoanDuLich]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_DoanDuLich] FOREIGN KEY([MaDoanDuLich])
REFERENCES [dbo].[DoanDuLich] ([MaDoanDuLich])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_DoanDuLich]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NhanVien]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NhiemVu] FOREIGN KEY([MaNhiemVu])
REFERENCES [dbo].[NhiemVu] ([MaNhiemVu])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NhiemVu]
GO
ALTER TABLE [dbo].[ThoiGianTour]  WITH CHECK ADD  CONSTRAINT [FK_ThoiGianTour_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[ThoiGianTour] CHECK CONSTRAINT [FK_ThoiGianTour_Tour]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_LoaiHinhDuLich1] FOREIGN KEY([MaLoaiHinh])
REFERENCES [dbo].[LoaiHinhDuLich] ([MaLoaiHinh])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_LoaiHinhDuLich1]
GO
ALTER TABLE [dbo].[TourDiemThamQuan]  WITH CHECK ADD  CONSTRAINT [FK_TourDiemThamQuan_DiaDiem] FOREIGN KEY([MaDiaDiem])
REFERENCES [dbo].[DiaDiem] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[TourDiemThamQuan] CHECK CONSTRAINT [FK_TourDiemThamQuan_DiaDiem]
GO
ALTER TABLE [dbo].[TourDiemThamQuan]  WITH CHECK ADD  CONSTRAINT [FK_TourDiemThamQuan_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([MaTour])
GO
ALTER TABLE [dbo].[TourDiemThamQuan] CHECK CONSTRAINT [FK_TourDiemThamQuan_Tour]
GO
USE [master]
GO
ALTER DATABASE [TourDuLich] SET  READ_WRITE 
GO
