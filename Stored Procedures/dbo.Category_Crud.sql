SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Category_Crud]
@Action varchar(20),
@CategoryId int=null,
@Name varchar(100)=null,
@IsActive bit = false
	
AS
BEGIN

	SET NOCOUNT ON;

	IF @Action = 'SELECT'
		BEGIN
			SELECT * FROM dbo.Categories 
		END

	IF @Action = 'ACTIVECAT'
		BEGIN
		    SELECT * FROM dbo.Categories WHERE IsActive = 1
		END

	IF @Action = 'GETBYID'
		BEGIN
			SELECT * FROM dbo.Categories WHERE CategoryId = @CategoryId
		END
			
END
GO
