USE [QLNS]
GO
/****** Object:  StoredProcedure [dbo].[Insert_NhanVien]    Script Date: 4/8/2022 1:13:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_NhanVien] @name nvarchar(50),@email nvarchar(225),@sdt int
as
begin
Insert Into dbo.NhanVien(HoTen,Email,Sdt)values(@name,@email,@sdt)
end
GO
