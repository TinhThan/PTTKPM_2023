USE [PTTKPM]
GO
/****** Object:  Table [dbo].[BangDiemMon]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiemMon](
	[maBangDiemMon] [int] IDENTITY(1,1) NOT NULL,
	[maMonHoc] [int] NULL,
	[maHocSinh] [int] NULL,
	[maDiem] [int] NULL,
	[maHocKi] [int] NULL,
 CONSTRAINT [PK_BangDiemMon] PRIMARY KEY CLUSTERED 
(
	[maBangDiemMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BanGiamHieu]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanGiamHieu](
	[maBanGiamHieu] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[maTaiKhoan] [int] NULL,
 CONSTRAINT [PK_BanGiamHieu] PRIMARY KEY CLUSTERED 
(
	[maBanGiamHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuMoi]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuMoi](
	[maChiTietPhieuMoi] [int] IDENTITY(1,1) NOT NULL,
	[maPhieuMoi] [int] NULL,
	[maHocSinh] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuMoi] PRIMARY KEY CLUSTERED 
(
	[maChiTietPhieuMoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[maDiem] [int] IDENTITY(1,1) NOT NULL,
	[diem15Phut] [float] NULL,
	[diem1Tiet] [float] NULL,
	[diemHocKi] [float] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[maDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[maGiaoVien] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[maTaiKhoan] [int] NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[maGiaoVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVu]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVu](
	[maGiaoVu] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[maTaiKhoan] [int] NULL,
	[maKhoi] [int] NULL,
 CONSTRAINT [PK_GiaoVu] PRIMARY KEY CLUSTERED 
(
	[maGiaoVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocKi]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKi](
	[maHocKi] [int] IDENTITY(1,1) NOT NULL,
	[tenHocKi] [nvarchar](50) NULL,
 CONSTRAINT [PK_HocKi] PRIMARY KEY CLUSTERED 
(
	[maHocKi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[maHocSinh] [int] IDENTITY(1,1) NOT NULL,
	[maLop] [int] NULL,
	[maTaiKhoan] [int] NULL,
	[hoTen] [nvarchar](50) NULL,
	[ngaySinh] [datetime] NULL,
	[gioiTinh] [bit] NULL,
	[email] [varchar](50) NULL,
	[diaChi] [nvarchar](256) NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[maHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoi]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoi](
	[maKhoi] [int] IDENTITY(1,1) NOT NULL,
	[tenKhoi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoi] PRIMARY KEY CLUSTERED 
(
	[maKhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [int] IDENTITY(1,1) NOT NULL,
	[tenLop] [nvarchar](50) NULL,
	[siSo] [int] NULL,
	[maKhoi] [int] NULL,
	[maGV_ChuNhiem] [int] NULL,
	[thoiKhoaBieu] [xml] NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[tenMonHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[maMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMoi]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMoi](
	[maPhieuMoi] [int] IDENTITY(1,1) NOT NULL,
	[tenPhieuMoi] [nvarchar](100) NULL,
	[noiDungPhieuMoi] [nvarchar](500) NULL,
 CONSTRAINT [PK_PhieuMoi] PRIMARY KEY CLUSTERED 
(
	[maPhieuMoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinh](
	[maQuyDinh] [int] IDENTITY(1,1) NOT NULL,
	[tenQuyDinh] [nvarchar](256) NULL,
	[noiDungQuyDinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_QuyDinh] PRIMARY KEY CLUSTERED 
(
	[maQuyDinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanDangNhap]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanDangNhap](
	[maTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[tenTaiKhoan] [varchar](50) NULL,
	[matKhau] [varchar](20) NULL,
	[loaiTaiKhoan] [int] NULL,
 CONSTRAINT [PK_TaiKhoanDangNhap] PRIMARY KEY CLUSTERED 
(
	[maTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[maThongBao] [int] IDENTITY(1,1) NOT NULL,
	[tenThongBao] [nvarchar](max) NULL,
	[noiDungThongBao] [nvarchar](max) NULL,
	[ngayThongBao] [datetime] NULL,
 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED 
(
	[maThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BangDiemMon] ON 

INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (1, 1, 20, 41, 1)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (2, 1, 22, 42, 1)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (3, 1, 24, 43, 1)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (4, 1, 26, 44, 1)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (5, 3, 20, 45, 1)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (6, 3, 22, 46, 1)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (7, 3, 24, 47, 1)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (8, 3, 26, 48, 1)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (9, 3, 20, 49, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (10, 3, 22, 50, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (11, 3, 24, 51, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (12, 3, 26, 52, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (13, 3, 23, 53, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (14, 3, 27, 54, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (15, 3, 28, 55, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (16, 3, 29, 56, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (17, 3, 30, 57, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (18, 3, 31, 58, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (19, 3, 32, 59, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (20, 3, 33, 60, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (21, 3, 34, 61, 2)
INSERT [dbo].[BangDiemMon] ([maBangDiemMon], [maMonHoc], [maHocSinh], [maDiem], [maHocKi]) VALUES (22, 3, 35, 62, 2)
SET IDENTITY_INSERT [dbo].[BangDiemMon] OFF
GO
SET IDENTITY_INSERT [dbo].[BanGiamHieu] ON 

INSERT [dbo].[BanGiamHieu] ([maBanGiamHieu], [hoTen], [maTaiKhoan]) VALUES (1, N'Đức Tính', 33)
SET IDENTITY_INSERT [dbo].[BanGiamHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (1, 8, 8, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (2, 7, 7, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (3, 6, 6, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (4, 5, 5, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (5, 8, 7, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (6, 6, 9, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (7, 6, 8, 8)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (8, 6, 10, 10)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (9, 7, 7, 10)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (10, 8, 8, 8)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (11, 9, 9, 10)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (12, 8, 8, 8)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (13, 9, 9, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (14, 10, 9, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (15, 10, 9, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (16, 9, 9, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (17, 8, 8, 8)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (18, 7, 7, 7)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (19, 7, 7, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (20, 7, 8, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (21, 8, 8, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (22, 7, 7, 10)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (23, 8, 9, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (24, 6, 7, 8)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (25, 7, 8, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (26, 8, 8, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (27, 6, 6, 10)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (28, 9, 9, 9)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (29, 6, 6, 10)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (30, 10, 10, 10)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (31, 5, 5, 10)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (32, 4, 4, 4)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (33, 3, 2, 2)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (34, 1, 1, 5)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (35, 2, 2, 6)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (36, 7, 9, 8)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (37, 2, 3, 4)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (38, 5, 3, 2)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (39, 1, 2, 3)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (40, 4, 5, 6)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (41, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (42, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (43, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (44, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (45, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (46, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (47, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (48, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (49, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (50, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (51, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (52, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (53, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (54, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (55, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (56, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (57, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (58, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (59, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (60, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (61, 0, 0, 0)
INSERT [dbo].[Diem] ([maDiem], [diem15Phut], [diem1Tiet], [diemHocKi]) VALUES (62, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaoVien] ON 

INSERT [dbo].[GiaoVien] ([maGiaoVien], [hoTen], [maTaiKhoan]) VALUES (1, N'Thân Văn Đức Tính', 4)
INSERT [dbo].[GiaoVien] ([maGiaoVien], [hoTen], [maTaiKhoan]) VALUES (2, N'Nguyễn Tất P', 5)
INSERT [dbo].[GiaoVien] ([maGiaoVien], [hoTen], [maTaiKhoan]) VALUES (3, N'Nguyễn Vĩnh P', 6)
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaoVu] ON 

INSERT [dbo].[GiaoVu] ([maGiaoVu], [hoTen], [maTaiKhoan], [maKhoi]) VALUES (1, N'Thân Văn Đức Tính', 1, 1)
INSERT [dbo].[GiaoVu] ([maGiaoVu], [hoTen], [maTaiKhoan], [maKhoi]) VALUES (2, N'Nguyễn Thị T', 2, 2)
INSERT [dbo].[GiaoVu] ([maGiaoVu], [hoTen], [maTaiKhoan], [maKhoi]) VALUES (3, N'Nguyễn Trung K', 3, 3)
SET IDENTITY_INSERT [dbo].[GiaoVu] OFF
GO
SET IDENTITY_INSERT [dbo].[HocKi] ON 

INSERT [dbo].[HocKi] ([maHocKi], [tenHocKi]) VALUES (1, N'Học kì 1 - 2023/2024')
INSERT [dbo].[HocKi] ([maHocKi], [tenHocKi]) VALUES (2, N'Học kì 2 - 2023/2024')
INSERT [dbo].[HocKi] ([maHocKi], [tenHocKi]) VALUES (3, N'Học kì 1 - 2024/2025')
INSERT [dbo].[HocKi] ([maHocKi], [tenHocKi]) VALUES (4, N'Học kì 2 - 2024/2025')
SET IDENTITY_INSERT [dbo].[HocKi] OFF
GO
SET IDENTITY_INSERT [dbo].[HocSinh] ON 

INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (20, 1, 15, N'Trần Văn D', CAST(N'2007-01-05T00:00:00.000' AS DateTime), 0, N'tranvand', N'10 nguyễn du')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (22, 1, 21, N'Đặng Văn Q', CAST(N'2007-01-03T00:00:00.000' AS DateTime), 1, N'dangvanq', N'Thủy Biều Huế - Thừa Thiên Huế')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (23, 2, 22, N'Lê Thị Q', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 1, N'vanquy', N'20 trịnh công sơn')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (24, 1, 23, N'Hồ Xuân C', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 1, N'hoxuanc', N'200 Bùi Thị Xuân')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (26, 1, 25, N'Văn Ngọc', CAST(N'2007-01-18T00:00:00.000' AS DateTime), 1, N'vanngoc', N'45 Lũy Bán Bích')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (27, 2, 26, N'Hoàng Thị Tường V', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 0, N'hoangthituongv', N'Thủy Biều Huế')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (28, 2, 27, N'Đặng Văn T', CAST(N'2007-01-02T00:00:00.000' AS DateTime), 1, N'dangvant', N'Lương Quán Thủy Biều Huế')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (29, 2, 28, N'Võ Thanh Q', CAST(N'2007-01-10T00:00:00.000' AS DateTime), 1, N'vothanhq', N'Tiền Giang')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (30, 2, 29, N'Nguyễn Văn Q', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 1, N'nguyenvanq', N'Bình Định')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (31, 2, 30, N'Dương Bảo Q', CAST(N'2007-01-10T00:00:00.000' AS DateTime), 1, N'duongbaoq', N'Vĩnh Long')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (32, 2, 31, N'Ngô Đình T', CAST(N'2007-01-17T00:00:00.000' AS DateTime), 1, N'dinht', N'Hà Tĩnh')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (33, 2, 32, N'Ngô Đình V', CAST(N'2007-01-17T00:00:00.000' AS DateTime), 1, N'dinh v', N'Nguyễn Huệ Huế')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (34, 2, 33, N'Lê Võ Thành L', CAST(N'2007-01-12T00:00:00.000' AS DateTime), 1, N'thanhl', N'Trương Định Huế')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (35, 2, 34, N'Thân Văn Đức Tính', CAST(N'2007-02-08T00:00:00.000' AS DateTime), 1, N'caothuvol', N'Mộ Đức, Quảng Ngãi')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (36, NULL, 35, N'Nguyễn bá T', CAST(N'2007-02-08T00:00:00.000' AS DateTime), 1, N'nguyenbat', N'Đà Nẵng')
INSERT [dbo].[HocSinh] ([maHocSinh], [maLop], [maTaiKhoan], [hoTen], [ngaySinh], [gioiTinh], [email], [diaChi]) VALUES (37, NULL, 35, N'Nguyễn bá T', CAST(N'2007-02-08T00:00:00.000' AS DateTime), 0, N'nguyenbat', N'Đà Nẵng')
SET IDENTITY_INSERT [dbo].[HocSinh] OFF
GO
SET IDENTITY_INSERT [dbo].[Khoi] ON 

INSERT [dbo].[Khoi] ([maKhoi], [tenKhoi]) VALUES (1, N'Khối 10')
INSERT [dbo].[Khoi] ([maKhoi], [tenKhoi]) VALUES (2, N'Khối 11')
INSERT [dbo].[Khoi] ([maKhoi], [tenKhoi]) VALUES (3, N'Khối 12')
SET IDENTITY_INSERT [dbo].[Khoi] OFF
GO
SET IDENTITY_INSERT [dbo].[Lop] ON 

INSERT [dbo].[Lop] ([maLop], [tenLop], [siSo], [maKhoi], [maGV_ChuNhiem], [thoiKhoaBieu]) VALUES (1, N'10A1', 40, 1, 1, N'<ThoiKhoaBieu><Thu tenThu="2"><Mon tenMon="Toán" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Toán" tiet="2" tenBuoi="Sáng" /><Mon tenMon="Văn" tiet="3" tenBuoi="Sáng" /><Mon tenMon="Văn" tiet="4" tenBuoi="Sáng" /></Thu><Thu tenThu="3"><Mon tenMon="Hóa" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Hóa" tiet="2" tenBuoi="Sáng" /><Mon tenMon="Thể Dục" tiet="3" tenBuoi="Sáng" /><Mon tenMon="Anh" tiet="4" tenBuoi="Sáng" /></Thu><Thu tenThu="4"><Mon tenMon="Địa" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Toán" tiet="2" tenBuoi="Sáng" /><Mon tenMon="Địa" tiet="3" tenBuoi="Sáng" /></Thu><Thu tenThu="5"><Mon tenMon="Hóa" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Hóa" tiet="2" tenBuoi="Sáng" /><Mon tenMon="Địa" tiet="3" tenBuoi="Sáng" /><Mon tenMon="Sử" tiet="4" tenBuoi="Sáng" /><Mon tenMon="Sinh" tiet="5" tenBuoi="Sáng" /></Thu><Thu tenThu="7"><Mon tenMon="Sử" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Lý" tiet="2" tenBuoi="Sáng" /><Mon tenMon="Địa" tiet="3" tenBuoi="Sáng" /><Mon tenMon="Địa" tiet="4" tenBuoi="Sáng" /><Mon tenMon="Hóa" tiet="5" tenBuoi="Sáng" /></Thu></ThoiKhoaBieu>')
INSERT [dbo].[Lop] ([maLop], [tenLop], [siSo], [maKhoi], [maGV_ChuNhiem], [thoiKhoaBieu]) VALUES (2, N'10A2', 30, 1, 2, N'<ThoiKhoaBieu><Thu tenThu="2"><Mon tenMon="Toán" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Toán" tiet="2" tenBuoi="Sáng" /><Mon tenMon="Văn" tiet="3" tenBuoi="Sáng" /><Mon tenMon="Dịa" tiet="4" tenBuoi="Sáng" /></Thu><Thu tenThu="5"><Mon tenMon="Hóa" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Hóa" tiet="2" tenBuoi="Sáng" /><Mon tenMon="Địa" tiet="3" tenBuoi="Sáng" /><Mon tenMon="Sử" tiet="4" tenBuoi="Sáng" /></Thu><Thu tenThu="4"><Mon tenMon="Địa" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Toán" tiet="2" tenBuoi="Chiều" /><Mon tenMon="Địa" tiet="3" tenBuoi="Sáng" /><Mon tenMon="Văn" tiet="4" tenBuoi="Chiều" /></Thu><Thu tenThu="7"><Mon tenMon="Sử" tiet="1" tenBuoi="Sáng" /><Mon tenMon="Lý" tiet="2" tenBuoi="Chiều" /><Mon tenMon="Địa" tiet="3" tenBuoi="Sáng" /><Mon tenMon="Địa" tiet="4" tenBuoi="Chiều" /></Thu></ThoiKhoaBieu>')
SET IDENTITY_INSERT [dbo].[Lop] OFF
GO
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (1, N'Toán')
INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (2, N'Lý')
INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (3, N'Hóa')
INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (4, N'Sinh')
INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (5, N'Văn')
INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (6, N'Sử')
INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (7, N'Địa')
INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (8, N'Đạo Đức')
INSERT [dbo].[MonHoc] ([maMonHoc], [tenMonHoc]) VALUES (9, N'Thể Dục')
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
GO
SET IDENTITY_INSERT [dbo].[QuyDinh] ON 

INSERT [dbo].[QuyDinh] ([maQuyDinh], [tenQuyDinh], [noiDungQuyDinh]) VALUES (1, N'Số lượng tối đa trong một lớp', N'10')
INSERT [dbo].[QuyDinh] ([maQuyDinh], [tenQuyDinh], [noiDungQuyDinh]) VALUES (2, N'Điểm chuẩn đạt môn', N'5')
INSERT [dbo].[QuyDinh] ([maQuyDinh], [tenQuyDinh], [noiDungQuyDinh]) VALUES (3, N'Tuổi tối thiểu', N'15')
INSERT [dbo].[QuyDinh] ([maQuyDinh], [tenQuyDinh], [noiDungQuyDinh]) VALUES (4, N'Tuổi tối đa', N'40')
SET IDENTITY_INSERT [dbo].[QuyDinh] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoanDangNhap] ON 

INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (1, N'ductinh', N'ductinh', 1)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (2, N'thithanh', N'thithanh', 1)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (3, N'trungkhanh', N'trungkhanh', 1)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (4, N'ductinh99', N'ductinh99', 2)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (5, N'tatphuoc', N'tatphuoc', 2)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (6, N'vinhphuc', N'vinhphuc', 2)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (10, N'tran van ngoc', N'1222', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (15, N'trandoanh', N'trandoan', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (21, N'dangvanquang', N'dangvanquang', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (22, N'vanquy', N'vanquy', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (23, N'hoxuancuong', N'hoxuancuong', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (25, N'vanngoctoday', N'vanngoctoday', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (26, N'hoangthituongvan', N'hoangthituongvan', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (27, N'dangvantrung', N'dangvantrung', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (28, N'thanhquangit', N'thanhquangit', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (29, N'nguyenvanquoc', N'nguyenvanquoc', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (30, N'duongbaoquan', N'duongbaoquan', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (31, N'dinhthuong', N'dinhthuong', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (32, N'dinh vu', N'dinh vu', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (33, N'ductinh280499', N'ductinh280499', 4)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (34, N'ductinh0499', N'ductinh0499', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (35, N'nguyenbathanh', N'nguyenbathanh', 3)
INSERT [dbo].[TaiKhoanDangNhap] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [loaiTaiKhoan]) VALUES (36, N'nguyenbathanh', N'nguyenbathanh', 3)
SET IDENTITY_INSERT [dbo].[TaiKhoanDangNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([maThongBao], [tenThongBao], [noiDungThongBao], [ngayThongBao]) VALUES (1, N'Mai nghi hoc', N'Vì thời tiết', CAST(N'2022-12-23T01:29:34.000' AS DateTime))
INSERT [dbo].[ThongBao] ([maThongBao], [tenThongBao], [noiDungThongBao], [ngayThongBao]) VALUES (2, N'Họp phụ huynh', N'Mời các em học sinh có mặt lúc 10h đến tại trường để họp', CAST(N'2022-12-23T01:29:34.000' AS DateTime))
INSERT [dbo].[ThongBao] ([maThongBao], [tenThongBao], [noiDungThongBao], [ngayThongBao]) VALUES (3, N'Họp cán bộ đoàn', N'Vào ngày 15/12/2022 các cán bộ đoàn của mỗi lớp đén văn phòng đoàn để họp bàn về kế hoạch cắm trại', CAST(N'2022-12-23T01:29:34.000' AS DateTime))
INSERT [dbo].[ThongBao] ([maThongBao], [tenThongBao], [noiDungThongBao], [ngayThongBao]) VALUES (5, N'Đi học bù', N'Vào ngày 20/12/2022', CAST(N'2022-12-23T01:29:34.000' AS DateTime))
INSERT [dbo].[ThongBao] ([maThongBao], [tenThongBao], [noiDungThongBao], [ngayThongBao]) VALUES (6, N'Họp phụ huynh', N'Vào ngày 22/12/2022', CAST(N'2022-12-23T01:29:34.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
GO
ALTER TABLE [dbo].[BangDiemMon]  WITH CHECK ADD  CONSTRAINT [FK_BangDiemMon_Diem] FOREIGN KEY([maDiem])
REFERENCES [dbo].[Diem] ([maDiem])
GO
ALTER TABLE [dbo].[BangDiemMon] CHECK CONSTRAINT [FK_BangDiemMon_Diem]
GO
ALTER TABLE [dbo].[BangDiemMon]  WITH CHECK ADD  CONSTRAINT [FK_BangDiemMon_HocKi] FOREIGN KEY([maHocKi])
REFERENCES [dbo].[HocKi] ([maHocKi])
GO
ALTER TABLE [dbo].[BangDiemMon] CHECK CONSTRAINT [FK_BangDiemMon_HocKi]
GO
ALTER TABLE [dbo].[BangDiemMon]  WITH CHECK ADD  CONSTRAINT [FK_BangDiemMon_HocSinh] FOREIGN KEY([maHocSinh])
REFERENCES [dbo].[HocSinh] ([maHocSinh])
GO
ALTER TABLE [dbo].[BangDiemMon] CHECK CONSTRAINT [FK_BangDiemMon_HocSinh]
GO
ALTER TABLE [dbo].[BangDiemMon]  WITH CHECK ADD  CONSTRAINT [FK_BangDiemMon_MonHoc] FOREIGN KEY([maMonHoc])
REFERENCES [dbo].[MonHoc] ([maMonHoc])
GO
ALTER TABLE [dbo].[BangDiemMon] CHECK CONSTRAINT [FK_BangDiemMon_MonHoc]
GO
ALTER TABLE [dbo].[BanGiamHieu]  WITH CHECK ADD  CONSTRAINT [FK_BanGiamHieu_TaiKhoanDangNhap] FOREIGN KEY([maTaiKhoan])
REFERENCES [dbo].[TaiKhoanDangNhap] ([maTaiKhoan])
GO
ALTER TABLE [dbo].[BanGiamHieu] CHECK CONSTRAINT [FK_BanGiamHieu_TaiKhoanDangNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuMoi]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuMoi_HocSinh] FOREIGN KEY([maHocSinh])
REFERENCES [dbo].[HocSinh] ([maHocSinh])
GO
ALTER TABLE [dbo].[ChiTietPhieuMoi] CHECK CONSTRAINT [FK_ChiTietPhieuMoi_HocSinh]
GO
ALTER TABLE [dbo].[ChiTietPhieuMoi]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuMoi_PhieuMoi] FOREIGN KEY([maPhieuMoi])
REFERENCES [dbo].[PhieuMoi] ([maPhieuMoi])
GO
ALTER TABLE [dbo].[ChiTietPhieuMoi] CHECK CONSTRAINT [FK_ChiTietPhieuMoi_PhieuMoi]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_TaiKhoanDangNhap] FOREIGN KEY([maTaiKhoan])
REFERENCES [dbo].[TaiKhoanDangNhap] ([maTaiKhoan])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_TaiKhoanDangNhap]
GO
ALTER TABLE [dbo].[GiaoVu]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVu_Khoi] FOREIGN KEY([maKhoi])
REFERENCES [dbo].[Khoi] ([maKhoi])
GO
ALTER TABLE [dbo].[GiaoVu] CHECK CONSTRAINT [FK_GiaoVu_Khoi]
GO
ALTER TABLE [dbo].[GiaoVu]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVu_TaiKhoanDangNhap] FOREIGN KEY([maTaiKhoan])
REFERENCES [dbo].[TaiKhoanDangNhap] ([maTaiKhoan])
GO
ALTER TABLE [dbo].[GiaoVu] CHECK CONSTRAINT [FK_GiaoVu_TaiKhoanDangNhap]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_Lop]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_TaiKhoanDangNhap] FOREIGN KEY([maTaiKhoan])
REFERENCES [dbo].[TaiKhoanDangNhap] ([maTaiKhoan])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_TaiKhoanDangNhap]
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatThoiKhoaBieu_MaLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CapNhatThoiKhoaBieu_MaLop]
		@maLop int, @thoiKhoaBieu nvarchar(MAX)
		as
			begin
				update Lop set thoiKhoaBieu = @thoiKhoaBieu
				where maLop = @maLop
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_demSoLuongHocSinh_DaCoLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_demSoLuongHocSinh_DaCoLop]
		@maLop int
		as
			begin
				select COUNT(*)as soLuongHocSinh
				from Lop l, HocSinh hs
				where l.maLop = hs.maLop and l.maLop = @maLop
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_LayBangDiem1MonCuaLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LayBangDiem1MonCuaLop]
@maLop int,
@maMonHoc int,
@maHocKi int
AS
BEGIN
	SELECT new2.maDiem, new2.diem15Phut, new2.diem1Tiet, new2.diemHocKi
	FROM (SELECT *
	FROM HocSinh HS
	where HS.maLop = @maLop) new1 LEFT JOIN 
	(select D.maDiem, BDM.maHocSinh, D.diem15Phut, D.diem1Tiet, D.diemHocKi
	FROM BangDiemMon BDM, Diem D
	where BDM.maMonHoc = @maMonHoc And BDM.maHocKi = @maHocKi And D.maDiem = BDM.maDiem) new2 ON new1.maHocSinh = new2.maHocSinh
END
GO
/****** Object:  StoredProcedure [dbo].[sp_layDanhSachHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_layDanhSachHocSinh]
		as
		begin
			select *
			from HocSinh
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_layDanhSachHocSinh_ChuaCoLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_layDanhSachHocSinh_ChuaCoLop]
		as
			begin 
				select *
				from HocSinh
				where maLop is null
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_layDanhSachHocSinh_DaCoLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_layDanhSachHocSinh_DaCoLop]
		@maLop int
		as
			begin
				select hs.maHocSinh,hs.maLop,hs.maTaiKhoan,hs.hoTen,hs.ngaySinh,hs.gioiTinh,hs.email,hs.diaChi
				from Lop l, HocSinh hs
				where l.maLop = hs.maLop and l.maLop = @maLop
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachHocSinhCua1LopTheoMonHoc]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LayDanhSachHocSinhCua1LopTheoMonHoc]
@maLop int,
@maMonHoc int,
@maHocKi int
AS
BEGIN
	SELECT new1.maHocSinh, new1.hoTen, new1.maLop, new1.maTaiKhoan, new1.ngaySinh, new1.gioiTinh, new1.diaChi, new1.email
	FROM (SELECT *
	FROM HocSinh HS
	where HS.maLop = @maLop) new1 LEFT JOIN 
	(select D.maDiem, BDM.maHocSinh, D.diem15Phut, D.diem1Tiet, D.diemHocKi
	FROM BangDiemMon BDM, Diem D
	where BDM.maMonHoc = @maMonHoc And BDM.maHocKi = @maHocKi And D.maDiem = BDM.maDiem) new2 ON new1.maHocSinh = new2.maHocSinh
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachKhoi]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LayDanhSachKhoi]
as
begin
	select Khoi.maKhoi,Khoi.tenKhoi
	from Khoi
end
GO
/****** Object:  StoredProcedure [dbo].[sp_layDanhSachLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_layDanhSachLop]
		as
		begin
			select * 
			from Lop
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDiemHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LayDiemHocSinh]
@maHocSinh int,
@maHocKi int
AS
BEGIN
	SELECT NEW1.maDiem, NEW1.diem15Phut,  NEW1.diem1Tiet, NEW1.diemHocKi
FROM
(SELECT * FROM MonHoc) NEW left join
(SELECT D.maDiem, B.maHocSinh, D.diem15Phut, D.diem1Tiet, D.diemHocKi, B.maMonHoc
FROM BangDiemMon B, Diem D
Where maHocSinh = @maHocSinh And B.maDiem = D.maDiem And B.maHocKi = @maHocKi) 
NEW1 on NEW.maMonHoc = NEW1.maMonHoc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDongCuoiTrongBangDiem]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LayDongCuoiTrongBangDiem]

AS
BEGIN
	select * 
	from Diem D
	Where D.maDiem >= All(Select maDiem from Diem)	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_layDS_TaiKhoanDangNhap]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_layDS_TaiKhoanDangNhap]
as
begin
	select *
	from TaiKhoanDangNhap
end
GO
/****** Object:  StoredProcedure [dbo].[sp_layHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_layHocSinh]
		@maHocSinh int
		as
			begin 
				select * from HocSinh where maHocSinh = @maHocSinh
		    end
GO
/****** Object:  StoredProcedure [dbo].[sp_layMaTaiKhoan_HocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_layMaTaiKhoan_HocSinh]
		@maHocSinh int
		as
		begin
			select hs.maTaiKhoan
			from HocSinh hs
			where hs.maHocSinh = @maHocSinh
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_layMaTaiKhoan_TheoTenTK]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_layMaTaiKhoan_TheoTenTK]
		@tenTaiKhoan nvarchar(50)
		as
		begin
			select maTaiKhoan
			from TaiKhoanDangNhap
			where tenTaiKhoan like @tenTaiKhoan
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_laySoLuongHocSinhToiDa_TrongMotLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_laySoLuongHocSinhToiDa_TrongMotLop]
	@tenQuyDinh nvarchar(256)
	as
		begin 
			select *
			from QuyDinh
			where tenQuyDinh like @tenQuyDinh
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_layTatCaThongBao]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_layTatCaThongBao]
	as
		begin
			select *
			from ThongBao
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_layTenGiaoVien_Tu_MaLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_layTenGiaoVien_Tu_MaLop]
		@maLop int
		as
			begin
				select gv.hoTen,gv.maGiaoVien,gv.maTaiKhoan
				from GiaoVien gv,Lop l
				where gv.maGiaoVien = l.maGV_ChuNhiem and @maLop = l.maLop
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_layTenLop_Tu_MaLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_layTenLop_Tu_MaLop]
		@maLop int
		as
		begin
			select *
			from Lop
			where maLop = @maLop
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_layTenLop_TuHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_layTenLop_TuHocSinh]
		@maHocSinh int
		as
			begin 
				select l.maLop,l.tenLop
				from HocSinh hs, Lop l
				where hs.maLop = l.maLop and hs.maHocSinh = @maHocSinh
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_LayThongTinHocSinhTuTaiKhoan]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LayThongTinHocSinhTuTaiKhoan]
@maTK int
AS
BEGIN
	SELECT * 
	FROM HocSinh HS
	WHERE HS.maTaiKhoan = @maTK
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SoLuongHocSinhDat]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SoLuongHocSinhDat]
@maLop int,
@maMonHoc int,
@maHocKi int
AS
BEGIN
	SELECT count(*)
	FROM (SELECT *
	FROM HocSinh HS
	where HS.maLop = @maLop) new1 LEFT JOIN 
	(select D.maDiem, BDM.maHocSinh, D.diem15Phut, D.diem1Tiet, D.diemHocKi
	FROM BangDiemMon BDM, Diem D
	where BDM.maMonHoc = @maMonHoc And BDM.maHocKi = @maHocKi And D.maDiem = BDM.maDiem) new2 ON new1.maHocSinh = new2.maHocSinh
	Where new2.diemHocKi>=5
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SoLuongHocSinhDatHocKi]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SoLuongHocSinhDatHocKi]
@maLop int,
@maHocKi int
AS
BEGIN
SELECT count(*)
FROM(
	SELECT count(*) AS A
	FROM (SELECT *
	FROM HocSinh HS
	where HS.maLop = @maLop) new1 LEFT JOIN 
	(select D.maDiem, BDM.maHocSinh, D.diem15Phut, D.diem1Tiet, D.diemHocKi
	FROM BangDiemMon BDM, Diem D
	where BDM.maHocKi = @maHocKi And D.maDiem = BDM.maDiem) new2 ON new1.maHocSinh = new2.maHocSinh
	Where new2.diemHocKi>=5
	GROUP BY new1.maHocSinh
	HAVING count(*) = (SELECT count(*) From MonHoc)
) BN
END
GO
/****** Object:  StoredProcedure [dbo].[sp_suaHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_suaHocSinh]
		@maHocSinh int,@hoTen nvarchar(50),@ngaySinh datetime,@gioiTinh bit,@email varchar(50),@diaChi nvarchar(256)
		as
		begin
			update HocSinh set hoTen = @hoTen, ngaySinh = @ngaySinh, gioiTinh = @gioiTinh,email = @email,
			diaChi = @diaChi
			where maHocSinh = @maHocSinh
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_suaHocSinh_SuaLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_suaHocSinh_SuaLop]
		@maHocSinh int,@maLop int
		as
			begin
				update HocSinh set maLop = @maLop
				where maHocSinh = @maHocSinh
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_taoThongBao]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_taoThongBao]
	@tenThongBao nvarchar(MAX),@noiDungThongBao nvarchar(MAX),@ngayThongBao datetime
	as
		begin
			insert into ThongBao(tenThongBao,noiDungThongBao,ngayThongBao) values(@tenThongBao,@noiDungThongBao,@ngayThongBao)
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThayDoiQuyDinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThayDoiQuyDinh]
@maQuyDinh int,
@noiDungQuyDinh nvarchar(50)
AS
BEGIN
	UPDATE QuyDinh
	SET noiDungQuyDinh = @noiDungQuyDinh
	WHERE maQuyDinh = @maQuyDinh
END
GO
/****** Object:  StoredProcedure [dbo].[sp_them_TaiKhoanDangNhap]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_them_TaiKhoanDangNhap]
		@tenTaiKhoan nvarchar(50),@matKhau nvarchar(50),@loaiTaiKhoan int
		as
		begin 
			insert into TaiKhoanDangNhap(tenTaiKhoan,matKhau,loaiTaiKhoan) values (@tenTaiKhoan,@matKhau,@loaiTaiKhoan)
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemBangDiemMon]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemBangDiemMon]
@maDiem int,
@maHK int,
@maMH int,
@maHS int
AS
BEGIN
	INSERT INTO BangDiemMon(maMonHoc, maHocSinh, maHocKi, maDiem)
	VALUES (@maMH, @maHS, @maHK, @maDiem)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemDiem]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemDiem]
@diem15P float,
@diem1T	float,
@diemHK float
AS
BEGIN
	INSERT INTO Diem(diem15Phut, diem1Tiet, diemHocKi)
	VALUES (@diem15P, @diem1T, @diemHK)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemHocSinh_TiepNhan]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemHocSinh_TiepNhan]
@maTaiKhoan int,@hoTen nvarchar(50),@ngaySinh datetime,@gioiTinh bit,@email varchar(50)
as
begin 
	insert into HocSinh(maTaiKhoan,hoTen,ngaySinh,gioiTinh,email) values (@maTaiKhoan,@hoTen,@ngaySinh,@gioiTinh,@email)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_themHocSinh_VaoLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_themHocSinh_VaoLop]
		@maHocSinh int,@maLop int
		as
		begin
			update HocSinh set maLop = @maLop
			where maHocSinh = @maHocSinh
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemQuyDinhMoi]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemQuyDinhMoi]
@tenQuyDinh nvarchar(50),
@noiDungQuyDinh nvarchar(50)
AS
BEGIN
	INSERT INTO QuyDinh (tenQuyDinh, noiDungQuyDinh)
	VALUES (@tenQuyDinh, @noiDungQuyDinh)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTaiKhoanDangNhap]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemTaiKhoanDangNhap]
@tenTaiKhoan varchar(50),
@matKhau varchar(20)
as
begin
	insert into TaiKhoanDangNhap(tenTaiKhoan,matKhau) values (@tenTaiKhoan,@matKhau)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tiepNhanHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tiepNhanHocSinh]
		@hoTen nvarchar(50),@ngaySinh datetime,@gioiTinh bit,@email varchar(50),@diaChi nvarchar(256),@maTaiKhoan int
		as
		begin
			insert into HocSinh(hoTen,ngaySinh,gioiTinh,email,diaChi,maTaiKhoan) values
			(@hoTen,@ngaySinh,@gioiTinh,@email,@diaChi,@maTaiKhoan)
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_traCuu_Lop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_traCuu_Lop]
		@maLop int
		as
		begin
			if(@maLop>0)
				begin
					select * from Lop,HocSinh where Lop.maLop = @maLop and HocSinh.maLop = Lop.maLop
				end
			else
				begin
					select * from HocSinh
				end
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_traCuu_Lop_MaHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_traCuu_Lop_MaHocSinh]
		@maLop int,@maHocSinh nvarchar(256)
		as
		begin
			if(@maHocSinh<>0)
				begin
					if(@maLop<>0)
						begin
							select HocSinh.maHocSinh,HocSinh.maLop,HocSinh.maTaiKhoan,HocSinh.hoTen,HocSinh.ngaySinh,
							HocSinh.gioiTinh,HocSinh.email,HocSinh.diaChi 
							from Lop,HocSinh where Lop.maLop = HocSinh.maLop and 
							HocSinh.maLop = Lop.maLop and HocSinh.maHocSinh = @maHocSinh
						end
					else
						begin
							select * from HocSinh where @maHocSinh = maHocSinh
						end
				end
			else
				begin
					if(@maLop!=0)
						begin
							select HocSinh.maHocSinh,HocSinh.maLop,HocSinh.maTaiKhoan,HocSinh.hoTen,HocSinh.ngaySinh,
							HocSinh.gioiTinh,HocSinh.email,HocSinh.diaChi
							from Lop,HocSinh where Lop.maLop = @maLop and HocSinh.maLop = Lop.maLop
						end
					else
						begin
							select * from HocSinh
						end
				end
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraCuu_MaHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TraCuu_MaHocSinh]
	@maHocSinh int
	as
		begin 
			select *
			from HocSinh 
			where maHocSinh = @maHocSinh
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateMark]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateMark] 
@maDiem int,
@diem15Phut float,
@diem1Tiet float,
@diemHocKi float
AS
BEGIN
	UPDATE Diem
	SET diem15Phut = @diem15Phut, diem1Tiet = @diem1Tiet, diemHocKi = @diemHocKi
	WHERE maDiem = @maDiem
END
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_TaiKhoanDangNhap]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_xoa_TaiKhoanDangNhap]
		@maTaiKhoan int
		as
		begin
			delete TaiKhoanDangNhap where maTaiKhoan = @maTaiKhoan
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoaHocSinh]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoaHocSinh]
		@maHocSinh int
		as
		begin
			delete HocSinh where maHocSinh =@maHocSinh
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoaHocSinh_RaKhoiLop]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoaHocSinh_RaKhoiLop]
		@maHocSinh int
		as
		begin
			update HocSinh set maLop = NULL
			where maHocSinh =@maHocSinh
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoaThongBao_MaThongBao]    Script Date: 1/4/2024 9:53:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoaThongBao_MaThongBao]
	@maThongBao int 
	as
		begin
			delete ThongBao where maThongBao = @maThongBao
		end
GO
