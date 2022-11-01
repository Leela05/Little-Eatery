SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Product_Crud]
@Action varchar(20),
@ProductId int =null,
@Name varchar(100)=null,
@Description varchar(max) = null,
@Price decimal(18,2)=0,
@Quantity int = null,
@CategoryId int=null,
@IsActive bit = false
	
AS
BEGIN

	SET NOCOUNT ON;

	IF @Action = 'SELECT'
		BEGIN
			SELECT p.*,c.Name AS CategoryName FROM dbo.Products p
			INNER JOIN dbo.Categories c ON c.CategoryId = p.CategoryId 
		END

	IF @Action = 'ACTIVEPROD'
		BEGIN
		    SELECT p.*,c.Name AS CategoryName FROM dbo.Products p
			INNER JOIN dbo.Categories c ON c.CategoryId = p.CategoryId
			WHERE p.IsActive = 1
		END

	IF @Action = 'GETBYID'
		BEGIN
			SELECT * FROM dbo.Products WHERE ProductId = @ProductId
		END
			
END
GO
