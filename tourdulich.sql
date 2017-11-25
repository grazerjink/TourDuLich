USE [master]
GO
/****** Object:  Database [TourDuLich]    Script Date: 11/25/2017 6:55:04 PM ******/
CREATE DATABASE [TourDuLich] 
GO
USE [TourDuLich]
GO
/****** Object:  Table [dbo].[BangDangKy]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiAnUong]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiKhachSan]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiPhatSinh]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiPhuongTien]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDiaDiem]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[DoanDuLich]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[GiaTour]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[LoaiHinhDuLich]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[NhiemVu]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[PhanCong]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[ThoiGianTour]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 11/25/2017 6:55:04 PM ******/
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
/****** Object:  Table [dbo].[Tour]    Script Date: 11/25/2017 6:55:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiHinh] [int] NULL,
	[TenTour] [nvarchar](500) NULL,
	[DiemKhoiHanh] [int] NULL,
	[DiemKetThuc] [int] NULL,
	[SoNgay] [int] NULL,
	[SoDem] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourDiemThamQuan]    Script Date: 11/25/2017 6:55:04 PM ******/
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
SET IDENTITY_INSERT [dbo].[DiaDiem] OFF
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
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhiemVu] ON 

INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (1, N'Trưởng đoàn')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (2, N'Tài xế')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (3, N'Hướng dẫn viên')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (4, N'Phục vụ')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (5, N'Thông dịch viên')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (6, N'Tiền trạm')
SET IDENTITY_INSERT [dbo].[NhiemVu] OFF
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
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_DiaDiem2] FOREIGN KEY([DiemKhoiHanh])
REFERENCES [dbo].[DiaDiem] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_DiaDiem2]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_DiaDiem3] FOREIGN KEY([DiemKetThuc])
REFERENCES [dbo].[DiaDiem] ([MaDiaDiem])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_DiaDiem3]
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
