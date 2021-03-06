USE [1N3C306VXTheNhau]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/06/2021 10:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 9/06/2021 10:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[mahd] [nchar](10) NOT NULL,
	[mama] [nchar](10) NULL,
	[soluong] [bigint] NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MH]    Script Date: 9/06/2021 10:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MH](
	[msmh] [int] IDENTITY(1,1) NOT NULL,
	[tenmh] [nvarchar](100) NULL,
	[mota] [nvarchar](100) NULL,
	[msnhom] [nchar](20) NULL,
	[donvitinh] [nvarchar](100) NULL,
	[hinh] [nvarchar](max) NULL,
	[trangthai] [bit] NULL,
	[dongia] [float] NULL,
 CONSTRAINT [PK__MH__763F2D2706917F1D] PRIMARY KEY CLUSTERED 
(
	[msmh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[monan]    Script Date: 9/06/2021 10:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monan](
	[mama] [nchar](10) NOT NULL,
	[tenma] [nchar](10) NULL,
	[dongia] [bigint] NULL,
 CONSTRAINT [PK_monan] PRIMARY KEY CLUSTERED 
(
	[mama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHOMMH]    Script Date: 9/06/2021 10:38:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMMH](
	[msnhom] [nchar](20) NOT NULL,
	[tennhom] [nvarchar](150) NULL,
	[mota] [nvarchar](650) NULL,
	[ngaytao] [datetime] NULL CONSTRAINT [DF_NHOMMH_ngaytao]  DEFAULT (getdate()),
 CONSTRAINT [PK_NHOMMH] PRIMARY KEY CLUSTERED 
(
	[msnhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'ad@123', N'123')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'nv@123', N'234')
INSERT [dbo].[Account] ([UserName], [Password]) VALUES (N'ql@123', N'345')
INSERT [dbo].[hoadon] ([mahd], [mama], [soluong]) VALUES (N'1         ', N'1         ', 1)
INSERT [dbo].[hoadon] ([mahd], [mama], [soluong]) VALUES (N'11        ', N'8         ', 10000)
INSERT [dbo].[hoadon] ([mahd], [mama], [soluong]) VALUES (N'12        ', N'1         ', 10000)
INSERT [dbo].[hoadon] ([mahd], [mama], [soluong]) VALUES (N'2         ', N'2         ', 2)
INSERT [dbo].[hoadon] ([mahd], [mama], [soluong]) VALUES (N'3         ', N'3         ', 3)
INSERT [dbo].[hoadon] ([mahd], [mama], [soluong]) VALUES (N'4         ', N'4         ', 322)
INSERT [dbo].[hoadon] ([mahd], [mama], [soluong]) VALUES (N'5         ', N'4         ', 4)
INSERT [dbo].[hoadon] ([mahd], [mama], [soluong]) VALUES (N'6         ', N'1         ', 3)
SET IDENTITY_INSERT [dbo].[MH] ON 

INSERT [dbo].[MH] ([msmh], [tenmh], [mota], [msnhom], [donvitinh], [hinh], [trangthai], [dongia]) VALUES (1, N'bia', N'ún bia', N'02                  ', N'chai', N'', 1, 10000)
INSERT [dbo].[MH] ([msmh], [tenmh], [mota], [msnhom], [donvitinh], [hinh], [trangthai], [dongia]) VALUES (2, N'khô mực ', N'nhậu ', N'01                  ', N'con', N'', 0, 20000)
INSERT [dbo].[MH] ([msmh], [tenmh], [mota], [msnhom], [donvitinh], [hinh], [trangthai], [dongia]) VALUES (3, N'rượu ', N'ún say', N'02                  ', N'chai', N'', 1, 3000)
INSERT [dbo].[MH] ([msmh], [tenmh], [mota], [msnhom], [donvitinh], [hinh], [trangthai], [dongia]) VALUES (4, N'hột vịt lộn', N'nhậu', N'01                  ', N'hột', N'', 1, 182)
INSERT [dbo].[MH] ([msmh], [tenmh], [mota], [msnhom], [donvitinh], [hinh], [trangthai], [dongia]) VALUES (5, N'hột vịt lộn', N'nhậu', N'01                  ', N'hột', N'', 1, 182)
SET IDENTITY_INSERT [dbo].[MH] OFF
INSERT [dbo].[monan] ([mama], [tenma], [dongia]) VALUES (N'1         ', N'a         ', 10000)
INSERT [dbo].[monan] ([mama], [tenma], [dongia]) VALUES (N'2         ', N'b         ', 20000)
INSERT [dbo].[monan] ([mama], [tenma], [dongia]) VALUES (N'3         ', N'c         ', 30000)
INSERT [dbo].[monan] ([mama], [tenma], [dongia]) VALUES (N'4         ', N'd         ', 5555)
INSERT [dbo].[monan] ([mama], [tenma], [dongia]) VALUES (N'8         ', N'h         ', 1000000)
INSERT [dbo].[NHOMMH] ([msnhom], [tennhom], [mota], [ngaytao]) VALUES (N'01                  ', N'Thức ăn', N'Để ăn', CAST(N'2021-01-12 00:00:00.000' AS DateTime))
INSERT [dbo].[NHOMMH] ([msnhom], [tennhom], [mota], [ngaytao]) VALUES (N'02                  ', N'Thức uống', N'Để uống', CAST(N'2021-02-09 00:00:00.000' AS DateTime))
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_monan] FOREIGN KEY([mama])
REFERENCES [dbo].[monan] ([mama])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_hoadon_monan]
GO
