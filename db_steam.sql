CREATE DATABASE QL_THIETBISTEAM
GO
USE [QL_THIETBISTEAM]
GO
/****** Object:  Table [dbo].[CT_DonDatHangNCC]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DonDatHangNCC](
	[MaCT_DonDatHangNCC] [int] IDENTITY(1,1) NOT NULL,
	[MaDonDatHangNCC] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Soluong] [int] NULL,
	[DonGiaDat] [float] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_CT_DonDatHangNCC] PRIMARY KEY CLUSTERED 
(
	[MaCT_DonDatHangNCC] ASC,
	[MaDonDatHangNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUDATHANG]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUDATHANG](
	[MaPhieuDH] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_CT_PHIEUDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDH] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAPHANG]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAPHANG](
	[MaCTPhieuNhapHang] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaPhieuNhapHang] [int] NOT NULL,
	[Sluong] [int] NULL,
	[DonGiaNhap] [float] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_CT_PHIEUNHAPHANG] PRIMARY KEY CLUSTERED 
(
	[MaCTPhieuNhapHang] ASC,
	[MaPhieuNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHangNCC]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHangNCC](
	[MaDonDatHangNCC] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [nchar](10) NULL,
	[MaNV] [int] NULL,
	[NgayLap] [datetime] NULL,
	[TongSL] [int] NULL,
	[TongTien] [float] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DonDatHangNCC] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHangNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgayTao] [datetime] NULL,
	[TenDN] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](30) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LIENHE]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIENHE](
	[MaLH] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuDH] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [varchar](100) NULL,
	[DienThoai] [varchar](50) NULL,
	[NoiDung] [nvarchar](500) NULL,
	[HinhAnhHD] [nvarchar](200) NULL,
	[HinhAnhSP] [nvarchar](200) NULL,
	[NgayCapNhat] [smalldatetime] NULL,
 CONSTRAINT [PK_LIENHE] PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPhams] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[DienThoai] [char](20) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[Email] [nvarchar](100) NULL,
	[SoDT] [char](12) NULL,
	[HinhAnh] [nchar](100) NULL,
	[TenDN] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](30) NULL,
	[ID_PhanQuyen] [int] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[ID_PhanQuyen] [int] NOT NULL,
	[TenPQ] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[ID_PhanQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUDATHANG]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDATHANG](
	[MaPhieuDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDat] [datetime] NULL,
	[Tong_SL_Dat] [int] NULL,
	[ThanhTien] [float] NULL,
	[TinhTrang] [int] NULL,
	[PhiShip] [float] NULL,
 CONSTRAINT [PK_PHIEUDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUGIAOHANG]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUGIAOHANG](
	[MaGH] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuDH] [int] NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_PHIEUGIAOHANG] PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAPHANG]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAPHANG](
	[MaPhieuNhapHang] [int] NOT NULL,
	[MaNCC] [nchar](10) NULL,
	[MaNV] [int] NULL,
	[NgayLap_PN] [datetime] NULL,
	[TongSL] [int] NULL,
	[TongTien_NH] [float] NULL,
 CONSTRAINT [PK_PHIEUNHAPHANG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALE]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALE](
	[MASL] [int] IDENTITY(1,1) NOT NULL,
	[TENSL] [nvarchar](max) NULL,
	[NGAYBATDAU] [datetime] NULL,
	[NGAYKETTHUC] [datetime] NULL,
 CONSTRAINT [PK_SL] PRIMARY KEY CLUSTERED 
(
	[MASL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPSALE]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPSALE](
	[MASPSALE] [int] IDENTITY(1,1) NOT NULL,
	[MASL] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[GIAMGIA] [float] NULL,
 CONSTRAINT [PK_SPSL] PRIMARY KEY CLUSTERED 
(
	[MASPSALE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGTINSANPHAM]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGTINSANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaLoai] [int] NULL,
	[MaNCC] [nchar](10) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[GiaSanPham] [float] NULL,
	[MoTa] [nvarchar](4000) NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[GiamGia] [float] NULL,
	[SLTon] [int] NULL,
 CONSTRAINT [PK_THONGTINSACH] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINHTRANGDH]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINHTRANGDH](
	[TinhTrang] [int] NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINHTRANGDH] PRIMARY KEY CLUSTERED 
(
	[TinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CT_DonDatHangNCC] ON 

INSERT [dbo].[CT_DonDatHangNCC] ([MaCT_DonDatHangNCC], [MaDonDatHangNCC], [MaSanPham], [Soluong], [DonGiaDat], [TongTien]) VALUES (1, 1, 18, 10, 250000, 2500000)
INSERT [dbo].[CT_DonDatHangNCC] ([MaCT_DonDatHangNCC], [MaDonDatHangNCC], [MaSanPham], [Soluong], [DonGiaDat], [TongTien]) VALUES (2, 1, 4, 10, 300000, 3000000)
INSERT [dbo].[CT_DonDatHangNCC] ([MaCT_DonDatHangNCC], [MaDonDatHangNCC], [MaSanPham], [Soluong], [DonGiaDat], [TongTien]) VALUES (3, 1, 17, 17, 100000, 1700000)
INSERT [dbo].[CT_DonDatHangNCC] ([MaCT_DonDatHangNCC], [MaDonDatHangNCC], [MaSanPham], [Soluong], [DonGiaDat], [TongTien]) VALUES (4, 2, 8, 16, 150000, 2400000)
INSERT [dbo].[CT_DonDatHangNCC] ([MaCT_DonDatHangNCC], [MaDonDatHangNCC], [MaSanPham], [Soluong], [DonGiaDat], [TongTien]) VALUES (5, 2, 13, 20, 350000, 7000000)
INSERT [dbo].[CT_DonDatHangNCC] ([MaCT_DonDatHangNCC], [MaDonDatHangNCC], [MaSanPham], [Soluong], [DonGiaDat], [TongTien]) VALUES (6, 3, 3, 20, 150000, 3000000)
INSERT [dbo].[CT_DonDatHangNCC] ([MaCT_DonDatHangNCC], [MaDonDatHangNCC], [MaSanPham], [Soluong], [DonGiaDat], [TongTien]) VALUES (7, 3, 1, 25, 300000, 7500000)
SET IDENTITY_INSERT [dbo].[CT_DonDatHangNCC] OFF
GO
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (1, 1, 2, 135000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (1, 3, 1, 300000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (1, 4, 1, 350000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (1, 5, 1, 150000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (1, 10, 1, 960000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (2, 2, 1, 250000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (2, 14, 1, 990000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (3, 4, 1, 350000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (3, 7, 2, 230000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (3, 16, 1, 660000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (4, 3, 2, 300000)
INSERT [dbo].[CT_PHIEUDATHANG] ([MaPhieuDH], [MaSanPham], [SoLuong], [DonGia]) VALUES (4, 8, 1, 392000)
GO
SET IDENTITY_INSERT [dbo].[CT_PHIEUNHAPHANG] ON 

INSERT [dbo].[CT_PHIEUNHAPHANG] ([MaCTPhieuNhapHang], [MaSanPham], [MaPhieuNhapHang], [Sluong], [DonGiaNhap], [TongTien]) VALUES (1, 18, 1, 10, 250000, 2500000)
INSERT [dbo].[CT_PHIEUNHAPHANG] ([MaCTPhieuNhapHang], [MaSanPham], [MaPhieuNhapHang], [Sluong], [DonGiaNhap], [TongTien]) VALUES (2, 4, 1, 10, 300000, 3000000)
INSERT [dbo].[CT_PHIEUNHAPHANG] ([MaCTPhieuNhapHang], [MaSanPham], [MaPhieuNhapHang], [Sluong], [DonGiaNhap], [TongTien]) VALUES (3, 17, 1, 17, 100000, 1700000)
INSERT [dbo].[CT_PHIEUNHAPHANG] ([MaCTPhieuNhapHang], [MaSanPham], [MaPhieuNhapHang], [Sluong], [DonGiaNhap], [TongTien]) VALUES (4, 8, 2, 16, 150000, 2400000)
INSERT [dbo].[CT_PHIEUNHAPHANG] ([MaCTPhieuNhapHang], [MaSanPham], [MaPhieuNhapHang], [Sluong], [DonGiaNhap], [TongTien]) VALUES (5, 13, 2, 20, 350000, 7000000)
INSERT [dbo].[CT_PHIEUNHAPHANG] ([MaCTPhieuNhapHang], [MaSanPham], [MaPhieuNhapHang], [Sluong], [DonGiaNhap], [TongTien]) VALUES (6, 3, 3, 20, 150000, 3000000)
INSERT [dbo].[CT_PHIEUNHAPHANG] ([MaCTPhieuNhapHang], [MaSanPham], [MaPhieuNhapHang], [Sluong], [DonGiaNhap], [TongTien]) VALUES (7, 1, 3, 25, 300000, 7500000)
SET IDENTITY_INSERT [dbo].[CT_PHIEUNHAPHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHangNCC] ON 

INSERT [dbo].[DonDatHangNCC] ([MaDonDatHangNCC], [MaNCC], [MaNV], [NgayLap], [TongSL], [TongTien], [TrangThai]) VALUES (1, N'NCC04     ', 3, CAST(N'2023-02-10T00:31:27.873' AS DateTime), 3, 7200000, 0)
INSERT [dbo].[DonDatHangNCC] ([MaDonDatHangNCC], [MaNCC], [MaNV], [NgayLap], [TongSL], [TongTien], [TrangThai]) VALUES (2, N'NCC07     ', 3, CAST(N'2023-02-10T00:32:32.757' AS DateTime), 2, 9400000, 0)
INSERT [dbo].[DonDatHangNCC] ([MaDonDatHangNCC], [MaNCC], [MaNV], [NgayLap], [TongSL], [TongTien], [TrangThai]) VALUES (3, N'NCC01     ', 1, CAST(N'2023-02-10T00:34:50.963' AS DateTime), 2, 10500000, 0)
SET IDENTITY_INSERT [dbo].[DonDatHangNCC] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [NgaySinh], [GioiTinh], [NgayTao], [TenDN], [MatKhau]) VALUES (1, N'Đỗ Gia Huy', N'Xã Thạnh Mỹ, Huyện Vĩnh Thạnh,Tỉnh Cần Thơ', N'0763512628', N'giahuydo01@gmail.com', CAST(N'2001-01-25T00:00:00.000' AS DateTime), N'Nam', CAST(N'2022-10-13T00:00:00.000' AS DateTime), N'giahuydo', N'12345')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [NgaySinh], [GioiTinh], [NgayTao], [TenDN], [MatKhau]) VALUES (2, N'Nguyễn Thành Long', N'Xã Tân Kim, Huyện Cần Giuộc,Tỉnh Long An', N'0987654321', N'locdaubuoi@gmail.com', CAST(N'2001-12-25T00:00:00.000' AS DateTime), N'Nam', CAST(N'2022-09-10T00:00:00.000' AS DateTime), N'thanhlong', N'12345')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [NgaySinh], [GioiTinh], [NgayTao], [TenDN], [MatKhau]) VALUES (3, N'Nguyễn Thanh Thảo', N'Xã Vĩnh Bình, Huyện Chợ Lách,Tỉnh Bến Tre', N'0987654321', N'nguyentahnhthao@gmail.com', CAST(N'2001-12-25T00:00:00.000' AS DateTime), N'Nữ', CAST(N'2022-09-07T00:00:00.000' AS DateTime), N'thanhthao', N'12345')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [NgaySinh], [GioiTinh], [NgayTao], [TenDN], [MatKhau]) VALUES (4, N'Nguyễn Hoàng Hùng', N'Xã Tân Ân Tây, Huyện Ngọc Hiển,Tỉnh Cà Mau', N'0987654321', N'nguyenhoanghung@gmail.com', CAST(N'2001-12-25T00:00:00.000' AS DateTime), N'Nam', CAST(N'2022-10-12T00:00:00.000' AS DateTime), N'hoanghung', N'12345')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [NgaySinh], [GioiTinh], [NgayTao], [TenDN], [MatKhau]) VALUES (5, N'Lê Xuân Huy', N'Xã Phước Hiệp, Huyện Mỏ Cày Nam,Tỉnh Bến Tre', N'0987387321', N'lexuanhuytvd@gmail.com', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Nam', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'xuanhuy', N'12345')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [NgaySinh], [GioiTinh], [NgayTao], [TenDN], [MatKhau]) VALUES (6, N'Nguyễn Thanh Na', N'Xã Thạnh Mỹ, Huyện Vĩnh Thạnh,Tỉnh Cần Thơ', N'0335847398', N'lexuanhuytvd@gmail.com', CAST(N'2001-07-10T00:00:00.000' AS DateTime), N'Nữ', CAST(N'2023-02-10T00:22:42.623' AS DateTime), N'thanhna', N'12345')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
--SET IDENTITY_INSERT [dbo].[LIENHE] ON 

--INSERT [dbo].[LIENHE] ([MaLH], [MaPhieuDH], [HoTen], [Email], [DienThoai], [NoiDung], [HinhAnh], [NgayCapNhat]) VALUES (1, 4, N'Nguyễn Thanh Na', N'lexuanhuytvd@gmail.com', N'0335847394', N'Tôi muốn đỗi sản phẩm Chương trình STEAM tiểu học – THCS 80 tiết. Lý do nó đã hỏng', N'hoadon4.PNG', CAST(N'2023-02-10T00:39:00' AS SmallDateTime))
--SET IDENTITY_INSERT [dbo].[LIENHE] OFF
--GO
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] ON 

INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (1, N'Steam Cấp Mầm Non')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (2, N'Steam Cấp 1')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (3, N'Steam Cấp 2')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai]) VALUES (4, N'Steam Cấp 3')
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] OFF
GO
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC01     ', N'Nhà cung cấp NEW BRAIN QUẬN 3', N'034 Trường Sa, phường 12, TP.HCM', N'0123684273          ')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC02     ', N'Nhà cung cấp NEW BRAIN Quận Tân Bình ', N'Số 13, Bàu Cát 6, Phường 14, TP.HCM', N'0283810958          ')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC03     ', N'Nhà cung cấp NEW BRAIN Quận 7 ', N'Vietopia, 02-04 Đường số 9, Tân Hưng, TP.HCM', N'0924419885          ')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC04     ', N'Nhà cung cấp NEW BRAIN Quận Nam Từ Liêm', N'Số 8, B9, KĐT Mỹ Đình 1, Mỹ Đình, Hà Nội', N'0823481910          ')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC05     ', N'Nhà cung cấp NEW BRAIN Quận Hà Đông', N'Số nhà 1162, đường Quang Trung, Phường Yên Nghĩa, Hà Nội.', N'0232391209          ')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC06     ', N'Nhà cung cấp NEW BRAIN Quận Nam Từ Liêm', N'Số 8, B9, KĐT Mỹ Đình 1, Mỹ Đình, Hà Nội', N'0983931001          ')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC07     ', N'Nhà cung cấp NEW BRAIN Đà Nẵng', N'Số 73, Phó Đức Chính, Mân Thái, Sơn Trà, Đà Nẵng', N'0899633869          ')
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [Email], [SoDT], [HinhAnh], [TenDN], [MatKhau], [ID_PhanQuyen]) VALUES (1, N'Đỗ Gia Huy', CAST(N'2001-07-23T00:00:00.000' AS DateTime), N'Nam', N'giahuydo@gmail.com', N'0356322754  ', N'NV1.JPG                                                                                             ', N'GIABO', N'12345', 3)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [Email], [SoDT], [HinhAnh], [TenDN], [MatKhau], [ID_PhanQuyen]) VALUES (2, N'Nguyễn Thành Lộc', CAST(N'2001-05-01T00:00:00.000' AS DateTime), N'Nam', N'locdaubuoi@gmail.com', N'0355467282  ', N'NV2.JPG                                                                                             ', N'THANHLOC', N'12345', 2)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [Email], [SoDT], [HinhAnh], [TenDN], [MatKhau], [ID_PhanQuyen]) VALUES (3, N'Lê Xuân Huy', CAST(N'2001-08-12T00:00:00.000' AS DateTime), N'Nam', N'huyle@gmail.com', N'0355467282  ', N'NV2.JPG                                                                                             ', N'XUANHUY', N'12345', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [Email], [SoDT], [HinhAnh], [TenDN], [MatKhau], [ID_PhanQuyen]) VALUES (4, N'Admin', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Nam', N'admin@gmail.com', N'0355467282  ', N'NV2.JPG                                                                                             ', N'admin', N'12345', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [Email], [SoDT], [HinhAnh], [TenDN], [MatKhau], [ID_PhanQuyen]) VALUES (5, N'Bùi Văn Khoa', CAST(N'2001-08-02T00:00:00.000' AS DateTime), N'Nam', N'buivankhoa@gmail.com', N'0355923282  ', N'NV2.JPG                                                                                             ', N'khoabui', N'12345', 2)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
INSERT [dbo].[PHANQUYEN] ([ID_PhanQuyen], [TenPQ]) VALUES (1, N'Admin')
INSERT [dbo].[PHANQUYEN] ([ID_PhanQuyen], [TenPQ]) VALUES (2, N'Nhân Viên Bán Hàng')
INSERT [dbo].[PHANQUYEN] ([ID_PhanQuyen], [TenPQ]) VALUES (3, N'Nhân Viên Nhập Hàng')
GO
SET IDENTITY_INSERT [dbo].[PHIEUDATHANG] ON 

INSERT [dbo].[PHIEUDATHANG] ([MaPhieuDH], [MaKH], [NgayDat], [Tong_SL_Dat], [ThanhTien], [TinhTrang], [PhiShip]) VALUES (1, 5, CAST(N'2023-01-23T23:59:36.347' AS DateTime), 6, 2082500, 3, 52500)
INSERT [dbo].[PHIEUDATHANG] ([MaPhieuDH], [MaKH], [NgayDat], [Tong_SL_Dat], [ThanhTien], [TinhTrang], [PhiShip]) VALUES (2, 5, CAST(N'2023-02-10T00:03:02.323' AS DateTime), 2, 1401500, 3, 161500)
INSERT [dbo].[PHIEUDATHANG] ([MaPhieuDH], [MaKH], [NgayDat], [Tong_SL_Dat], [ThanhTien], [TinhTrang], [PhiShip]) VALUES (3, 5, CAST(N'2023-02-10T00:19:26.213' AS DateTime), 4, 1631500, 3, 161500)
INSERT [dbo].[PHIEUDATHANG] ([MaPhieuDH], [MaKH], [NgayDat], [Tong_SL_Dat], [ThanhTien], [TinhTrang], [PhiShip]) VALUES (4, 6, CAST(N'2023-02-10T00:24:35.280' AS DateTime), 3, 1083000, 3, 91000)
SET IDENTITY_INSERT [dbo].[PHIEUDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEUGIAOHANG] ON 

INSERT [dbo].[PHIEUGIAOHANG] ([MaGH], [MaPhieuDH], [TenKH], [Email], [DiaChi], [SDT], [NgayTao]) VALUES (1, 1, N'Lê Xuân Huy', N'lexuanhuytvd@gmail.com', N'Xã Phước Hiệp, Huyện Mỏ Cày Nam,Tỉnh Bến Tre', N'0987387321', CAST(N'2023-02-09T23:59:36.347' AS DateTime))
INSERT [dbo].[PHIEUGIAOHANG] ([MaGH], [MaPhieuDH], [TenKH], [Email], [DiaChi], [SDT], [NgayTao]) VALUES (2, 2, N'Lê Xuân Huy', N'lexuanhuytvd@gmail.com', N'Lạc Dương, Huyện Lạc Dương, Tỉnh Lâm Đồng', N'0987387321', CAST(N'2023-02-10T00:03:02.323' AS DateTime))
INSERT [dbo].[PHIEUGIAOHANG] ([MaGH], [MaPhieuDH], [TenKH], [Email], [DiaChi], [SDT], [NgayTao]) VALUES (3, 3, N'Lê Xuân Huy', N'lexuanhuytvd@gmail.com', N'Lạc Dương, Huyện Lạc Dương, Tỉnh Lâm Đồng', N'0987387321', CAST(N'2023-02-10T00:19:26.213' AS DateTime))
INSERT [dbo].[PHIEUGIAOHANG] ([MaGH], [MaPhieuDH], [TenKH], [Email], [DiaChi], [SDT], [NgayTao]) VALUES (4, 4, N'Nguyễn Thanh Na', N'lexuanhuytvd@gmail.com', N'Xã Thạnh Mỹ, Huyện Vĩnh Thạnh,Tỉnh Cần Thơ', N'0335847398', CAST(N'2023-02-10T00:24:35.280' AS DateTime))
SET IDENTITY_INSERT [dbo].[PHIEUGIAOHANG] OFF
GO
INSERT [dbo].[PHIEUNHAPHANG] ([MaPhieuNhapHang], [MaNCC], [MaNV], [NgayLap_PN], [TongSL], [TongTien_NH]) VALUES (1, N'NCC04     ', 3, CAST(N'2023-02-10T00:32:12.817' AS DateTime), 3, 7200000)
INSERT [dbo].[PHIEUNHAPHANG] ([MaPhieuNhapHang], [MaNCC], [MaNV], [NgayLap_PN], [TongSL], [TongTien_NH]) VALUES (2, N'NCC07     ', 3, CAST(N'2023-02-10T00:33:05.753' AS DateTime), 2, 9400000)
INSERT [dbo].[PHIEUNHAPHANG] ([MaPhieuNhapHang], [MaNCC], [MaNV], [NgayLap_PN], [TongSL], [TongTien_NH]) VALUES (3, N'NCC01     ', 1, CAST(N'2023-02-10T00:35:36.373' AS DateTime), 2, 10500000)
GO
SET IDENTITY_INSERT [dbo].[SALE] ON 

INSERT [dbo].[SALE] ([MASL], [TENSL], [NGAYBATDAU], [NGAYKETTHUC]) VALUES (1, N'tết', CAST(N'2023-01-22T00:00:00.000' AS DateTime), CAST(N'2023-02-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[SALE] OFF
GO
SET IDENTITY_INSERT [dbo].[SPSALE] ON 

INSERT [dbo].[SPSALE] ([MASPSALE], [MASL], [MaSanPham], [GIAMGIA]) VALUES (1, 1, 1, 10)
INSERT [dbo].[SPSALE] ([MASPSALE], [MASL], [MaSanPham], [GIAMGIA]) VALUES (2, 1, 8, 20)
INSERT [dbo].[SPSALE] ([MASPSALE], [MASL], [MaSanPham], [GIAMGIA]) VALUES (3, 1, 9, 30)
INSERT [dbo].[SPSALE] ([MASPSALE], [MASL], [MaSanPham], [GIAMGIA]) VALUES (4, 1, 11, 10)
SET IDENTITY_INSERT [dbo].[SPSALE] OFF
GO
SET IDENTITY_INSERT [dbo].[THONGTINSANPHAM] ON 

INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (1, 1, N'NCC01     ', N'Khay Tam Giác Xếp Hình mở rộng tư duy sáng tạo ở bé', 150000, N'Nhiệm vụ của người chơi là sắp xếp các miếng ghép sao cho vừa vào khay tam giác xếp hình.Khay Tam Giác Xếp Hình mở rộng tư duy sáng tạo có đính kèm sẵn 10 thẻ công việc khác nhau cho trẻ. Mỗi thẻ có hai mặt và khay làm việc có nắp.Tất cả chi tiết được mài dũa tỉ mỉ, không góc nhọn an toàn tuyệt đối cho trẻ. Chất lượng cao.Khay Tam Giác Xếp Hình phù hợp cho trẻ mầm non mở rộng tư duy sáng tạo, trẻ mẫu giáo có độ tuổi trên 3+.', N'product8.png', 0, 35)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (2, 2, N'NCC02     ', N'Bộ Kiếng Đo Hình Chiếu Không Gian dạy toán hình học', 250000, N'Bộ Kiếng Đo Hình Chiếu Không Gian gồm một tấm kiếng mica màu đỏ trong loại tốt và một miếng nhựa xanh hỗ trợ. Kiếng Đo có kèm hướng dẫn hỗ trợ sử dụng chi tiết. Khi gắn tấm nhựa xanh vào, miếng mica hoạt động như một tấm kiếng thật, có khả năng phản chiếu vật thể. Hỗ trợ trong việc học Toán hình học: Tìm hiểu & phân tích các dạng hình học và khái niệm đồng dạng, tương đồng và đối xứng của các hình đó. Trên kiếng có in các giá trị con số như cây thước để vẽ và đo đạc.', N'product-cap1-1.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (3, 3, N'NCC03     ', N'Chương trình STEAM tiểu học – THCS 80 tiết', 300000, N'Bộ chương trình STEAM tiểu học – THCS là một gói STEAM hoàn chỉnh bao gồm thiết bị, giáo án, sách hướng dẫn. Nội dung trọng tâm xoay quanh chủ đề lớn NĂNG LƯỢNG XANH:Năng lượng mặt trời (20 bài thực hành) ,Năng lượng gió (20 bài thực hành) ,Năng lượng nước (20 bài thực hành) , Ánh sáng và Thấu kính (20 bài thực hành), Chương trình STEAM tiểu học – THCS được xây dựng đầy đủ, hoàn chỉnh, thuộc một trong 4 gói STEAM các cấp được xây dựng có hệ thống từ mầm non đến cấp 3.', N'product-ct80.png', 0, 30)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (4, 4, N'NCC04     ', N'Chương trình STEAM Tiểu Học-THCS-THPT 100 tiết', 350000, N'Chương trình STEAM tiểu học – THCS được xây dựng đầy đủ, hoàn chỉnh, thuộc một trong 4 gói STEAM các cấp được xây dựng có hệ thống từ mầm non đến cấp 3. Với hệ thống miếng ghép đa dạng gồm 100 buổi phục vụ hoạt động giáo dục trẻ tiểu học và THCS. Chương trình thiết kế theo phương pháp giáo dục chủ đạo là STEAM – đây cũng là phương pháp giáo dục tiên tiến đang chiếm ưu thế tại nhiều nước phát triển trên thế giới, giúp trẻ phát triển theo hướng khoa họ', N'product-ct120.png', 0, 20)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (5, 1, N'NCC05     ', N'Đồng Hồ Tập Xem Giờ Phút cho bé mầm non', 150000, N'Đồng hồ tập xem giờ phút cung cấp cho trẻ những hiểu biết về đặc điểm của đồng hồ và biết được các chức năng của chúng:Số ;   Kim ngắn – kim giờ;   Kim dài – kim phút. Đồng hồ bằng nhựa có kiểu dáng đơn giản và hình tròn dễ thương, thu hút sự chú ý của bé, là sản phẩm trang trí trong ngôi nhà.', N'product9.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (6, 2, N'NCC06     ', N'Bộ Que Tính Học Toán Cộng Trừ phạm vi 1 đến 100', 240000, N'Từ 3 tuổi, trí não bé đang trong giai đoạn bắt đầu phát triển mạnh mẽ, cũng là độ tuổi bé được làm quen với chữ cái và các con số vì vậy đây là thời điểm thích hợp để ba mẹ giúp bé làm quen và học tập. Bộ Que Tính Học Toán Cộng Trừ 100 Số giúp học sinh thực hành cộng, trừ trong phạm vi 10, cộng trừ (không nhớ) trong phạm vi 100. Đây là bộ thiết bị dạy phép cộng, phép trừ tiểu học lớp 1 lớp 2', N'product-cap1-5.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (7, 2, N'NCC07     ', N'Đồng Hồ Tập Xem Thời Gian hình cú cho bé', 230000, N'Đồng Hồ Tập Xem Thời Gian hình cú giáo dục trẻ biết quý trọng thời gian. Biết thời gian rất cần thiết đối với con người và ý thức học tập. Giáo viên mầm non sử dụng Đồng Hồ Dạy Học Hình Cú để phát triển kỹ năng quan sát, chú ý, ghi nhớ có chủ định và chơi trò chơi của bé.', N'product1.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (8, 1, N'NCC07     ', N'Gói Bổ Sung 76 Quả Cân Bằng Nhựa', 490000, N'Sản phẩm bổ sung 76 quả cân nhựa:
																																							16 quả cân nhựa 20g;
																																							20 quả cân nhựa 10g;
																																							20 quả cân nhựa 5g;
																																							20 quả cân nhựa 1g.
																																							Tất cả các cân nhựa được đóng trong hộp nhựa trong suốt có khóa.
																																							Gói Quả Cân Nhựa Bổ Sung 1054P phù hợp cho trẻ 5+ tuổi trở lên.', N'product3.png', 0, 26)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (9, 1, N'NCC07     ', N'Bộ Đo Thể Tích và Dung Tích cho trẻ mầm non', 480000, N'Thông tin:Bậc: STEAM mầm non ----- Độ tuổi: 3+------- Dạy:Đo dung tích:
																																							Thiết bị Bộ Đo Thể Tích 1044 có 6 mô hình khối thể tích khác nhau (khối vuông, khối nón tròn, khối chóp tứ giác đều, khối chữ nhật, khối lăng trụ và khối cầu).
																																							Các hình khối có thiết kế kín và có một miệng lỗ dưới đáy mỗi khối mô hình, cho phép sử dụng các vật liệu như cát, hạt cườm hoặc chất lỏng (nước) đổ vào, khiến cho lớp thêm sinh động.
																																							Làm quen với các hình khối khác nhau, sâu hơn có thể dạy tới so sánh tỷ lệ thể tích giữa các hình khối.
																																							Bộ Đo Thể Tích Mầm Non #1044 Gigo phù hợp cho trẻ mầm non & mẫu giáo trên 3 tuổi. Chất liệu bằng nhựa cao cấp.
																																							Trẻ biết cách đo thể tích của nhiều đối tượng khác nhau bằng 1 đơn vị đo, biết đếm và đọc kết quả đếm.', N'product4.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (10, 2, N'NCC07     ', N'Đồ chơi thông minh Kỹ Sư Cơ Khí STEAM', 960000, N'Với thiết kế sinh động đáng yêu, kích thích trí tư duy, sáng tạo, bộ Đồ chơi thông minh Kỹ Sư Cơ Khí STEAM #1406 thuộc dòng đồ chơi sáng tạo mang tính hướng nghiệp thông minh. Kỹ Sư Cơ Khí STEAM sẽ là món quà không thể bỏ lỡ dành cho các bé trong giai đoạn phát triển tư duy và nhận thức.
																																								<br />
																																								1/ Giới thiệu về bộ Đồ chơi thông minh Kỹ Sư Cơ Khí STEAM #1406:
																																								<br />
																																								Bộ Đồ chơi thông minh Kỹ Sư Cơ Khí STEAM tìm hiểu về các loại máy móc đơn giản, cánh tay đòn, mặt phẳng nghiêng, bánh răng, dầm, bánh xe,…
																																								<br />
																																								Kỹ Sư Cơ Khí STEAM gồm 102 chi tiết miếng ghép, trong đó có một động cơ điện và hộp pin.
																																								<br />
																																								Dòng sản phẩm STEAM của Gigo được thiết kế riêng để mang đến cho trẻ những trải nghiệm thực tế. Các mô hình có thiết kế tập trung vào độ sắc nét và chức năng riêng.
																																								<br />
																																								Bộ Đồ chơi thông minh Kỹ Sư Cơ Khí STEAM bao gồm nhiều mô hình miếng ghép được làm từ chất liệu nhựa an toàn, không độc hại, thân thiện với môi trường và sức khỏe của bé. Các góc cạnh bo tròn kết hợp bề mặt trơn nhẵn, đồ chơi không gây trầy xước hay nguy hiểm cho bé khi vui chơi.
																																								<br />
																																								Việc trẻ chơi và hiểu sẽ thỏa mãn nhu cầu khám phá phát triển tiềm năng của chúng. Những giá trị giáo dục cho trẻ khi chơi bộ đồ chơi Kỹ Sư Cơ Khí STEAM này:
																																								<br />
																																								1. Phát triển ý tưởng;
																																								<br />
																																								2. Phát triển khả năng ngôn ngữ;
																																								<br />
																																								3. Phối hợp nhóm;
																																								<br />
																																								4. Sử dụng trí tưởng tượng.
																																								<br />
																																								Với bộ đồ chơi kỹ sư sửa chữa này bé sẽ tập trung được khả năng phản xạ của mình. Biết cách xây dựng hình ảnh và lắp ráp đồ vật.', N'product-cap1-3.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (11, 2, N'NCC07     ', N'Thiết bị dạy học Tháp Học Toán 3D STEAM', 230000, N'Thông tin :
																																						    <br />
																																							Bậc: STEAM cấp 1, STEAM mầm non
																																							<br />
																																							Độ tuổi: 5+
																																							<br />
																																							Dạy:  Toán cộng trừ nhân chia
																																							1/ Giới thiệu Thiết bị dạy học Tháp Học Toán 3D STEAM #1187:
																																							<br />
																																							Thiết bị dạy học Tháp Học Toán 3D STEAM gồm 236 chi tiết, trong đó có 9 cầu thang + 10 tháp + 10 đế cắm + 24 thử thách bằng thẻ nhựa.
																																							<br />
																																							Đây là một trò chơi khá vui, trong đó kết hợp các khối miếng ghép đặc biệt và phép toán.
																																							<br />
																																							Xuất phát từ ý tưởng nghề đưa thư ở địa danh hõm chảo Mafate trên đảo Réunion. Tại đây, người đưa thư phải leo lên xuống nhiều bậc thang để có thể hoàn thành việc gửi thư.
																																							<br />
																																							2/ Thiết bị dạy học Tháp Học Toán 3D STEAM mang tính giáo dục cao:
																																							<br />
																																							Thiết bị dạy học Tháp Học Toán 3D STEAM giúp phát triển tư duy logic và khả năng giải quyết vấn đề.
																																							<br />
																																							Bộ thiết bị phù hợp với cả tự học và học nhóm.
																																							<br />
																																							Các chủ đề học của Tháp Học Toán 3D STEAM #1187 bao gồm:
																																							<br />
																																								1. Hiểu được sự phân tách số lượng lên tới 10 bằng phương pháp Cuisenaire.
																																							<br />
																																								2. Phát triển kỹ năng toán học và lý luận logic.
																																							<br />
																																								3. Thực hiện nguyên tắc thuật toán và chuỗi suy luận.
																																							<br />
																																							Thông tin bổ sung
																																							<br />
																																							TRỌNG LƯỢNG	             1.45 kg
																																							<br />
																																							KÍCH THƯỚC	             37 × 8 × 4 cm', N'product-cap1-4.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (12, 1, N'NCC06     ', N'Bảng Dạy Học Mầm Non 72×56 có giá di động', 4500000, N' Bảng Dạy Học Mầm Non di động có chân bánh xe và có khung bao viền cạnh bằng nhựa định hình có kết cấu nhỏ gọn, thanh, tạo cảm giác nhẹ nhàng, kiểu dáng đẹp, phù hợp cho văn phòng nhỏ ,cao cấp, ít người, thông tin vừa phải.
																																								<br />
																																								-- Giới thiệu thiết bị giáo dục Bảng Dạy Học Mầm Non có giá treo di động 
																																								<br />
																																								. Thiết bị Bảng dạy học mầm non được thiết kế đa chức năng hỗ trợ việc dạy học. Bảng có các lỗ xếp dạng lưới để ghim Bảng Chữ Cái và các miếng ghép xếp hình.
																																								<br />
																																								. Bảng dạy học mầm non di động, có chân bánh xe, an toàn và kiên cố.
																																								<br />
																																								. Có sách hướng dẫn sử dụng đi kèm.
																																								<br />
																																								Bảng được làm từ chất liệu nhựa cao cấp. Phù hợp với trẻ mầm non, mẫu giáo. Độ tuổi trẻ trên 3 tuổi.
																																								<br />
																																								 -- Thiết kế của Bảng Dạy Học Mầm Non đa năng:
																																								<br />
																																								. Kích thước khung bảng: Dài 84 cm x Rộng 70 cm.
																																								<br />
																																								. Kích thước sử dụng của bảng: Dài 72 cm x Rộng 56 cm.
																																								<br />
																																								. Bảng Dạy Học Mầm Non đa năng có thể sử dụng chung với Bảng Chữ Cái Tiếng Anh #1401 và 12 Thẻ Hình Học Từ Vựng Tiếng Anh #1402.', N'product10.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (13, 1, N'NCC06     ', N'Thùng Xâu Luồn Hạt Nhựa Lớn 106 chi tiết', 1600000, N' Thông tin :
																																								<br />
																																								Bậc: STEAM mầm non
																																								<br />
																																								Độ tuổi: 3+
																																								<br />
																																								Dạy:  Kỹ năng tay & mắt
																																								<br />
																																								-- I/ Giới thiệu thiết bị giáo dục Xâu chuỗi hạt lớn 106 chi tiết nhiều màu 1040:
																																								<br />
																																								. Thùng xâu chuỗi hạt lớn gồm 100 chi tiết hình dạng khác nhau (Hình vuông, hình cầu, hình trụ, hình elip).
																																								<br />
																																								. Các hạt có 6 màu và đường kính lớn hơn 33mm, có thể tránh được tình trạng bé vô ý nuốt phải.
																																								<br />
																																								. Xâu chuỗi hạt lớn dùng dạy phân loại màu sắc, hình dạng, xếp thứ tự, xúc giác và nhiều trò chơi dạy học khác.
																																								<br />
																																								. Chất liệu hạt bằng nhựa tuyệt đối an toàn cho trẻ.
																																								<br />
																																								. Thiết bị giáo dục Xâu chuỗi hạt lớn 106 chi tiết #1040 phù hợp với trẻ 3+.
																																								<br />
																																								II/ Giáo án xâu hạt lớn cho trẻ 25 – 36 tháng tuổi
																																								<br />
																																								. Trẻ biết cầm hạt xâu thành vòng, trẻ xâu được vòng hoàn chỉnh và biết gọi tên sản phẩm của mỉnh.
																																								<br />
																																								1/ Kiến thức và kỹ năng
																																								<br />
																																								. Rèn kỹ năng xâu hạt cho trẻ.
																																								<br />
																																								. Phát triển vận động cho trẻ và rèn sự khéo léo, nhanh nhẹn của các ngón tay.
																																								<br />
																																								. Giáo dục trẻ chơi xong biết cất hạt vào nơi qui định.
																																								<br />
																																								. Rèn luyện đức tính kiên nhẫn cho trẻ.
																																								<br />
																																								. Phát triển ngôn ngữ cho trẻ: Trẻ nói tên sản phẩm của mình là “Chiếc vòng”, hạt vòng màu đỏ, màu xanh.
																																								<br />
																																								2/ Chuẩn bị
																																								<br />
																																								. Mỗi trẻ 1 rổ hạt.
																																								<br />
																																								. Dây xỏ.', N'product11.png', 0, 30)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (14, 1, N'NCC06     ', N'Hộp 31 Bảng Chữ Cái Tiếng Anh bằng nhựa', 990000, N' Thông tin :
																																								<br />
																																								Bậc: STEAM mầm non
																																								<br />
																																								Độ tuổi: 3+
																																								<br />
																																								Dạy:  Ngôn ngữ
																																								<br />
																																								-- Các giáo sư ngôn ngữ và não bộ từ các trường đại học của Anh và Mỹ đã nghiên cứu và chỉ ra rằng: Việc thực hành nói song ngữ có thể được thực hiện từ rất sớm, ngưỡng tối ưu là từ 9 tháng đến 6 tuổi. 
																																								Đây là giai đoạn não bộ trẻ phát triển với tốc độ nhanh chóng, thẩm thấu mọi thông tin xung quanh với tốc độ chóng mặt. 
																																								Học Bảng Chữ Cái Tiếng Anh in thường trong giai đoạn này chính là điều tốt nhất mà bố mẹ nên dành cho các bé.
																																								<br />
																																								1/ Giới thiệu thiết bị dạy học mầm non Bảng Chữ Cái Tiếng Anh 31:
																																								<br />
																																								. Bảng Chữ Cái Tiếng Anh có 31 chữ cái tiếng Anh in thường (2 bộ nguyên âm và 1 bộ phụ âm).
																																								<br />
																																								. Thiết bị mầm non Bảng Chữ Cái Tiếng Anh được làm từ chất liệu nhựa chất lượng cao, đảm bảo cho sự an toàn của bé.
																																								<br />
																																								. Bề mặt Chữ Cái Tiếng Anh nhẵn mịn với các góc cạnh bo tròn không sắc nhọn, không gây tổn thương đến làn da nhạy cảm của bé.
																																								<br />
																																								. Độ tuổi phù hợp: Trẻ trên 3 tuổi.
																																								<br />
																																								2/ Thiết kế Bảng Chữ Cái Tiếng Anh:
																																								<br />
																																								. Bảng chữ in lớn và dài với các chữ cái to cỡ bàn tay của bé, giúp bé nhận biết màu sắc, hình dáng, mặt các chữ cái.
																																								<br />
																																								. Các chữ cái in màu hấp dẫn, vui mắt, bé dễ dàng tháo ra đặt vào.
																																								<br />
																																								. Mặt trước là 31 chữ cái. Mặt sau có móc để gắn lên bảng
																																								<br />
																																								. Bảng Chữ Cái Tiếng Anh #1401 có thể sử dụng chung với Bảng Dạy Học Mầm Non #1177-1 và 12 Thẻ Hình Học Từ Vựng Tiếng Anh.
																																								<br />
																																								. Các miếng ghép chữ cái có kích thước vuông: 80mm x 80mm.', N'product12.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (15, 1, N'NCC06     ', N'Bánh Răng Trang Trí Tường 30 mô hình STEAM', 7200000, N' Thông tin :
																																								<br />
																																								Bậc: STEAM mầm non
																																								<br />
																																								Độ tuổi: 3+
																																								<br />
																																								Dạy:  STEAM mầm non
																																								<br />
																																								 1/  Giới thiệu giáo cụ Bánh Răng Trang Trí Tường 30 mô hình STEAM:
																																								<br />
																																								. Thiết bị dạy học mới nhất của Gigo: Bánh Răng Trang Trí Tường 30 mô hình STEAM là sản phẩm thực tiễn 3 chiều để dạy học STEAM. Đặc biệt là các kỹ năng cơ khí,
																																								bé có thể phát triển kỹ năng này qua việc lắp ráp các mô hình trong sách hướng dẫn.
																																								<br />
																																								. Mỗi chủ đề / mô hình lắp ráp có thể chơi trên tường và trên sàn nhà. Trẻ có thể tự chơi hoặc dưới sự hướng dẫn của giáo viên.
																																								<br />
																																								. Thông qua các câu chuyện minh họa, giáo viên có thể được dạy các khái niệm cơ bản như chữ cái, tính toán với các con số, phát triển tính cách nhân vật và các hình ảnh với nội dung khác nhau.
																																								<br />
																																								 2/  Bánh Răng Trang Trí Tường 30 mô hình STEAM mang tính giáo dục cao:
																																								<br />
																																								Các mô hình lắp ráp và trò chơi sẽ hướng dẫn bé làm quen với:
																																								<br />
																																								. Nguyên tắc vật lý đơn giản & ứng dụng khoa học thông qua chơi.
																																								<br />
																																								. Phương pháp lắp ráp sáng tạo và chủ đề bối cảnh mô hình để truyền cảm hứng cho trí tưởng tượng.
																																								<br />
																																								. Miếng ghép có thiết kế tiêu chuẩn, dễ dàng lắp ráp, bao gồm bánh răng, miếng ghép truyền động và hệ thống điều khiển.
																																								<br />
																																								Thông tin bổ sung
																																								<br />
																																								. TRỌNG LƯỢNG	6.10 kg
																																								<br />
																																								. KÍCH THƯỚC	59.3 × 40.6 × 23.1 cm', N'product13.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (16, 1, N'NCC06     ', N'8 Bảng Chun Học Toán Hai Mặt bằng dây thun', 660000, N' Thông tin :
																																								<br />
																																								Bậc: STEAM mầm non
																																								<br />
																																								Độ tuổi: 3+
																																								<br />
																																								Dạy:  Hình học
																																								<br />
																																								 1/  Giới thiệu thiết bị giáo dục Bộ 8 Bảng Chun Học Toán Hai Mặt
																																								<br />
																																								. Bảng Chun Học Toán Hai Mặt gồm combo 8 bảng chun hai mặt bằng nhựa màu vàng tươi sáng và 200 sợi dây chun cao su nhiều màu, kèm sách hướng dẫn.
																																								<br />
																																								. Trên cả hai mặt của bảng chun có các mấu (tù đầu)
																																								<br />
																																									. Một mặt dạng lưới 5X5, các mấu (tù đầu) xếp thẳng hàng dọc và ngang để mắc chun;
																																								<br />
																																									. Mặt kia gồm 12 mấu (tù đầu) được xếp theo dạng hình tròn
																																								<br />
																																								. Thiết bị Bảng Chun Học Toán làm từ chất liệu polypropylene bền bỉ đảm bảo tiêu chuẩn an toàn và hợp quy chuẩn.
																																								<br />
																																								. Sản phẩm phù hợp cho trẻ trên 3 tuổi.
																																								<br />
																																								--Mục đích học tập của thiết bị giáo dục Bộ 8 Bảng Chun Học Toán Hai Mặt 1601--
																																								<br />
																																								Bảng Chun Học Toán giúp bé:
																																								<br />
																																								. Học về hình dạng, số, chữ;
																																								<br />
																																								. Giúp khéo léo sử dụng đôi tay;
																																								<br />
																																								. So sánh các điểm tương đồng, sự khác biệt về hình dạng và kích cỡ;
																																								<br />
																																								. Phát triển trí não và khả năng sáng tạo.
																																								<br />
																																								. Qua việc căng chun, tạo hình giúp bé đếm và làm việc đối xứng, đồng dạng, chu vi, diện tích, các phân số và góc.
																																								<br />
																																								. Bảng Chun Học Toán thích hợp trong việc dạy học cũng như cha mẹ cùng chơi với bé, khám phá, so sánh, tạo ra các hình dạng thiết kế hình học.
																																								<br />
																																								Thông tin bổ sung
																																								<br />
																																								TRỌNG LƯỢNG	1.28 kg
																																								<br />
																																								KÍCH THƯỚC	18.5 × 18.5 × 18.5 cm', N'product14.png', 0, 10)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (17, 1, N'NCC05     ', N'Thiết Bị Cân Đo Trọng Lượng mầm non', 1700000, N'Thông tin :
																																								<br />
																																								Bậc: STEAM mầm non
																																								<br />
																																								Độ tuổi: 5+
																																								<br />
																																								Dạy:  Khối lượng, dung tích
																																								1/ Giới thiệu về thiết bị dạy học mầm non Cân trọng lượng dạy học mẫu giáo 1054:
																																								    <br />
																																									. Thiết bị giáo dục Cân trọng lượng dạy học gồm 1 chiếc cân, 2 khay trong suốt có nắp, 11 quả cân kim loại và 14 quả cân nhựa.
																																									<br />
																																									. Cân trọng lượng dạy học dùng cho trẻ học quan sát và nhận thức về độ nghiên, độ nặng của một vật.
																																									<br />
																																									. Hai hộp nhựa lớn gắn 2 bên chiếc cân, một bên chứa nước hoặc các vật dụng, một bên đặt các quả cân, trẻ tự tay thí nghiệm sẽ mang lại các trải nghiệm thú vị.
																																									<br />
																																									. Cân trọng lượng dạy học cho bé mầm non và mẫu giáo, phù hợp trẻ 5+ trở lên.
																																									<br />
																																									. Thông tin bổ sung
																																							    <br />
																																								TRỌNG LƯỢNG	1.59 kg
																																								<br />
																																								KÍCH THƯỚC	46 × 17 × 17 cm', N'product15.png', 0, 27)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (18, 1, N'NCC05     ', N'Đế Gắn Miếng Ghép đa năng – Tường Gigo', 2100000, N'Thông tin :
																																								<br />
																																								Bậc: STEAM mầm non
																																								<br />
																																								Độ tuổi: 3+
																																								<br />
																																								Dạy:  Trang trí
																																								<br />
																																								Xuất phát từ nhu cầu lắp ráp các mô hình lớn hơn, phục vụ nhu cầu thi đấu hay mục đích giới thiệu trang trí nên Đế Gắn Miếng Ghép #T036R đã ra đời.
																																								<br />
																																								1/ Giới thiệu thiết bị Đế Gắn Miếng Ghép đa năng – Tường Gigo 58 chi tiết T036R
																																								<br />
																																								Đóng gói: 6 miếng / bộ.
																																								<br />
																																								Kích thước: 30cm(D) * 20cm(R) * 12cm(C) / miếng.
																																								<br />
																																								Diện tích yêu cầu: Lắp ráp linh hoạt, phù hợp mọi diện tích.
																																								<br />
																																								Vị trí sử dụng: Sản phẩm có thể đính lên tường, đặt dưới đất tùy mục đích sử dụng.
																																								<br />
																																								Chức năng:
																																								<br />
																																									. Dùng làm hoạt động thi đua, quảng cáo, sự kiện, lễ tết, thông báo;
																																									<br />
																																									. Thích hợp cắm với tất cả miếng ghép Gigo;
																																									<br />
																																									. Dễ dàng tháo lắp.
																																									 <br />
																																								2/ Hướng dẫn sử dụng Đế Gắn Miếng Ghép đa năng – Tường Gigo #T036R
																																								<br />
																																									1. Gắn tường hoặc làm đế cắm cho các cuộc thi, hoạt động có sử dụng đến mô hình lớn.
																																								<br />
																																									2. Kết hợp sáng tạo cùng với các miếng ghép Gigo ở các sản phẩm bất kỳ.
																																								<br />
																																									3. Sử dụng kết hợp với bộ Bánh Răng Trang Trí Tường 30 mô hình:
																																							    <br />
																																								Thông tin bổ sung
																																								<br />
																																								TRỌNG LƯỢNG	2.75 kg
																																								<br />
																																								KÍCH THƯỚC	23.3 × 20.2 × 33.6 cm', N'product16.png', 0, 20)
INSERT [dbo].[THONGTINSANPHAM] ([MaSanPham], [MaLoai], [MaNCC], [TenSanPham], [GiaSanPham], [MoTa], [HinhAnh], [GiamGia], [SLTon]) VALUES (19, 1, N'NCC05     ', N'240 Miếng Nhựa Xếp Hình Khối Không Gian 3D', 3600000, N'Thông tin :
																																								<br />
																																								Bậc: STEAM mầm non
																																								<br />
																																								Độ tuổi: 4+
																																								<br />
																																								Dạy:  Không gian
																																								<br />
																																								1/ Giới thiệu về thiết bị mầm non Bộ Xếp Hình Khối 3D 240 miếng ghép nhiều màu #1216:
																																								<br />
																																								    . Gồm 240 miếng X GEO trong mờ và sách hướng dẫn in màu 16 trang.
																																									<br />
																																									. Mục đích phát triển kỹ năng học tập của trẻ đối với hệ thống kiến thức về kết cấu.
																																									<br />
																																									. X GEO là một hệ thống xây dựng hình học với 7 loại cơ bản dễ dàng tháo rời nhờ bản lề.
																																									<br />
																																									. Mỗi miếng X GEO có một lỗ ở trung tâm để dễ dàng nhận dạng, xử lý.
																																									<br />
																																									. Lắp ráp cùng lúc các mô hình lăng kính, hình chóp, khối đa diện đều và khối Archimedean (trừ mô hình A) để dễ quan sát, so sánh và thảo luận trong lớp.
																																									<br />
																																									. Độ tuổi phù hợp: Trẻ trên 4 tuổi.
																																							    <br />
																																								Thông tin bổ sung
																																								<br />
																																								TRỌNG LƯỢNG	3.91 kg
																																								<br />
																																								KÍCH THƯỚC	37 × 23 × 16 cm', N'product17.png', 0, 10)
SET IDENTITY_INSERT [dbo].[THONGTINSANPHAM] OFF
GO
INSERT [dbo].[TINHTRANGDH] ([TinhTrang], [TenTinhTrang]) VALUES (-1, N'Chưa Xác Nhận')
INSERT [dbo].[TINHTRANGDH] ([TinhTrang], [TenTinhTrang]) VALUES (0, N'Xữ lý')
INSERT [dbo].[TINHTRANGDH] ([TinhTrang], [TenTinhTrang]) VALUES (1, N'Đã Đóng Gói')
INSERT [dbo].[TINHTRANGDH] ([TinhTrang], [TenTinhTrang]) VALUES (2, N'Đang Giao')
INSERT [dbo].[TINHTRANGDH] ([TinhTrang], [TenTinhTrang]) VALUES (3, N'Đang Thàng Công')
GO
ALTER TABLE [dbo].[CT_DonDatHangNCC]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonDatHangNCC_DDHNCC] FOREIGN KEY([MaDonDatHangNCC])
REFERENCES [dbo].[DonDatHangNCC] ([MaDonDatHangNCC])
GO
ALTER TABLE [dbo].[CT_DonDatHangNCC] CHECK CONSTRAINT [FK_CT_DonDatHangNCC_DDHNCC]
GO
ALTER TABLE [dbo].[CT_DonDatHangNCC]  WITH CHECK ADD  CONSTRAINT [FK_CT_DonDatHangNCC_TTSP] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[THONGTINSANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_DonDatHangNCC] CHECK CONSTRAINT [FK_CT_DonDatHangNCC_TTSP]
GO
ALTER TABLE [dbo].[CT_PHIEUDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUDH_PDT] FOREIGN KEY([MaPhieuDH])
REFERENCES [dbo].[PHIEUDATHANG] ([MaPhieuDH])
GO
ALTER TABLE [dbo].[CT_PHIEUDATHANG] CHECK CONSTRAINT [FK_CT_PHIEUDH_PDT]
GO
ALTER TABLE [dbo].[CT_PHIEUDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUDH_TTSP] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[THONGTINSANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_PHIEUDATHANG] CHECK CONSTRAINT [FK_CT_PHIEUDH_TTSP]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAPHANG_PNH] FOREIGN KEY([MaPhieuNhapHang])
REFERENCES [dbo].[PHIEUNHAPHANG] ([MaPhieuNhapHang])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPHANG] CHECK CONSTRAINT [FK_CT_PHIEUNHAPHANG_PNH]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAPHANG_TTSP] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[THONGTINSANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAPHANG] CHECK CONSTRAINT [FK_CT_PHIEUNHAPHANG_TTSP]
GO
ALTER TABLE [dbo].[DonDatHangNCC]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHangNCC_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[DonDatHangNCC] CHECK CONSTRAINT [FK_DonDatHangNCC_NHACUNGCAP]
GO
ALTER TABLE [dbo].[DonDatHangNCC]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHangNCC_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DonDatHangNCC] CHECK CONSTRAINT [FK_DonDatHangNCC_NHANVIEN]
GO
ALTER TABLE [dbo].[LIENHE]  WITH CHECK ADD  CONSTRAINT [FK_LIENHE_PHIEUDATHANG] FOREIGN KEY([MaPhieuDH])
REFERENCES [dbo].[PHIEUDATHANG] ([MaPhieuDH])
GO
ALTER TABLE [dbo].[LIENHE] CHECK CONSTRAINT [FK_LIENHE_PHIEUDATHANG]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_PHANQUYEN] FOREIGN KEY([ID_PhanQuyen])
REFERENCES [dbo].[PHANQUYEN] ([ID_PhanQuyen])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_PHANQUYEN]
GO
ALTER TABLE [dbo].[PHIEUDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATHANG_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[PHIEUDATHANG] CHECK CONSTRAINT [FK_PHIEUDATHANG_KH]
GO
ALTER TABLE [dbo].[PHIEUDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATHANG_TINHTRANGDH] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TINHTRANGDH] ([TinhTrang])
GO
ALTER TABLE [dbo].[PHIEUDATHANG] CHECK CONSTRAINT [FK_PHIEUDATHANG_TINHTRANGDH]
GO
ALTER TABLE [dbo].[PHIEUGIAOHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUGIAOHANG_PDH] FOREIGN KEY([MaPhieuDH])
REFERENCES [dbo].[PHIEUDATHANG] ([MaPhieuDH])
GO
ALTER TABLE [dbo].[PHIEUGIAOHANG] CHECK CONSTRAINT [FK_PHIEUGIAOHANG_PDH]
GO
ALTER TABLE [dbo].[PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPHANG_DonDatHangNCC] FOREIGN KEY([MaPhieuNhapHang])
REFERENCES [dbo].[DonDatHangNCC] ([MaDonDatHangNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAPHANG] CHECK CONSTRAINT [FK_PHIEUNHAPHANG_DonDatHangNCC]
GO
ALTER TABLE [dbo].[PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPHANG_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAPHANG] CHECK CONSTRAINT [FK_PHIEUNHAPHANG_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPHANG_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAPHANG] CHECK CONSTRAINT [FK_PHIEUNHAPHANG_NHANVIEN]
GO
ALTER TABLE [dbo].[SPSALE]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_SPSL] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[THONGTINSANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[SPSALE] CHECK CONSTRAINT [FK_SANPHAM_SPSL]
GO
ALTER TABLE [dbo].[SPSALE]  WITH CHECK ADD  CONSTRAINT [FK_SL_SPSL] FOREIGN KEY([MASL])
REFERENCES [dbo].[SALE] ([MASL])
GO
ALTER TABLE [dbo].[SPSALE] CHECK CONSTRAINT [FK_SL_SPSL]
GO
ALTER TABLE [dbo].[THONGTINSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_THONGTINSACH_LOAISANPHAM] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoai])
GO
ALTER TABLE [dbo].[THONGTINSANPHAM] CHECK CONSTRAINT [FK_THONGTINSACH_LOAISANPHAM]
GO
ALTER TABLE [dbo].[THONGTINSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_THONGTINSACH_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[THONGTINSANPHAM] CHECK CONSTRAINT [FK_THONGTINSACH_NHACUNGCAP]
GO
/****** Object:  StoredProcedure [dbo].[Update_SL_Ton]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Update_SL_Ton]
	@MaCTPhieuNhapHang int,
    @MaSP int,
	@MaPhieuNhapHang int
AS
    update THONGTINSANPHAM
	set SLTon = (select CT_PHIEUNHAPHANG.Sluong from CT_PHIEUNHAPHANG where CT_PHIEUNHAPHANG.MaCTPhieuNhapHang= @MaCTPhieuNhapHang and CT_PHIEUNHAPHANG.MaSanPham=@MaSP and CT_PHIEUNHAPHANG.MaPhieuNhapHang=@MaPhieuNhapHang) + SLTon
	where MaSanPham=@MaSP
GO
/****** Object:  StoredProcedure [dbo].[Update_TongSL_DatHangNCC]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Update_TongSL_DatHangNCC]
		@MaDonDHNCC nchar(10)
AS
update DonDatHangNCC
	set TongSL=(select COUNT(MaDonDatHangNCC) 
				from CT_DonDatHangNCC 
				where CT_DonDatHangNCC.MaDonDatHangNCC=@MaDonDHNCC
				group by MaDonDatHangNCC )
	where DonDatHangNCC.MaDonDatHangNCC=@MaDonDHNCC
GO
/****** Object:  StoredProcedure [dbo].[Update_TongSL_PN]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[Update_TongSL_PN]
		@MaPhieuNH nchar(10)
AS
	update PHIEUNHAPHANG
	set TongSL=(select COUNT(MaPhieuNhapHang) 
				from CT_PHIEUNHAPHANG 
				where CT_PHIEUNHAPHANG.MaPhieuNhapHang=@MaPhieuNH
				group by MaPhieuNhapHang )
	where PHIEUNHAPHANG.MaPhieuNhapHang=@MaPhieuNH
GO
/****** Object:  StoredProcedure [dbo].[Update_TongTien_DatHangNCC]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Update_TongTien_DatHangNCC]
		@MaDonDHNCC nchar(10)
AS
update DonDatHangNCC
	set TongTien=(select SUM(CT_DonDatHangNCC.TongTien)
				from CT_DonDatHangNCC 
				where CT_DonDatHangNCC.MaDonDatHangNCC=@MaDonDHNCC)
	where DonDatHangNCC.MaDonDatHangNCC=@MaDonDHNCC
GO
/****** Object:  StoredProcedure [dbo].[Update_TongTien_PN]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Update_TongTien_PN]
		@MaPhieuNH nchar(10)
AS
	update PHIEUNHAPHANG
	set TongTien_NH=(select SUM(CT_PHIEUNHAPHANG.TongTien)
				from CT_PHIEUNHAPHANG 
				where CT_PHIEUNHAPHANG.MaPhieuNhapHang=@MaPhieuNH)
	where PHIEUNHAPHANG.MaPhieuNhapHang=@MaPhieuNH
GO
/****** Object:  StoredProcedure [dbo].[Update_TrangThai_DatHangNCC]    Script Date: 2/10/2023 12:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Update_TrangThai_DatHangNCC]
		@MaDonDHNCC int
AS
	update DonDatHangNCC
	set TrangThai = 0
	where MaDonDatHangNCC = @MaDonDHNCC
GO

create table DOITRA
(
	MaDT int IDENTITY(1,1) NOT NULL,
	MaLH int NOT NULL,
	HoTen nvarchar(50) NULL,
	Email varchar(100) NULL,
	DienThoai varchar(50) NULL,
	NoiDung nvarchar(500) NULL,
	NgayCapNhat smalldatetime NULL,
	CONSTRAINT PK_DOITRA PRIMARY KEY CLUSTERED  (MaDT ASC ),
	CONSTRAINT FK_LIENHE_DOITRA FOREIGN KEY (MaLH) REFERENCES LIENHE(MaLH)
)
