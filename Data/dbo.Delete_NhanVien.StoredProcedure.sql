USE [QLNS]
GO
/****** Object:  StoredProcedure [dbo].[Delete_NhanVien]    Script Date: 4/8/2022 1:13:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_NhanVien] @Id int
as
begin
Delete from dbo.NhanVien
	where Id = @Id
end
GO
