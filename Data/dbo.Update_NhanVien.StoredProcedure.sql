USE [QLNS]
GO
/****** Object:  StoredProcedure [dbo].[Update_NhanVien]    Script Date: 4/8/2022 1:13:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_NhanVien] @Id int, @name nvarchar(50),@email nvarchar(225),@sdt int
as
begin
Update dbo.NhanVien
	set HoTen = @name,
	Email=@email,
	Sdt=@sdt
	where Id = @Id
end
GO
