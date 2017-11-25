USE [master]
GO
/****** Object:  Database [TourDuLich]    Script Date: 11/25/2017 3:20:10 PM ******/
CREATE DATABASE [TourDuLich]
GO
USE [TourDuLich]
GO
/****** Object:  Table [dbo].[BangDangKy]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiAnUong]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiKhachSan]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiPhatSinh]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[ChiPhiPhuongTien]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDiaDiem]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[DoanDuLich]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[GiaTour]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[LichTrinh]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[LoaiHinhDuLich]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[NhiemVu]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[PhanCong]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[ThoiGianTour]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[Tour]    Script Date: 11/25/2017 3:20:10 PM ******/
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
/****** Object:  Table [dbo].[TourDiemThamQuan]    Script Date: 11/25/2017 3:20:10 PM ******/
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
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [CMND], [DiaChi], [TrangThai]) VALUES (1, N'Nguyễn Nhật Tân', 1, CAST(N'1996-10-06' AS Date), N'012456789', N'0233415646', N'TPHCM', 1)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[NhiemVu] ON 

INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (1, N'Trưởng đoàn')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (2, N'Tài xế')
INSERT [dbo].[NhiemVu] ([MaNhiemVu], [TenNhiemVu]) VALUES (3, N'Hướng dẫn viên')
SET IDENTITY_INSERT [dbo].[NhiemVu] OFF
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (1, N'Đà Lạt', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (2, N'Ninh Thuận', 1)
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh], [TrangThai]) VALUES (3, N'Hội An', 1)
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
