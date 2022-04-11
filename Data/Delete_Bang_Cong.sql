SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SP_DELete_BC
	@IdBC int
AS
BEGIN
	declare @id int, @idStore int;

	begin
		select 
			@id = Id,
			@idStore = IdStore
		from
			BangCong
		where 
			IdBC = @IdBC;
	end;

	update BangCong
	set
		Isdeleted = 1,
		DeletedDate = GETDATE()
	where
		IdBC = @IdBC;
		
	update CuaHang
	set
		Isdeleted = 1,
		DeletedDate = GETDATE()
	where
		IdStore = @idStore;	

	update NhanVien
	set
		Isdeleted = 1,
		DeletedDate = GETDATE()
	where
		Id = @id;	
END
GO
