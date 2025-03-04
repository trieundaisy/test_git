create database QLBANHANG

USE [QLBANHANG]
GO
/****** Object:  Table [dbo].[ChiTietDatHang]    Script Date: 2/7/2025 7:36:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatHang](
	[MaDat] [char](10) NOT NULL,
	[MaHH] [char](5) NOT NULL,
	[SLDat] [smallint] NULL,
 CONSTRAINT [pk_CTDH] PRIMARY KEY CLUSTERED 
(
	[MaDat] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuGiao]    Script Date: 2/7/2025 7:36:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuGiao](
	[MaGiao] [char](10) NOT NULL,
	[MaHH] [char](5) NOT NULL,
	[SLGiao] [int] NULL,
	[DonGiaGiao] [decimal](18, 0) NULL,
 CONSTRAINT [pk_CTPG] PRIMARY KEY CLUSTERED 
(
	[MaGiao] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 2/7/2025 7:36:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDat] [char](10) NOT NULL,
	[NgayDat] [smalldatetime] NULL,
	[MaKH] [char](5) NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [pk_DDH] PRIMARY KEY CLUSTERED 
(
	[MaDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 2/7/2025 7:36:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [char](5) NOT NULL,
	[TenHH] [nvarchar](50) NULL,
	[DVT] [nvarchar](20) NULL,
	[SLCon] [smallint] NULL,
	[DonGiaHH] [int] NULL,
 CONSTRAINT [pk_HH] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 2/7/2025 7:36:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](5) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [pk_KH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuGia]    Script Date: 2/7/2025 7:36:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuGia](
	[MaHH] [char](5) NULL,
	[NgayHL] [smalldatetime] NULL,
	[DonGia] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuGiaoHang]    Script Date: 2/7/2025 7:36:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiaoHang](
	[MaDat] [char](10) NULL,
	[NgayGiao] [smalldatetime] NULL,
	[MaGiao] [char](5) NOT NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [pk_PGH] PRIMARY KEY CLUSTERED 
(
	[MaGiao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DonDatHang] ([MaDat], [NgayDat], [MaKH], [TinhTrang]) VALUES (N'DH01      ', NULL, N'KH001', NULL)
INSERT [dbo].[DonDatHang] ([MaDat], [NgayDat], [MaKH], [TinhTrang]) VALUES (N'DH02      ', NULL, N'KH003', NULL)
INSERT [dbo].[DonDatHang] ([MaDat], [NgayDat], [MaKH], [TinhTrang]) VALUES (N'DH03      ', NULL, N'KH003', NULL)
INSERT [dbo].[DonDatHang] ([MaDat], [NgayDat], [MaKH], [TinhTrang]) VALUES (N'DH04      ', NULL, N'KH002', NULL)
INSERT [dbo].[DonDatHang] ([MaDat], [NgayDat], [MaKH], [TinhTrang]) VALUES (N'DH05      ', NULL, N'KH005', NULL)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DVT], [SLCon], [DonGiaHH]) VALUES (N'BU   ', N'Bàn Ủi ', N'Cái', 4, 350000)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DVT], [SLCon], [DonGiaHH]) VALUES (N'CD   ', N'Nồi Cơm Điện', N'Cái', 3, 700000)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DVT], [SLCon], [DonGiaHH]) VALUES (N'MG   ', N'Máy giặt', N'Cái', 30, 700000)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DVT], [SLCon], [DonGiaHH]) VALUES (N'TL   ', N'Tủ lạnh', N'Cái', 50, 550000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DienThoai], [DiaChi]) VALUES (N'KH001', N'CTy TNHH 1', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DienThoai], [DiaChi]) VALUES (N'KH002', N'CTy TNHH 2', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DienThoai], [DiaChi]) VALUES (N'KH003', N'CTy TNHH 3', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DienThoai], [DiaChi]) VALUES (N'KH004', N'CTy TNHH 4', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DienThoai], [DiaChi]) VALUES (N'KH005', N'CTy TNHH 5', NULL, NULL)
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD  CONSTRAINT [fk_CTDH_MaDat] FOREIGN KEY([MaDat])
REFERENCES [dbo].[DonDatHang] ([MaDat])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDatHang] CHECK CONSTRAINT [fk_CTDH_MaDat]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD  CONSTRAINT [fk_CTDH_MaHH] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDatHang] CHECK CONSTRAINT [fk_CTDH_MaHH]
GO
ALTER TABLE [dbo].[ChiTietPhieuGiao]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[LichSuGia]  WITH CHECK ADD FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[PhieuGiaoHang]  WITH CHECK ADD FOREIGN KEY([MaDat])
REFERENCES [dbo].[DonDatHang] ([MaDat])
GO

--bai 1
create proc bai1
@maDon char(10),
@maHH char(10)
as 
begin
select SlDat from ChiTietDatHang
where  MADat=@maDon and MaHH=@MaHH
end 

exec slHangHoaDaBan 'DH01','BU'

--bai2
alter proc bai2
@mact char(10)
as
begin
if not exists (select 1 from ChiTietPhieuGiao pg where pg.MaGiao=@mact)
begin
print ('don hang khong ton tai')
return
end
select sum(SLGiao*DonGiaGiao)
from ChiTietPhieuGiao
where MaGiao=@mact
end

exec bai2 @mact='PG000'

--bai3
--makhach 

create proc bai3
@maKhach char(5)
as
begin
if not exists(select 1 from KhachHang kh where kh.MaKH=@maKhach)
begin
return 
end 

select ddh.MaDat,ddh.NgayDat,gh.MaGiao,gh.NgayGiao
from DonDatHang ddh inner join PhieuGiaoHang gh
on ddh.MaDat=gh.MaDat
where ddh.MaKH=@maKhach
end

create proc bai4
@ngay1 Date ,
@ngay2 Date
 as 
 begin
 if @ngay1>@ngay2
 return 
 else 
 select count (*) as 
 SoLuongPhieuGiao
 from PhieuGiaohang 
 where NgayGiao between @ngay1 and @ngay2
 end 

 bai4 '2025-11-16','2025-11-16'
