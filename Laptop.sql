USE [LAPTOP]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[maacc] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[matkhau] [varchar](32) NOT NULL,
	[email] [nvarchar](254) NULL,
	[dienthoai] [varchar](13) NOT NULL,
	[admin] [bit] NULL,
	[sell] [bit] NULL,
 CONSTRAINT [PK_KhachHang_1] PRIMARY KEY CLUSTERED 
(
	[maacc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[madon] [int] NOT NULL,
	[malaptop] [int] NOT NULL,
	[soluong] [int] NULL,
	[dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[madon] ASC,
	[malaptop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[madanhgia] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[noidung] [ntext] NULL,
	[vote] [int] NULL,
	[ngaydanhgia] [datetime] NULL,
	[malaptop] [int] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[madanhgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[madon] [int] IDENTITY(1,1) NOT NULL,
	[thanhtoan] [bit] NULL,
	[giaohang] [bit] NULL,
	[ngaydat] [datetime] NULL,
	[ngaygiao] [datetime] NULL,
	[dienthoai] [varchar](13) NULL,
	[Diachigiao] [nvarchar](50) NULL,
	[NguoiGiao] [nvarchar](50) NULL,
	[Nguoinhan] [nvarchar](50) NULL,
	[maacc] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hang](
	[mahang] [int] IDENTITY(1,1) NOT NULL,
	[tenhang] [nvarchar](30) NOT NULL,
	[hinh] [varchar](70) NULL,
 CONSTRAINT [PK_HANG] PRIMARY KEY CLUSTERED 
(
	[mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Laptop]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Laptop](
	[malaptop] [int] IDENTITY(1,1) NOT NULL,
	[tenlaptop] [nvarchar](100) NOT NULL,
	[giaban] [decimal](18, 0) NULL,
	[mota] [nvarchar](max) NULL,
	[hinh] [varchar](255) NULL,
	[mahang] [int] NULL,
	[cpu] [nvarchar](100) NULL,
	[gpu] [nvarchar](100) NULL,
	[ram] [nvarchar](100) NULL,
	[hardware] [nvarchar](100) NULL,
	[manhinh] [nvarchar](100) NULL,
	[soluongton] [int] NULL,
	[pin] [nvarchar](100) NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_LAPTOP] PRIMARY KEY CLUSTERED 
(
	[malaptop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LienHe](
	[malienhe] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[email] [varchar](254) NULL,
	[dienthoai] [varchar](50) NULL,
	[website] [nvarchar](100) NULL,
	[noidung] [ntext] NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[malienhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhuCau]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhuCau](
	[manhucau] [int] IDENTITY(1,1) NOT NULL,
	[tennhucau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NHUCAU] PRIMARY KEY CLUSTERED 
(
	[manhucau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 4/20/2022 12:23:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuangCao](
	[maqc] [int] IDENTITY(1,1) NOT NULL,
	[tenqc] [nvarchar](255) NOT NULL,
	[tencongty] [nvarchar](200) NOT NULL,
	[hinhnen] [varchar](100) NULL,
	[link] [varchar](100) NULL,
	[ngaybatdau] [smalldatetime] NULL,
	[ngayhethan] [smalldatetime] NULL,
	[trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[maqc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([maacc], [hoten], [matkhau], [email], [dienthoai], [admin], [sell]) VALUES (1, N'Hoàng Trọng Dũng', N'123123', N'hungtrongdoang@gmail.com', N'0918062755', 0, NULL)
INSERT [dbo].[Account] ([maacc], [hoten], [matkhau], [email], [dienthoai], [admin], [sell]) VALUES (2, N'Nguyễn Trần Phát', N'123456', N'nguyentranphat@gmail.com', N'0917654310', 0, NULL)
INSERT [dbo].[Account] ([maacc], [hoten], [matkhau], [email], [dienthoai], [admin], [sell]) VALUES (3, N'Trần', N'hoa', N'dqphat@gmail.com', N'098713245', 0, NULL)
INSERT [dbo].[Account] ([maacc], [hoten], [matkhau], [email], [dienthoai], [admin], [sell]) VALUES (4, N'Nguyễn Đức Đạt', N'123', N'dat09@gmail.com', N'0365204529', 0, NULL)
INSERT [dbo].[Account] ([maacc], [hoten], [matkhau], [email], [dienthoai], [admin], [sell]) VALUES (5, N'Triệu Hoa', N'123', N'trieuhoa@yahoo.com', N'0365204529', 0, NULL)
INSERT [dbo].[Account] ([maacc], [hoten], [matkhau], [email], [dienthoai], [admin], [sell]) VALUES (6, N'Thầy giáo X', N'123x', N'thaygiaox@gmail.com', N'0365204529', 0, 1)
INSERT [dbo].[Account] ([maacc], [hoten], [matkhau], [email], [dienthoai], [admin], [sell]) VALUES (10, N'Khoa ruoi', N'123', N'khoaruoi69@gmail.com', N'0905388525', 1, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[ChiTietDonHang] ([madon], [malaptop], [soluong], [dongia]) VALUES (6, 3, 4, CAST(24490000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([madon], [malaptop], [soluong], [dongia]) VALUES (8, 3, 1, CAST(24490000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([madon], [malaptop], [soluong], [dongia]) VALUES (8, 7, 3, CAST(25990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([madon], [malaptop], [soluong], [dongia]) VALUES (8, 8, 1, CAST(13990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([madon], [malaptop], [soluong], [dongia]) VALUES (9, 7, 1, CAST(25990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonHang] ([madon], [malaptop], [soluong], [dongia]) VALUES (9, 8, 2, CAST(13990000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([madon], [thanhtoan], [giaohang], [ngaydat], [ngaygiao], [dienthoai], [Diachigiao], [NguoiGiao], [Nguoinhan], [maacc]) VALUES (1, 0, 0, CAST(N'2115-10-15 00:00:00.000' AS DateTime), CAST(N'2015-10-20 00:00:00.000' AS DateTime), N'1', NULL, NULL, NULL, NULL)
INSERT [dbo].[DonHang] ([madon], [thanhtoan], [giaohang], [ngaydat], [ngaygiao], [dienthoai], [Diachigiao], [NguoiGiao], [Nguoinhan], [maacc]) VALUES (2, 0, 0, CAST(N'2114-10-05 00:00:00.000' AS DateTime), CAST(N'2014-10-20 00:00:00.000' AS DateTime), N'3', NULL, NULL, NULL, NULL)
INSERT [dbo].[DonHang] ([madon], [thanhtoan], [giaohang], [ngaydat], [ngaygiao], [dienthoai], [Diachigiao], [NguoiGiao], [Nguoinhan], [maacc]) VALUES (6, 1, 0, CAST(N'2022-03-30 23:23:42.287' AS DateTime), CAST(N'2022-04-03 00:00:00.000' AS DateTime), N'1', NULL, NULL, NULL, NULL)
INSERT [dbo].[DonHang] ([madon], [thanhtoan], [giaohang], [ngaydat], [ngaygiao], [dienthoai], [Diachigiao], [NguoiGiao], [Nguoinhan], [maacc]) VALUES (7, 1, 0, CAST(N'2022-03-30 23:26:54.327' AS DateTime), CAST(N'2022-04-06 00:00:00.000' AS DateTime), N'1', NULL, NULL, NULL, NULL)
INSERT [dbo].[DonHang] ([madon], [thanhtoan], [giaohang], [ngaydat], [ngaygiao], [dienthoai], [Diachigiao], [NguoiGiao], [Nguoinhan], [maacc]) VALUES (8, 1, 0, CAST(N'2022-04-03 21:56:49.387' AS DateTime), CAST(N'2022-04-05 00:00:00.000' AS DateTime), N'1', NULL, NULL, NULL, NULL)
INSERT [dbo].[DonHang] ([madon], [thanhtoan], [giaohang], [ngaydat], [ngaygiao], [dienthoai], [Diachigiao], [NguoiGiao], [Nguoinhan], [maacc]) VALUES (9, 1, 0, CAST(N'2022-04-03 22:19:25.203' AS DateTime), CAST(N'2022-04-11 00:00:00.000' AS DateTime), N'6', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[Hang] ON 

INSERT [dbo].[Hang] ([mahang], [tenhang], [hinh]) VALUES (1, N'HP', N'hp.png')
INSERT [dbo].[Hang] ([mahang], [tenhang], [hinh]) VALUES (2, N'DELL', N'dell.png')
INSERT [dbo].[Hang] ([mahang], [tenhang], [hinh]) VALUES (3, N'LENOVO', N'lenovo.png')
INSERT [dbo].[Hang] ([mahang], [tenhang], [hinh]) VALUES (4, N'ACER', N'acer.png')
INSERT [dbo].[Hang] ([mahang], [tenhang], [hinh]) VALUES (5, N'MSI', N'msi.png')
INSERT [dbo].[Hang] ([mahang], [tenhang], [hinh]) VALUES (6, N'ASUS', N'asus.png')
SET IDENTITY_INSERT [dbo].[Hang] OFF
SET IDENTITY_INSERT [dbo].[Laptop] ON 

INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (2, N'Laptop HP Pavilion Gaming 15-dk1086TX', CAST(21950000 AS Decimal(18, 0)), N'HP Pavilion Gaming 15 2020 c?i thi?n kh? nang choi game m?nh m? v?i card d? h?a GeForce GTX 1650Ti 4GB và b? x? lý Intel® Core i7-10750H da nhân th? h? m?i nh?t, h? tr? b?i b? nh? RAM DDR4 2933MHz (nâng c?p du?c t?i da 32GB) có th? dáp ?ng các ?ng d?ng và trò choi chuyên sâu', N'3 Cell 43WHr', 1, N'Intel Core  i7-10750H', N'GTX 1650Ti', N'8GB', N'SSD 512GB', N'15.6 inch', 1, N'3 Cell 43WHr', 0)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (3, N'Laptop HP Pavilion x360 14', CAST(24490000 AS Decimal(18, 0)), N'Toát lên s? cao c?p nh? thi?t k? m?ng nh?, du?ng nét m?nh m? nhung không kém ph?n tinh t?. Ð? m?ng ?n tu?ng ch? 19 mm và 1.65 kg th?a s?c d?ch chuy?n, c?c kì phù h?p v?i nhu c?u di chuy?n thu?ng xuyên c?a gi?i tr? hi?n d?i.', N'laptop (3).jpg', 1, N'Intel Core i7-1165G7', N'Intel Iris Xe Graphics', N'16GB', N'SSD 256GB', N'14 inch', NULL, N'3 Cell 45WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (5, N'Laptop HP EliteBook X360 1040 G7 (230P8PA)', CAST(48990000 AS Decimal(18, 0)), N'K?t xu?t ho?c tr?c quan hóa theo gi?i gian th?c, c?ng tác t? xa và th?m chí choi game ? b?t c? dâu. S?c m?nh vu?t tr?i chua t?ng th?y trong m?t thi?t k? nh? g?n', N'laptop (5).jpg', 1, N'Intel Core i7-10510U', N'Intel UHD Graphics ', N'4GB', N'SSD 512GB + 32GB  Intel Optane', N'14 inch', NULL, N' 4 Cell 78.5WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (6, N'Laptop Dell Gaming G7 7500 (G7500B)', CAST(31990000 AS Decimal(18, 0)), N'Dell G7 7500 có nhi?u c?i ti?n v? thi?t k?, kích thu?c máy du?c thu g?n di, kích thu?c nh? hon nhung không kém ph?n h?m h? so v?i 2019. Ph?n b?n l? c?a G7 7500 gi? dây v?i thi?t k? m?i hon d? l? m?t ph?n không gian v?i màn hình trông nó có chút gì hi?n d?i, d?c dáo hon h?n.', N'laptop (6).jpg', 2, N'Intel Core i7-10750HX', N'GTX 1660Ti', N'32GB', N'SSD 512GB', N'15.6 inch', NULL, N'4 Cell 80 WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (7, N'Laptop Dell Inspiron 5502 (N5502A)', CAST(25990000 AS Decimal(18, 0)), N'Máy tính xách tay Dell Inspiron 5502 du?c trang b? vi x? lý Intel core i th? h? 11 m?i nh?t cung c?p hi?u nang tuy?t v?i và t?i uu, mang d?n kh? nang ph?n h?i nhanh và da nhi?m li?n m?ch', N'laptop (7).jpg', 2, N'Intel Core i5-1135G7', N'MX330 2GB', N'8GB', N'SSD 256GB', N'15.6 inch', NULL, N'4 Cell 83WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (8, N'Laptop Dell Latitude 3520 (70251603)', CAST(13990000 AS Decimal(18, 0)), N'Toát lên s? cao c?p nh? thi?t k? m?ng nh?, du?ng nét m?nh m? nhung không kém ph?n tinh t?. Ð? m?ng ?n tu?ng ch? 19 mm và 1.65 kg th?a s?c d?ch chuy?n, c?c kì phù h?p v?i nhu c?u di chuy?n thu?ng xuyên c?a gi?i tr? hi?n d?i.', N'laptop (8).jpg', 2, N'Intel Core i5-1135G7', N'MX330 2GB', N'8GB', N'SSD 256GB', N'15.6 inch', NULL, N'4 Cell 83WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (9, N'Laptop Dell Vostro 5402 (V5402A)', CAST(22990000 AS Decimal(18, 0)), N'Laptop Dell Vostro 5402 du?c trang b? b? vi x? lý Intel Core i th? h? 11 m?i nh?t v?i b?n nhân và tám lu?ng v?i hi?u su?t tuy?t v?i ', N'laptop (9).jpg', 2, N'Intel Core i5-1135G7 ', N'MX330 2GB', N'8GB', N' SSD 512GB', N'14 inch', NULL, N' 4 Cell 44.5WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (10, N'Laptop Dell Vostro 5502 (NT0X01)', CAST(21990000 AS Decimal(18, 0)), N'Dell Vostro 15 5502 s? h?u kích thu?c g?n, nh? và du?ng vi?n khung c?a màn hình du?c thi?t k? t? nh?a c?ng siêu dày, riêng ph?n b? m?t phía bên du?i ph? m?t l?p son gi? nhôm. Cung chính vì v?y mà tr?ng lu?ng c?a Laptop Dell Vostro 5502 NT0X01 ch? có 1.64Kg d? dàng mang di b?t c? dâu.', N'laptop (10).jpg', 2, N'Intel Core i5-1135G7 ', N'MX330 2GB', N'8GB', N'SSD 512GB', N'14 inch', NULL, N' 4 Cell 44.5WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (11, N'Laptop Lenovo Legion 7 16ACHG6 (82N60039VN)', CAST(79990000 AS Decimal(18, 0)), N'Laptop Lenovo Legion 7 có nhi?u c?i ti?n v? thi?t k?, kích thu?c máy du?c thu g?n di, kích thu?c nh? hon nhung không kém ph?n h?m h? so v?i 2019. Ph?n b?n l? c?a G7 7500 gi? dây v?i thi?t k? m?i hon d? l? m?t ph?n không gian v?i màn hình trông nó có chút gì hi?n d?i, d?c dáo hon h?n.', N'laptop (11).jpg', 3, N'AMD Ryzen 9 5900HX', N'GeForce RTX 3080', N'32GB', N'SSD 1TB', N'16 inch', NULL, N'4 Cell 80 WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (12, N'Laptop Lenovo Yoga Slim 9 14ITL5 (82D1004JVN)', CAST(49990000 AS Decimal(18, 0)), N'Máy tính xách tay Laptop Lenovo Yoga Slim 9 du?c trang b? vi x? lý Intel core i th? h? 11 m?i nh?t cung c?p hi?u nang tuy?t v?i và t?i uu, mang d?n kh? nang ph?n h?i nhanh và da nhi?m li?n m?ch', N'laptop (12).jpg', 3, N'Intel Core  i7-10750H', N'Intel Iris Xe Graphics', N'16GB', N' SSD 1TB', N'14 inch', NULL, N'4 Cell 63.5 WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (13, N'Laptop Lenovo Legion 5 15ITH6H (82JH002WVN)', CAST(4199000 AS Decimal(18, 0)), N'Laptop Lenovo Legion 5 toát lên s? cao c?p nh? thi?t k? m?ng nh?, du?ng nét m?nh m? nhung không kém ph?n tinh t?. Ð? m?ng ?n tu?ng ch? 19 mm và 1.65 kg th?a s?c d?ch chuy?n, c?c kì phù h?p v?i nhu c?u di chuy?n thu?ng xuyên c?a gi?i tr? hi?n d?i.', N'laptop (13).jpg', 3, N'AMD Ryzen 7 5800H', N'GeForce RTX 3060 6GB', N'16GB', N'SSD 512GB', N'15.6 inch', NULL, N'4 Cell 80 WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (14, N'Laptop Lenovo IdeaPad Gaming 3 15ACH6 (82K2008VVN)', CAST(25490000 AS Decimal(18, 0)), N'Laptop Dell Vostro 5402 du?c trang b? b? vi x? lý Intel Core i th? h? 11 m?i nh?t v?i b?n nhân và tám lu?ng v?i hi?u su?t tuy?t v?i ', N'laptop (14).jpg', 3, N'R7-5700U', N'VGA RTX 3050 4GB', N'8GB', N'SSD 512GB', N'15.6 inch', NULL, N'4 Cell 83WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (15, N'Laptop Lenovo IdeaPad 5 14ALC05 (82LM004DVN)', CAST(17690000 AS Decimal(18, 0)), N'Lenovo IdeaPad 5 s? h?u kích thu?c g?n, nh? và du?ng vi?n khung c?a màn hình du?c thi?t k? t? nh?a c?ng siêu dày, riêng ph?n b? m?t phía bên du?i ph? m?t l?p son gi? nhôm. Cung chính vì v?y mà tr?ng lu?ng c?a Laptop Dell Vostro 5502 NT0X01 ch? có 1.64Kg d? dàng mang di b?t c? dâu.', N'laptop (15).jpg', 1, N'i7-1165G7', N' AMD Radeon Graphics', N'8GB', N'SSD 512GB', N'14 inch', 1, N' 4 Cell 44.5WHr', 1)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (28, N'abc', CAST(1230000000 AS Decimal(18, 0)), N'ok tốt', N'https://worklap.vn/picture/file/tin-tuc-cong-nghe/laptop-hoc-anh.jpg', 4, N'123', N'23', N'123', N'34GB', N'123 inc', 2, N'3 cell 43 whr', 0)
INSERT [dbo].[Laptop] ([malaptop], [tenlaptop], [giaban], [mota], [hinh], [mahang], [cpu], [gpu], [ram], [hardware], [manhinh], [soluongton], [pin], [trangthai]) VALUES (29, N'Acer', CAST(1230000009 AS Decimal(18, 0)), N'hàng tốt', N'https://worklap.vn/picture/file/tin-tuc-cong-nghe/laptop-hoc-anh.jpg', 5, N'23 cop', N'1', N'8 Ram', N'34GB', N'123 inc', 4, N'3 cell 43 whr', 0)
SET IDENTITY_INSERT [dbo].[Laptop] OFF
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([malienhe], [hoten], [email], [dienthoai], [website], [noidung], [trangthai]) VALUES (1, N'Triệu Hoa', N'trieuhoa@yahoo.com', N'0365204529', N'thaygiaox.vn', N'Em chào anh! Em muốn liên hệ đặt mua Laptop MSI cho anh ẹc!', 1)
SET IDENTITY_INSERT [dbo].[LienHe] OFF
SET IDENTITY_INSERT [dbo].[NhuCau] ON 

INSERT [dbo].[NhuCau] ([manhucau], [tennhucau]) VALUES (1, N'LAPTOP GAMING')
INSERT [dbo].[NhuCau] ([manhucau], [tennhucau]) VALUES (2, N'LAPTOP Văn phòng')
INSERT [dbo].[NhuCau] ([manhucau], [tennhucau]) VALUES (3, N'LAPTOP Doanh nhân')
INSERT [dbo].[NhuCau] ([manhucau], [tennhucau]) VALUES (4, N'LAPTOP WORKSTATION')
SET IDENTITY_INSERT [dbo].[NhuCau] OFF
SET IDENTITY_INSERT [dbo].[QuangCao] ON 

INSERT [dbo].[QuangCao] ([maqc], [tenqc], [tencongty], [hinhnen], [link], [ngaybatdau], [ngayhethan], [trangthai]) VALUES (1, N'Laptop DELL', N'DELL', N'/Content/Images/QuangCao/Qc1.gif', N'https://dell.com/', CAST(N'2021-03-22 00:00:00' AS SmallDateTime), CAST(N'2021-03-22 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[QuangCao] ([maqc], [tenqc], [tencongty], [hinhnen], [link], [ngaybatdau], [ngayhethan], [trangthai]) VALUES (2, N'Quảng cáo điện thoại ở mục tức', N'Cellphone', N'', N'', CAST(N'2022-03-31 00:00:00' AS SmallDateTime), CAST(N'2022-04-10 00:00:00' AS SmallDateTime), 0)
INSERT [dbo].[QuangCao] ([maqc], [tenqc], [tencongty], [hinhnen], [link], [ngaybatdau], [ngayhethan], [trangthai]) VALUES (4, N'Quảng cáo Tiki', N'Tiki', N'quang-cao-tiki.png', N'https://tiki.vn/', CAST(N'2022-03-31 00:00:00' AS SmallDateTime), CAST(N'2022-04-30 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[QuangCao] ([maqc], [tenqc], [tencongty], [hinhnen], [link], [ngaybatdau], [ngayhethan], [trangthai]) VALUES (5, N'Quảng cáo Shoppe', N'Shoppe', N'quang-cao-shope.png', N'https://shopee.vn/', CAST(N'2022-03-31 00:00:00' AS SmallDateTime), CAST(N'2022-05-01 00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[QuangCao] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KHACHHAN__A9D1053492CBC5D1]    Script Date: 4/20/2022 12:23:06 PM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [UQ__KHACHHAN__A9D1053492CBC5D1] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([madon])
REFERENCES [dbo].[DonHang] ([madon])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Laptop] FOREIGN KEY([malaptop])
REFERENCES [dbo].[Laptop] ([malaptop])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Laptop]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Laptop] FOREIGN KEY([malaptop])
REFERENCES [dbo].[Laptop] ([malaptop])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_Laptop]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([maacc])
REFERENCES [dbo].[Account] ([maacc])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[Laptop]  WITH CHECK ADD  CONSTRAINT [FK_Laptop_Hang] FOREIGN KEY([mahang])
REFERENCES [dbo].[Hang] ([mahang])
GO
ALTER TABLE [dbo].[Laptop] CHECK CONSTRAINT [FK_Laptop_Hang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Dongi__34C8D9D1] CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [CK__CHITIETDO__Dongi__34C8D9D1]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Soluo__33D4B598] CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [CK__CHITIETDO__Soluo__33D4B598]
GO
ALTER TABLE [dbo].[Laptop]  WITH CHECK ADD  CONSTRAINT [CK__LAPTOP__Giaban__2C3393D0] CHECK  (([Giaban]>=(0)))
GO
ALTER TABLE [dbo].[Laptop] CHECK CONSTRAINT [CK__LAPTOP__Giaban__2C3393D0]
GO
