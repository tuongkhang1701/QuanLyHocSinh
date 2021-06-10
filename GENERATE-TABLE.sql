USE [QL_HOCSINH_THPT]
GO
/****** Object:  Table [dbo].[DANTOC]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANTOC](
	[MADANTOC] [varchar](10) NOT NULL,
	[TENDANTOC] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_DANTOC] PRIMARY KEY CLUSTERED 
(
	[MADANTOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIEMSO]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEMSO](
	[MAHOCSINH] [varchar](10) NOT NULL,
	[MAMONHOC] [varchar](10) NOT NULL,
	[MAHOCKY] [varchar](10) NOT NULL,
	[MALOP] [varchar](10) NOT NULL,
	[DIEMKTMIENG] [float] NULL,
	[DIEMKT15PH] [float] NULL,
	[DIEMKT45P] [float] NULL,
	[DIEMTHICUOIKY] [float] NULL,
	[DTB] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHOCSINH] ASC,
	[MAMONHOC] ASC,
	[MAHOCKY] ASC,
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGIAOVIEN] [varchar](10) NOT NULL,
	[TENGIAOVIEN] [nvarchar](30) NOT NULL,
	[MAGIOITINH] [int] NOT NULL,
	[DIACHI] [nvarchar](50) NOT NULL,
	[DIENTHOAI] [varchar](11) NOT NULL,
	[MAMONHOC] [varchar](10) NOT NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGIAOVIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIOITINH]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOITINH](
	[MAGIOITINH] [int] IDENTITY(1,1) NOT NULL,
	[TENGIOITINH] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAGIOITINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANHKIEM]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANHKIEM](
	[MAHANHKIEM] [varchar](10) NOT NULL,
	[TENHANHKIEM] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_HANHKIEM] PRIMARY KEY CLUSTERED 
(
	[MAHANHKIEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCKY]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCKY](
	[MAHOCKY] [varchar](10) NOT NULL,
	[TENHOCKY] [nvarchar](30) NOT NULL,
	[HESO] [int] NULL,
 CONSTRAINT [PK_HOCKY] PRIMARY KEY CLUSTERED 
(
	[MAHOCKY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCLUC]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCLUC](
	[MAHOCLUC] [varchar](10) NOT NULL,
	[TENHOCLUC] [nvarchar](30) NOT NULL,
	[DIEMCANDUOI] [float] NOT NULL,
	[DIEMCANTREN] [float] NOT NULL,
	[DIEMKHONGCHE] [float] NOT NULL,
 CONSTRAINT [PK_HOCLUC] PRIMARY KEY CLUSTERED 
(
	[MAHOCLUC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MAHOCSINH] [varchar](10) NOT NULL,
	[HOTENHOCSINH] [nvarchar](30) NOT NULL,
	[MAGIOITINH] [int] NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[NOISINH] [nvarchar](50) NOT NULL,
	[MADANTOC] [varchar](10) NOT NULL,
	[MATONGIAO] [varchar](10) NOT NULL,
 CONSTRAINT [PK_HOCSINH] PRIMARY KEY CLUSTERED 
(
	[MAHOCSINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KETQUA](
	[MAKETQUA] [varchar](10) NOT NULL,
	[TENKETQUA] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_KETQUA] PRIMARY KEY CLUSTERED 
(
	[MAKETQUA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KETQUAHOCKY]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KETQUAHOCKY](
	[MAHOCSINH] [varchar](10) NOT NULL,
	[MAHOCKY] [varchar](10) NOT NULL,
	[MALOP] [varchar](10) NOT NULL,
	[DTB] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHOCSINH] ASC,
	[MAHOCKY] ASC,
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOILOP]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOILOP](
	[MAKHOI] [varchar](10) NOT NULL,
	[TENKHOILOP] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_KHOILOP] PRIMARY KEY CLUSTERED 
(
	[MAKHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAINGUOIDUNG]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAINGUOIDUNG](
	[MALOAIND] [varchar](10) NOT NULL,
	[TENLOAIND] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LOAINGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[MALOAIND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [varchar](10) NOT NULL,
	[TENLOP] [nvarchar](30) NOT NULL,
	[MAKHOI] [varchar](10) NOT NULL,
	[MANAMHOC] [varchar](10) NOT NULL,
	[SISO] [int] NOT NULL,
	[MAGIAOVIENCHUNHIEM] [varchar](10) NOT NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMONHOC] [varchar](10) NOT NULL,
	[TENMONHOC] [nvarchar](30) NOT NULL,
	[SOTIET] [int] NOT NULL,
	[HESO] [int] NOT NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY CLUSTERED 
(
	[MAMONHOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NAMHOC]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NAMHOC](
	[MANAMHOC] [varchar](10) NOT NULL,
	[TENNAMHOC] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_NAMHOC] PRIMARY KEY CLUSTERED 
(
	[MANAMHOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MANGUOIDUNG] [varchar](10) NOT NULL,
	[MALOAIND] [varchar](10) NOT NULL,
	[TENDANGNHAP] [varchar](30) NOT NULL,
	[MATKHAU] [varchar](30) NOT NULL,
 CONSTRAINT [PK_NGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[MANGUOIDUNG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MANAMHOC] [varchar](10) NOT NULL,
	[MALOP] [varchar](10) NOT NULL,
	[MAMONHOC] [varchar](10) NOT NULL,
	[MAGIAOVIEN] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANLOP]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANLOP](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MANAMHOC] [varchar](10) NOT NULL,
	[MALOP] [varchar](10) NOT NULL,
	[MAHOCSINH] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONGIAO]    Script Date: 5/27/2021 10:48:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONGIAO](
	[MATONGIAO] [varchar](10) NOT NULL,
	[TENTONGIAO] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_TONGIAO] PRIMARY KEY CLUSTERED 
(
	[MATONGIAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT01', N'Kinh')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT02', N'Tày')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT03', N'Thái')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT04', N'Mường')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT05', N'Khơ me')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT06', N'HMông')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT07', N'Nùng')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT08', N'Hoa')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT09', N'Dao')
INSERT [dbo].[DANTOC] ([MADANTOC], [TENDANTOC]) VALUES (N'DT10', N'Gia Rai')
GO
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'1111111111', N'MH01', N'HK1', N'19201001', 2, 2, 2, 2, 2)
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'1111111111', N'MH04', N'HK1', N'19201001', 8, 9, 5, 6, 6.4285714285714288)
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'1111111111', N'MH07', N'HK2', N'19201101', 1, 1, 1, 1, 1)
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'454545', N'MH01', N'HK1', N'19201001', 8, 7, 9, 6, 7.2857142857142856)
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'HS02', N'MH01', N'HK1', N'19201001', 4, 4, 6, 6, 5.4285714285714288)
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'HS02', N'MH03', N'HK1', N'19201101', 5, 5, 5, 5, 5)
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'HS02', N'MH03', N'HK2', N'19201101', 8, 9, 5, 6, 6.2857142857142856)
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'HS04', N'MH01', N'HK1', N'19201001', 8, 9, 6, 5, 6.1428571428571432)
INSERT [dbo].[DIEMSO] ([MAHOCSINH], [MAMONHOC], [MAHOCKY], [MALOP], [DIEMKTMIENG], [DIEMKT15PH], [DIEMKT45P], [DIEMTHICUOIKY], [DTB]) VALUES (N'HS04', N'MH03', N'HK1', N'19201001', 5, 6, 5, 6, 5.4285714285714288)
GO
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [MAGIOITINH], [DIACHI], [DIENTHOAI], [MAMONHOC]) VALUES (N'70', N'a', 1, N'a', N'2', N'MH01')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [MAGIOITINH], [DIACHI], [DIENTHOAI], [MAMONHOC]) VALUES (N'GVTO01', N'Nguyễn Hồng Phú', 1, N'140 LTT', N'0123456789', N'MH01')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [MAGIOITINH], [DIACHI], [DIENTHOAI], [MAMONHOC]) VALUES (N'GVTO02', N'Nguyễn Văn Đại', 1, N'140 LTT', N'0123456789', N'MH01')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [MAGIOITINH], [DIACHI], [DIENTHOAI], [MAMONHOC]) VALUES (N'GVVL01', N'Nguyễn Duy Hà', 1, N'140 LTT', N'0123456789', N'MH02')
INSERT [dbo].[GIAOVIEN] ([MAGIAOVIEN], [TENGIAOVIEN], [MAGIOITINH], [DIACHI], [DIENTHOAI], [MAMONHOC]) VALUES (N'GVVL02', N'Nguyễn Thị Mỷ Diện', 2, N'140 LTT', N'0123456789', N'MH02')
GO
SET IDENTITY_INSERT [dbo].[GIOITINH] ON 

INSERT [dbo].[GIOITINH] ([MAGIOITINH], [TENGIOITINH]) VALUES (1, N'Nam')
INSERT [dbo].[GIOITINH] ([MAGIOITINH], [TENGIOITINH]) VALUES (2, N'Nữ')
SET IDENTITY_INSERT [dbo].[GIOITINH] OFF
GO
INSERT [dbo].[HANHKIEM] ([MAHANHKIEM], [TENHANHKIEM]) VALUES (N'HK01', N'Tốt')
INSERT [dbo].[HANHKIEM] ([MAHANHKIEM], [TENHANHKIEM]) VALUES (N'HK02', N'Khá')
INSERT [dbo].[HANHKIEM] ([MAHANHKIEM], [TENHANHKIEM]) VALUES (N'HK03', N'TB')
INSERT [dbo].[HANHKIEM] ([MAHANHKIEM], [TENHANHKIEM]) VALUES (N'HK04', N'Yếu')
GO
INSERT [dbo].[HOCKY] ([MAHOCKY], [TENHOCKY], [HESO]) VALUES (N'HK1', N'Học kỳ 1', 1)
INSERT [dbo].[HOCKY] ([MAHOCKY], [TENHOCKY], [HESO]) VALUES (N'HK2', N'Học kỳ 2', 2)
GO
INSERT [dbo].[HOCLUC] ([MAHOCLUC], [TENHOCLUC], [DIEMCANDUOI], [DIEMCANTREN], [DIEMKHONGCHE]) VALUES (N'HL01', N'Giỏi', 8, 10, 6.5)
INSERT [dbo].[HOCLUC] ([MAHOCLUC], [TENHOCLUC], [DIEMCANDUOI], [DIEMCANTREN], [DIEMKHONGCHE]) VALUES (N'HL02', N'Khá', 6.5, 7.9, 5)
INSERT [dbo].[HOCLUC] ([MAHOCLUC], [TENHOCLUC], [DIEMCANDUOI], [DIEMCANTREN], [DIEMKHONGCHE]) VALUES (N'HL03', N'TB', 5, 6.4, 3.5)
INSERT [dbo].[HOCLUC] ([MAHOCLUC], [TENHOCLUC], [DIEMCANDUOI], [DIEMCANTREN], [DIEMKHONGCHE]) VALUES (N'HL04', N'Yếu', 3.5, 4.9, 2)
INSERT [dbo].[HOCLUC] ([MAHOCLUC], [TENHOCLUC], [DIEMCANDUOI], [DIEMCANTREN], [DIEMKHONGCHE]) VALUES (N'HL05', N'Kém', 0, 3.4, 0)
GO
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'1111111111', N'đâsd', 1, CAST(N'2021-05-27' AS Date), N'dấd', N'DT01', N'TG03')
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'454545', N'dávn', 1, CAST(N'2021-05-21' AS Date), N'dágjvd', N'DT04', N'TG03')
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'56', N'abc', 1, CAST(N'2021-05-21' AS Date), N'abc', N'DT04', N'TG03')
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'70', N'abc', 1, CAST(N'2021-05-26' AS Date), N'abc', N'DT01', N'TG01')
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'7777777', N'aa', 1, CAST(N'2021-05-22' AS Date), N'a', N'DT03', N'TG02')
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'HS02', N'PHAN MINH VŨ', 1, CAST(N'1999-03-10' AS Date), N'BHH', N'DT01', N'TG01')
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'HS03', N'NGUYỄN PHẠM TUÂN ', 1, CAST(N'1998-03-10' AS Date), N'BHH', N'DT01', N'TG01')
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'HS04', N'HOÀNG BÁ HIỆP', 1, CAST(N'1997-03-10' AS Date), N'BHH', N'DT01', N'TG01')
INSERT [dbo].[HOCSINH] ([MAHOCSINH], [HOTENHOCSINH], [MAGIOITINH], [NGAYSINH], [NOISINH], [MADANTOC], [MATONGIAO]) VALUES (N'HS05', N'TRẦN HOÀNG KHƯƠNG', 1, CAST(N'2001-03-10' AS Date), N'BHH', N'DT01', N'TG01')
GO
INSERT [dbo].[KETQUA] ([MAKETQUA], [TENKETQUA]) VALUES (N'KQ01', N'Lên lớp')
INSERT [dbo].[KETQUA] ([MAKETQUA], [TENKETQUA]) VALUES (N'KQ02', N'Thi lại')
INSERT [dbo].[KETQUA] ([MAKETQUA], [TENKETQUA]) VALUES (N'KQ03', N'Rèn luyện hè')
INSERT [dbo].[KETQUA] ([MAKETQUA], [TENKETQUA]) VALUES (N'KQ04', N'Ở lại Lớp')
GO
INSERT [dbo].[KETQUAHOCKY] ([MAHOCSINH], [MAHOCKY], [MALOP], [DTB]) VALUES (N'HS02', N'HK2', N'19201001', NULL)
INSERT [dbo].[KETQUAHOCKY] ([MAHOCSINH], [MAHOCKY], [MALOP], [DTB]) VALUES (N'HS04', N'HK1', N'19201001', NULL)
GO
INSERT [dbo].[KHOILOP] ([MAKHOI], [TENKHOILOP]) VALUES (N'K10', N'Khối 10')
INSERT [dbo].[KHOILOP] ([MAKHOI], [TENKHOILOP]) VALUES (N'K11', N'Khối 11')
INSERT [dbo].[KHOILOP] ([MAKHOI], [TENKHOILOP]) VALUES (N'K12', N'Khối 12')
GO
INSERT [dbo].[LOAINGUOIDUNG] ([MALOAIND], [TENLOAIND]) VALUES (N'giaovien', N'Giáo viên')
INSERT [dbo].[LOAINGUOIDUNG] ([MALOAIND], [TENLOAIND]) VALUES (N'giaovu', N'Giáo vụ')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOI], [MANAMHOC], [SISO], [MAGIAOVIENCHUNHIEM]) VALUES (N'19201001', N'10A1', N'K10', N'NH1920', 43, N'GVVL01')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOI], [MANAMHOC], [SISO], [MAGIAOVIENCHUNHIEM]) VALUES (N'19201101', N'11A1', N'K11', N'NH1920', 40, N'GVVL02')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOI], [MANAMHOC], [SISO], [MAGIAOVIENCHUNHIEM]) VALUES (N'20211002', N'10A2', N'K10', N'NH2021', 40, N'GVVL01')
GO
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH01', N'Toán Học', 90, 2)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH02', N'Vật Lý', 60, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH03', N'Hóa Học', 60, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH04', N'Sinh Học', 60, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH05', N'Ngữ Văn', 90, 2)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH06', N'Lịch Sử', 45, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH07', N'Địa Lý', 45, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH08', N'Anh Văn', 45, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH09', N'GD Công Dân', 30, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH10', N'Tin Học', 30, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH11', N'Thể Dục', 30, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH12', N'Quốc Phòng', 30, 1)
INSERT [dbo].[MONHOC] ([MAMONHOC], [TENMONHOC], [SOTIET], [HESO]) VALUES (N'MH13', N'Công Nghệ', 30, 1)
GO
INSERT [dbo].[NAMHOC] ([MANAMHOC], [TENNAMHOC]) VALUES (N'NH1920', N'2019 - 2020')
INSERT [dbo].[NAMHOC] ([MANAMHOC], [TENNAMHOC]) VALUES (N'NH2021', N'2020 - 2021')
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MALOAIND], [TENDANGNHAP], [MATKHAU]) VALUES (N'ND03', N'giaovu', N'giaovu', N'giaovu')
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MALOAIND], [TENDANGNHAP], [MATKHAU]) VALUES (N'ND04', N'giaovien', N'giaovien', N'giaovien')
GO
SET IDENTITY_INSERT [dbo].[PHANCONG] ON 

INSERT [dbo].[PHANCONG] ([STT], [MANAMHOC], [MALOP], [MAMONHOC], [MAGIAOVIEN]) VALUES (9, N'NH1920', N'19201001', N'MH01', N'GVTO01')
INSERT [dbo].[PHANCONG] ([STT], [MANAMHOC], [MALOP], [MAMONHOC], [MAGIAOVIEN]) VALUES (12, N'NH1920', N'19201001', N'MH01', N'GVVL01')
INSERT [dbo].[PHANCONG] ([STT], [MANAMHOC], [MALOP], [MAMONHOC], [MAGIAOVIEN]) VALUES (13, N'NH1920', N'19201001', N'MH01', N'70')
SET IDENTITY_INSERT [dbo].[PHANCONG] OFF
GO
SET IDENTITY_INSERT [dbo].[PHANLOP] ON 

INSERT [dbo].[PHANLOP] ([STT], [MANAMHOC], [MALOP], [MAHOCSINH]) VALUES (7, N'NH1920', N'19201001', N'HS04')
INSERT [dbo].[PHANLOP] ([STT], [MANAMHOC], [MALOP], [MAHOCSINH]) VALUES (8, N'NH1920', N'19201001', N'HS02')
INSERT [dbo].[PHANLOP] ([STT], [MANAMHOC], [MALOP], [MAHOCSINH]) VALUES (9, N'NH1920', N'19201001', N'HS03')
INSERT [dbo].[PHANLOP] ([STT], [MANAMHOC], [MALOP], [MAHOCSINH]) VALUES (15, N'NH1920', N'20211002', N'HS04')
INSERT [dbo].[PHANLOP] ([STT], [MANAMHOC], [MALOP], [MAHOCSINH]) VALUES (16, N'NH1920', N'19201001', N'HS02')
INSERT [dbo].[PHANLOP] ([STT], [MANAMHOC], [MALOP], [MAHOCSINH]) VALUES (17, N'NH1920', N'19201001', N'1111111111')
SET IDENTITY_INSERT [dbo].[PHANLOP] OFF
GO
INSERT [dbo].[TONGIAO] ([MATONGIAO], [TENTONGIAO]) VALUES (N'TG01', N'Không')
INSERT [dbo].[TONGIAO] ([MATONGIAO], [TENTONGIAO]) VALUES (N'TG02', N'Phật')
INSERT [dbo].[TONGIAO] ([MATONGIAO], [TENTONGIAO]) VALUES (N'TG03', N'Thiên chúa')
INSERT [dbo].[TONGIAO] ([MATONGIAO], [TENTONGIAO]) VALUES (N'TG04', N'Cao đài')
GO
ALTER TABLE [dbo].[DIEMSO]  WITH CHECK ADD  CONSTRAINT [F_DIEM_HS] FOREIGN KEY([MAHOCSINH])
REFERENCES [dbo].[HOCSINH] ([MAHOCSINH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DIEMSO] CHECK CONSTRAINT [F_DIEM_HS]
GO
ALTER TABLE [dbo].[DIEMSO]  WITH CHECK ADD  CONSTRAINT [F_DIEM_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[DIEMSO] CHECK CONSTRAINT [F_DIEM_LOP]
GO
ALTER TABLE [dbo].[DIEMSO]  WITH CHECK ADD  CONSTRAINT [F_DIEM_MH] FOREIGN KEY([MAMONHOC])
REFERENCES [dbo].[MONHOC] ([MAMONHOC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DIEMSO] CHECK CONSTRAINT [F_DIEM_MH]
GO
ALTER TABLE [dbo].[DIEMSO]  WITH CHECK ADD  CONSTRAINT [FK_DIEMSO_HOCKY] FOREIGN KEY([MAHOCKY])
REFERENCES [dbo].[HOCKY] ([MAHOCKY])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DIEMSO] CHECK CONSTRAINT [FK_DIEMSO_HOCKY]
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [F_GV_GT] FOREIGN KEY([MAGIOITINH])
REFERENCES [dbo].[GIOITINH] ([MAGIOITINH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [F_GV_GT]
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [F_GV_MH] FOREIGN KEY([MAMONHOC])
REFERENCES [dbo].[MONHOC] ([MAMONHOC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [F_GV_MH]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [F_HS_GT] FOREIGN KEY([MAGIOITINH])
REFERENCES [dbo].[GIOITINH] ([MAGIOITINH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [F_HS_GT]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [F_HS_TG] FOREIGN KEY([MATONGIAO])
REFERENCES [dbo].[TONGIAO] ([MATONGIAO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [F_HS_TG]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HS_DT] FOREIGN KEY([MADANTOC])
REFERENCES [dbo].[DANTOC] ([MADANTOC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HS_DT]
GO
ALTER TABLE [dbo].[KETQUAHOCKY]  WITH CHECK ADD  CONSTRAINT [F_KETQUAHOCKY_HS] FOREIGN KEY([MAHOCSINH])
REFERENCES [dbo].[HOCSINH] ([MAHOCSINH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KETQUAHOCKY] CHECK CONSTRAINT [F_KETQUAHOCKY_HS]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [F_LOP_GIAOVIEN] FOREIGN KEY([MAGIAOVIENCHUNHIEM])
REFERENCES [dbo].[GIAOVIEN] ([MAGIAOVIEN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [F_LOP_GIAOVIEN]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [F_LOP_KHOILOP] FOREIGN KEY([MAKHOI])
REFERENCES [dbo].[KHOILOP] ([MAKHOI])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [F_LOP_KHOILOP]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [F_LOP_NAMHOC] FOREIGN KEY([MANAMHOC])
REFERENCES [dbo].[NAMHOC] ([MANAMHOC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [F_LOP_NAMHOC]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_LOAINGUOIDUNG] FOREIGN KEY([MALOAIND])
REFERENCES [dbo].[LOAINGUOIDUNG] ([MALOAIND])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_LOAINGUOIDUNG]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [Fk_PHANCONG_NAMHOC] FOREIGN KEY([MANAMHOC])
REFERENCES [dbo].[NAMHOC] ([MANAMHOC])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [Fk_PHANCONG_NAMHOC]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [P_PC_GIAOVIEN] FOREIGN KEY([MAGIAOVIEN])
REFERENCES [dbo].[GIAOVIEN] ([MAGIAOVIEN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [P_PC_GIAOVIEN]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [P_PC_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [P_PC_LOP]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [P_PC_MONHOC] FOREIGN KEY([MAMONHOC])
REFERENCES [dbo].[MONHOC] ([MAMONHOC])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [P_PC_MONHOC]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PHANLOP_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PHANLOP_LOP]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PL_HS] FOREIGN KEY([MAHOCSINH])
REFERENCES [dbo].[HOCSINH] ([MAHOCSINH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PL_HS]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PL_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PL_LOP]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PL_NAMHOC] FOREIGN KEY([MANAMHOC])
REFERENCES [dbo].[NAMHOC] ([MANAMHOC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PL_NAMHOC]
GO
