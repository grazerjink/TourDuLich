USE [master]
GO
/****** Object:  Database [TourDuLich]    Script Date: 12/3/2017 4:35:54 PM ******/
CREATE DATABASE [TourDuLich] 
GO
USE [TourDuLich]
GO
/****** Object:  Table [dbo].[BangDangKy]    Script Date: 12/3/2017 4:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDangKy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[MaThoiGianTour] [int] NULL,
	[MaDoanDuLich] [int] NULL,
	[NgayDangKy] [datetime] NULL,
 CONSTRAINT [PK_KhachDangKy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiPhiAnUong]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiKhachSan]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiPhatSinh]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiPhuongTien]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDiaDiem]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[DoanDuLich]    Script Date: 12/3/2017 4:35:54 PM ******/
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
	[TongTienAnUong] [float] NULL,
	[TongTienPhuongTien] [float] NULL,
	[TongTienKhachSan] [float] NULL,
	[TongTienPhatSinh] [float] NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_DoanDuLich] PRIMARY KEY CLUSTERED 
(
	[MaDoanDuLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaTour]    Script Date: 12/3/2017 4:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaTour] [int] NULL,
	[ThoiGianBatDau] [date] NULL,
	[ThoiGianKetThuc] [date] NULL,
	[GiaTien] [float] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_GiaTour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/3/2017 4:35:54 PM ******/
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
	[MaQuocTich] [int] NULL,
	[DiaChi] [nvarchar](250) NULL,
	[TenCongTy] [nvarchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[LoaiHinhDuLich]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[NhiemVu]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[PhanCong]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[QuocTich]    Script Date: 12/3/2017 4:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocTich](
	[MaQuocTich] [int] IDENTITY(1,1) NOT NULL,
	[TenQuocTich] [nvarchar](250) NULL,
 CONSTRAINT [PK_QuocTich] PRIMARY KEY CLUSTERED 
(
	[MaQuocTich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiGianTour]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[Tour]    Script Date: 12/3/2017 4:35:54 PM ******/
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
/****** Object:  Table [dbo].[TourDiemThamQuan]    Script Date: 12/3/2017 4:35:54 PM ******/
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
SET IDENTITY_INSERT [dbo].[BangDangKy] ON 

INSERT [dbo].[BangDangKy] ([Id], [MaKhachHang], [MaThoiGianTour], [MaDoanDuLich], [NgayDangKy]) VALUES (2, 6, 1, 8, NULL)
INSERT [dbo].[BangDangKy] ([Id], [MaKhachHang], [MaThoiGianTour], [MaDoanDuLich], [NgayDangKy]) VALUES (3, 7, 1, 8, NULL)
INSERT [dbo].[BangDangKy] ([Id], [MaKhachHang], [MaThoiGianTour], [MaDoanDuLich], [NgayDangKy]) VALUES (4, 8, 1, 8, NULL)
INSERT [dbo].[BangDangKy] ([Id], [MaKhachHang], [MaThoiGianTour], [MaDoanDuLich], [NgayDangKy]) VALUES (5, 6, 23, NULL, NULL)
INSERT [dbo].[BangDangKy] ([Id], [MaKhachHang], [MaThoiGianTour], [MaDoanDuLich], [NgayDangKy]) VALUES (6, 10, 23, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BangDangKy] OFF
SET IDENTITY_INSERT [dbo].[ChiPhiAnUong] ON 

INSERT [dbo].[ChiPhiAnUong] ([MaChiPhiAnUong], [TenQuanAn], [GhiChu], [TongTien]) VALUES (1, NULL, NULL, 3000000)
INSERT [dbo].[ChiPhiAnUong] ([MaChiPhiAnUong], [TenQuanAn], [GhiChu], [TongTien]) VALUES (2, NULL, NULL, 2000000)
INSERT [dbo].[ChiPhiAnUong] ([MaChiPhiAnUong], [TenQuanAn], [GhiChu], [TongTien]) VALUES (3, NULL, NULL, 3000000)
INSERT [dbo].[ChiPhiAnUong] ([MaChiPhiAnUong], [TenQuanAn], [GhiChu], [TongTien]) VALUES (4, NULL, NULL, 5000000)
INSERT [dbo].[ChiPhiAnUong] ([MaChiPhiAnUong], [TenQuanAn], [GhiChu], [TongTien]) VALUES (5, NULL, NULL, 3500000)
SET IDENTITY_INSERT [dbo].[ChiPhiAnUong] OFF
SET IDENTITY_INSERT [dbo].[ChiPhiKhachSan] ON 

INSERT [dbo].[ChiPhiKhachSan] ([MaChiPhiKhachSan], [TenKhachSan], [GhiChu], [TongTien]) VALUES (1, NULL, NULL, 3000000)
INSERT [dbo].[ChiPhiKhachSan] ([MaChiPhiKhachSan], [TenKhachSan], [GhiChu], [TongTien]) VALUES (2, NULL, NULL, 3500000)
INSERT [dbo].[ChiPhiKhachSan] ([MaChiPhiKhachSan], [TenKhachSan], [GhiChu], [TongTien]) VALUES (3, NULL, NULL, 2500000)
INSERT [dbo].[ChiPhiKhachSan] ([MaChiPhiKhachSan], [TenKhachSan], [GhiChu], [TongTien]) VALUES (4, NULL, NULL, 3500000)
INSERT [dbo].[ChiPhiKhachSan] ([MaChiPhiKhachSan], [TenKhachSan], [GhiChu], [TongTien]) VALUES (5, NULL, NULL, 4500000)
SET IDENTITY_INSERT [dbo].[ChiPhiKhachSan] OFF
SET IDENTITY_INSERT [dbo].[ChiPhiPhatSinh] ON 

INSERT [dbo].[ChiPhiPhatSinh] ([MaChiPhiPhatSinh], [NoiDung], [TongTien]) VALUES (1, NULL, 3000000)
INSERT [dbo].[ChiPhiPhatSinh] ([MaChiPhiPhatSinh], [NoiDung], [TongTien]) VALUES (2, NULL, 3500000)
INSERT [dbo].[ChiPhiPhatSinh] ([MaChiPhiPhatSinh], [NoiDung], [TongTien]) VALUES (3, NULL, 2500000)
INSERT [dbo].[ChiPhiPhatSinh] ([MaChiPhiPhatSinh], [NoiDung], [TongTien]) VALUES (4, NULL, 2000000)
INSERT [dbo].[ChiPhiPhatSinh] ([MaChiPhiPhatSinh], [NoiDung], [TongTien]) VALUES (5, NULL, 1800000)
SET IDENTITY_INSERT [dbo].[ChiPhiPhatSinh] OFF
SET IDENTITY_INSERT [dbo].[ChiPhiPhuongTien] ON 

INSERT [dbo].[ChiPhiPhuongTien] ([MaChiPhiPhuongTien], [TenPhuongTien], [BienSoXe], [GhiChu], [TongTien]) VALUES (1, NULL, NULL, NULL, 6000000)
INSERT [dbo].[ChiPhiPhuongTien] ([MaChiPhiPhuongTien], [TenPhuongTien], [BienSoXe], [GhiChu], [TongTien]) VALUES (2, NULL, NULL, NULL, 5000000)
INSERT [dbo].[ChiPhiPhuongTien] ([MaChiPhiPhuongTien], [TenPhuongTien], [BienSoXe], [GhiChu], [TongTien]) VALUES (3, NULL, NULL, NULL, 6000000)
INSERT [dbo].[ChiPhiPhuongTien] ([MaChiPhiPhuongTien], [TenPhuongTien], [BienSoXe], [GhiChu], [TongTien]) VALUES (4, NULL, NULL, NULL, 7000000)
INSERT [dbo].[ChiPhiPhuongTien] ([MaChiPhiPhuongTien], [TenPhuongTien], [BienSoXe], [GhiChu], [TongTien]) VALUES (5, NULL, NULL, NULL, 4500000)
SET IDENTITY_INSERT [dbo].[ChiPhiPhuongTien] OFF
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
SET IDENTITY_INSERT [dbo].[DoanDuLich] ON 

INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (8, 1, N'ABC', 3, 3, 10000000, 24000000, 13500000, 9100000, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (9, 1, N'sadas', NULL, NULL, 13500000, 23500000, 13500000, 12500000, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (10, 2, N'fsahkjh', NULL, NULL, 13000000, 22500000, 12500000, 10300000, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (11, 2, N'hdfjsadh', NULL, NULL, 11500000, 22000000, 14500000, 11000000, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (12, 3, N'fsfhjsdhj', NULL, NULL, 12000000, 22500000, 13000000, 12500000, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (13, 3, N'hdfajshdsakj', NULL, NULL, 13000000, 22000000, 14500000, 11000000, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (14, 7, N'dhfasdhsajkdsak', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (15, 8, N'dhkashdkashd', NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (16, 9, N'hdaksdhkajsdha', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (17, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (18, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (19, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (20, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (21, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (22, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[DoanDuLich] ([MaDoanDuLich], [MaThoiGianTour], [TenDoanDuLich], [SoLuongKhach], [SoLuongNhanVien], [TongTienAnUong], [TongTienPhuongTien], [TongTienKhachSan], [TongTienPhatSinh], [TinhTrang]) VALUES (23, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[DoanDuLich] OFF
SET IDENTITY_INSERT [dbo].[GiaTour] ON 

INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (1, 1, CAST(N'2017-01-01' AS Date), CAST(N'2017-03-31' AS Date), 3500000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (2, 1, CAST(N'2017-04-01' AS Date), CAST(N'2017-06-30' AS Date), 3200000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (3, 1, CAST(N'2017-07-01' AS Date), CAST(N'2017-12-31' AS Date), 2900000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (4, 2, CAST(N'2017-01-01' AS Date), CAST(N'2017-03-31' AS Date), 3100000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (5, 2, CAST(N'2017-04-01' AS Date), CAST(N'2017-06-30' AS Date), 2950000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (6, 2, CAST(N'2017-07-01' AS Date), CAST(N'2017-12-31' AS Date), 2800000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (7, 3, CAST(N'2017-01-01' AS Date), CAST(N'2017-03-31' AS Date), 3500000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (8, 3, CAST(N'2017-04-01' AS Date), CAST(N'2017-06-30' AS Date), 3000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (9, 3, CAST(N'2017-07-01' AS Date), CAST(N'2017-12-31' AS Date), 3000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (10, 4, CAST(N'2017-01-01' AS Date), CAST(N'2017-03-31' AS Date), 3100000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (11, 4, CAST(N'2017-04-01' AS Date), CAST(N'2017-06-30' AS Date), 2950000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (12, 4, CAST(N'2017-07-01' AS Date), CAST(N'2017-12-31' AS Date), 2900000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (13, 5, CAST(N'2017-01-01' AS Date), CAST(N'2017-03-31' AS Date), 3300000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (14, 5, CAST(N'2017-04-01' AS Date), CAST(N'2017-06-30' AS Date), 2980000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (15, 5, CAST(N'2017-07-01' AS Date), CAST(N'2017-12-31' AS Date), 3000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (16, 6, CAST(N'2017-01-01' AS Date), CAST(N'2017-03-31' AS Date), 2800000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (17, 6, CAST(N'2017-04-01' AS Date), CAST(N'2017-06-30' AS Date), 2650000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (18, 6, CAST(N'2017-07-01' AS Date), CAST(N'2017-12-31' AS Date), 2500000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (19, 7, CAST(N'2017-01-01' AS Date), CAST(N'2017-03-31' AS Date), 3300000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (20, 7, CAST(N'2017-04-01' AS Date), CAST(N'2017-06-30' AS Date), 3000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (21, 7, CAST(N'2017-07-01' AS Date), CAST(N'2017-12-31' AS Date), 3200000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (22, 8, CAST(N'2017-01-01' AS Date), CAST(N'2017-03-31' AS Date), 2200000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (23, 8, CAST(N'2017-04-01' AS Date), CAST(N'2017-06-30' AS Date), 2000000, 1)
INSERT [dbo].[GiaTour] ([Id], [MaTour], [ThoiGianBatDau], [ThoiGianKetThuc], [GiaTien], [TrangThai]) VALUES (24, 8, CAST(N'2017-07-01' AS Date), CAST(N'2017-12-31' AS Date), 2150000, 1)
SET IDENTITY_INSERT [dbo].[GiaTour] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [Passport], [MaQuocTich], [DiaChi], [TenCongTy], [TrangThai]) VALUES (6, N'Mạc Khải Quân', 1, CAST(N'1996-05-20' AS Date), N'0936159928', N'025659100', NULL, 154, N'46A Đoàn Hồng Phước', N'ABC', 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [Passport], [MaQuocTich], [DiaChi], [TenCongTy], [TrangThai]) VALUES (7, N'Nguyễn Nhật Tân', 1, CAST(N'1996-05-20' AS Date), N'0936159928', N'025929202', NULL, 154, N'TPHCM', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [Passport], [MaQuocTich], [DiaChi], [TenCongTy], [TrangThai]) VALUES (8, N'Nguyễn Tấn Quang', 1, CAST(N'1996-05-11' AS Date), N'0936159928', N'026552040', NULL, 154, N'TPHCM', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [Passport], [MaQuocTich], [DiaChi], [TenCongTy], [TrangThai]) VALUES (9, N'Nguyễn Kim Ngân', 0, CAST(N'1991-02-12' AS Date), N'0936159928', N'028526300', NULL, 154, N'TPHCM', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [Passport], [MaQuocTich], [DiaChi], [TenCongTy], [TrangThai]) VALUES (10, N'Nguyễn Kim Ngân', 0, CAST(N'1993-05-11' AS Date), N'0936159928', N'026822000', NULL, 154, N'TPHCM', N'ABC', 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LichTrinh] ON 

INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (1, 8, NULL, NULL, NULL, 2, 3, 4, 5, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (2, 8, NULL, NULL, NULL, 3, 2, 3, 2, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (3, 8, NULL, NULL, NULL, 5, 1, 1, 5, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (4, 8, NULL, NULL, NULL, 1, 2, 2, 4, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (5, 9, NULL, NULL, NULL, 2, 3, 3, 1, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (6, 9, NULL, NULL, NULL, 1, 5, 5, 2, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (7, 9, NULL, NULL, NULL, 3, 4, 4, 3, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (8, 9, NULL, NULL, NULL, 5, 2, 1, 2, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (9, 10, NULL, NULL, NULL, 4, 1, 2, 5, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (10, 10, NULL, NULL, NULL, 1, 4, 3, 4, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (11, 10, NULL, NULL, NULL, 3, 3, 5, 1, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (12, 10, NULL, NULL, NULL, 2, 2, 4, 2, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (13, 11, NULL, NULL, NULL, 1, 1, 1, 3, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (14, 11, NULL, NULL, NULL, 4, 2, 2, 2, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (15, 11, NULL, NULL, NULL, 5, 3, 3, 1, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (16, 11, NULL, NULL, NULL, 2, 5, 2, 4, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (17, 12, NULL, NULL, NULL, 3, 4, 5, 2, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (18, 12, NULL, NULL, NULL, 2, 2, 4, 3, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (19, 12, NULL, NULL, NULL, 4, 3, 1, 2, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (20, 12, NULL, NULL, NULL, 2, 2, 2, 1, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (21, 13, NULL, NULL, NULL, 5, 1, 3, 4, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (22, 13, NULL, NULL, NULL, 1, 4, 2, 1, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (23, 13, NULL, NULL, NULL, 3, 2, 1, 2, NULL)
INSERT [dbo].[LichTrinh] ([Id], [MaDoanDuLich], [Ngay], [Buoi], [MaChiTietDiaDiem], [MaChiPhiKhachSan], [MaChiPhiAnUong], [MaChiPhiPhuongTien], [MaChiPhiPhatSinh], [GhiChu]) VALUES (24, 13, NULL, NULL, NULL, 5, 3, 2, 3, NULL)
SET IDENTITY_INSERT [dbo].[LichTrinh] OFF
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
SET IDENTITY_INSERT [dbo].[PhanCong] ON 

INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (1, 8, 2, 3)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (2, 8, 3, 4)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (3, 8, 1, 1)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (4, 9, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (5, 9, 3, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (6, 9, 1, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (7, 9, 5, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (8, 10, 5, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (9, 10, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (10, 10, 3, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (11, 11, 1, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (12, 11, 3, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (13, 11, 5, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (15, 11, 6, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (16, 12, 6, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (17, 12, 1, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (18, 12, 3, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (19, 12, 4, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (20, 13, 5, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (21, 13, 6, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (22, 13, 4, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (23, 13, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (24, 12, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (25, 12, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (26, 12, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (27, 14, 1, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (28, 14, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (29, 14, 3, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (30, 15, 5, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (31, 15, 6, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (32, 15, 1, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (33, 17, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (34, 17, 3, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (35, 17, 1, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (36, 18, 3, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (37, 18, 4, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (38, 18, 5, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (39, 19, 2, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (40, 19, 3, NULL)
INSERT [dbo].[PhanCong] ([Id], [MaDoanDuLich], [MaNhanVien], [MaNhiemVu]) VALUES (41, 19, 4, NULL)
SET IDENTITY_INSERT [dbo].[PhanCong] OFF
SET IDENTITY_INSERT [dbo].[QuocTich] ON 

INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (1, N'Colombia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (2, N'Comoros')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (3, N'Republic of the Congo')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (4, N'Democratic Republic of the Congo')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (5, N'Costa Rica')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (6, N'Ivory Coast')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (7, N'Croatia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (8, N'Cuba')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (9, N'Cyprus')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (10, N'Czech Republic')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (11, N'Denmark')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (12, N'Djibouti')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (13, N'Dominica')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (14, N'Dominican Republic')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (15, N'East Timor')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (16, N'Ecuador')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (17, N'Egypt')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (18, N'El Salvador')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (19, N'Equatorial Guinea')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (20, N'Estonia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (21, N'Ethiopia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (22, N'Eritrea')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (23, N'Fiji')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (24, N'France')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (25, N'Finland')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (26, N'Gabon')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (27, N'The Gambia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (28, N'Georgia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (29, N'Germany')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (30, N'Ghana')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (31, N'Greece')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (32, N'Grenada')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (33, N'Guatemala')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (34, N'Guinea')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (35, N'Guinea Bissau')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (36, N'Guyana')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (37, N'Haiti')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (38, N'Honduras')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (39, N'Hungary')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (40, N'Iceland')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (41, N'India')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (42, N'Indonesia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (43, N'Iran')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (44, N'Iraq')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (45, N'Ireland')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (46, N'Israel')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (47, N'Italy')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (48, N'Jamaica')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (49, N'Japan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (50, N'Jordan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (51, N'Kazakhstan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (52, N'Kenya')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (53, N'Kiribati')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (54, N'Korea, North')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (55, N'Korea, South')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (56, N'Kuwait')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (57, N'Kyrgyzstan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (58, N'Laos')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (59, N'Latvia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (60, N'Lebanon')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (61, N'Lesotho')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (62, N'Liberia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (63, N'Libya')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (64, N'Liechtenstein')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (65, N'Luxembourg')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (66, N'Macedonia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (67, N'Madagascar')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (68, N'Malawi')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (69, N'Malaysia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (70, N'Maldives')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (71, N'Mali')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (72, N'Malta')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (73, N'Marshall Islands')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (74, N'Mauritania')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (75, N'Mauritius')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (76, N'Mexico')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (77, N'Federated States of Micronesia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (78, N'Moldova')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (79, N'Monaco')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (80, N'Mongolia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (81, N'Montenegro')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (82, N'Morocco')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (83, N'Mozambique')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (84, N'Burma')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (85, N'Namibia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (86, N'Nauru')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (87, N'Nepal')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (88, N'Netherlands')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (89, N'New Zealand')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (90, N'Nicaragua')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (91, N'Niger')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (92, N'Nigeria')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (93, N'Norway')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (94, N'Oman')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (95, N'Pakistan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (96, N'Palau')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (97, N'Panama')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (98, N'Papua New Guinea')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (99, N'Paraguay')
GO
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (100, N'Peru')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (101, N'Philippines')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (102, N'Poland')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (103, N'Portugal')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (104, N'Qatar')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (105, N'Romania')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (106, N'Russia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (107, N'Rwanda')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (108, N'Saint Kitts and Nevis')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (109, N'Saint Lucia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (110, N'Saint Vincent and the Grenadines')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (111, N'Samoa')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (112, N'San Marino')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (113, N'Sao Tome and Principe')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (114, N'Saudi Arabia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (115, N'Senegal')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (116, N'Serbia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (117, N'Seychelles')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (118, N'Sierra Leone')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (119, N'Singapore')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (120, N'Slovakia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (121, N'Slovenia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (122, N'Solomon Islands')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (123, N'Somalia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (124, N'South Africa')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (125, N'Spain')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (126, N'Sri Lanka')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (127, N'Sudan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (128, N'Suriname')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (129, N'Swaziland')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (130, N'Sweden')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (131, N'Switzerland')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (132, N'Syria')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (133, N'Taiwan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (134, N'Tajikistan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (135, N'Tanzania')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (136, N'Thailand')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (137, N'Togo')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (138, N'Tonga')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (139, N'Trinidad and Tobago')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (140, N'Tunisia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (141, N'Turkey')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (142, N'Turkmenistan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (143, N'Tuvalu')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (144, N'Uganda')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (145, N'Ukraine')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (146, N'United Arab Emirates')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (147, N'United Kingdom')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (148, N'United States')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (149, N'Uruguay')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (150, N'Uzbekistan')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (151, N'Vanuatu')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (152, N'Vatican City')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (153, N'Venezuela')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (154, N'Vietnam')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (155, N'Yemen')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (156, N'Zambia')
INSERT [dbo].[QuocTich] ([MaQuocTich], [TenQuocTich]) VALUES (157, N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[QuocTich] OFF
SET IDENTITY_INSERT [dbo].[ThoiGianTour] ON 

INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (1, 1, CAST(N'2017-12-05' AS Date), CAST(N'2017-12-08' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (2, 1, CAST(N'2017-12-06' AS Date), CAST(N'2017-12-09' AS Date), 1)
INSERT [dbo].[ThoiGianTour] ([MaThoiGianTour], [MaTour], [NgayDi], [NgayVe], [TrangThai]) VALUES (3, 1, CAST(N'2017-12-07' AS Date), CAST(N'2017-12-10' AS Date), 1)
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
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (9, 4, N'TOUR SÀI GÒN - VŨNG TÀU', 2, 1, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (10, 5, N'TOUR SÀI GÒN - ĐÀ ĐẴNG', 3, 2, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (11, 3, N'TOUR SÀI GÒN - ĐẢO PHÚ QUỐC', 3, 2, 1)
INSERT [dbo].[Tour] ([MaTour], [MaLoaiHinh], [TenTour], [SoNgay], [SoDem], [TrangThai]) VALUES (12, 1, N'TOUR SÀI GÒN - BẾN TRE', 3, 2, 1)
SET IDENTITY_INSERT [dbo].[Tour] OFF
SET IDENTITY_INSERT [dbo].[TourDiemThamQuan] ON 

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
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (117, 1, 22)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (118, 1, 12)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (119, 1, 11)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (120, 1, 10)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (121, 1, 20)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (122, 1, 26)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (123, 1, 14)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (127, 9, 1)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (128, 9, 2)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (129, 9, 3)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (130, 9, 5)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (142, 4, 133)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (143, 4, 134)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (144, 4, 135)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (145, 4, 136)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (146, 4, 137)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (147, 4, 138)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (148, 4, 139)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (149, 4, 140)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (150, 4, 141)
INSERT [dbo].[TourDiemThamQuan] ([Id], [MaTour], [MaDiaDiem]) VALUES (151, 4, 142)
SET IDENTITY_INSERT [dbo].[TourDiemThamQuan] OFF
ALTER TABLE [dbo].[BangDangKy] ADD  CONSTRAINT [DF_BangDangKy_NgayDangKy]  DEFAULT (getdate()) FOR [NgayDangKy]
GO
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
ALTER TABLE [dbo].[BangDangKy]  WITH CHECK ADD  CONSTRAINT [FK_KhachDangKy_ThoiGian] FOREIGN KEY([MaThoiGianTour])
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
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_QuocTich] FOREIGN KEY([MaQuocTich])
REFERENCES [dbo].[QuocTich] ([MaQuocTich])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_QuocTich]
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
