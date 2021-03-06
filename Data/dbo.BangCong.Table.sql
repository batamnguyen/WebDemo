USE [QLNS]
GO
/****** Object:  Table [dbo].[BangCong]    Script Date: 4/8/2022 1:13:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangCong](
	[IdBC] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NULL,
	[IdStore] [int] NULL,
	[Ngay1] [nchar](10) NULL,
	[Ngay2] [nchar](10) NULL,
	[Ngay3] [nchar](10) NULL,
	[Ngay4] [nchar](10) NULL,
	[Ngay5] [nchar](10) NULL,
	[Ngay6] [nchar](10) NULL,
	[Ngay7] [nchar](10) NULL,
	[Ngay8] [nchar](10) NULL,
	[Ngay9] [nchar](10) NULL,
	[Ngay10] [nchar](10) NULL,
	[Ngay11] [nchar](10) NULL,
	[Ngay12] [nchar](10) NULL,
	[Ngay13] [nchar](10) NULL,
 CONSTRAINT [PK_BangCong] PRIMARY KEY CLUSTERED 
(
	[IdBC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BangCong]  WITH CHECK ADD  CONSTRAINT [FK_BangCong_CuaHang] FOREIGN KEY([IdStore])
REFERENCES [dbo].[CuaHang] ([IdStore])
GO
ALTER TABLE [dbo].[BangCong] CHECK CONSTRAINT [FK_BangCong_CuaHang]
GO
ALTER TABLE [dbo].[BangCong]  WITH CHECK ADD  CONSTRAINT [FK_BangCong_NhanVien] FOREIGN KEY([Id])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[BangCong] CHECK CONSTRAINT [FK_BangCong_NhanVien]
GO
