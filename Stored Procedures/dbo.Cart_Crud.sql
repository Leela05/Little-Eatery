SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [dbo].[Cart_Crud]
@Action varchar(10),
@ProductId int = null,
@Quantity int = null,
@UserId int = null

AS
BEGIN
	SET NOCOUNT ON;

	IF @Action = 'SELECT' 
		BEGIN
			SELECT c.ProductId,p.Name,p.Price,c.Quantity,c.Quantity AS Qty, p.Quantity AS PrdQty 
			FROM dbo.Carts c
			INNER JOIN dbo.Products p ON p.ProductId = c.ProductId
			WHERE c.UserId = @UserId
		END

	
	IF @Action = 'INSERT' 
		BEGIN
			INSERT INTO dbo.Carts(ProductId,Quantity,UserId)
			VALUES(@ProductId,@Quantity,@UserId)
		END


	IF @Action = 'UPDATE' 
		BEGIN
			UPDATE dbo.Carts
			SET Quantity = @Quantity
			WHERE ProductId = @ProductId AND UserId = @UserId
		END

	IF @Action = 'DELETE' 
		BEGIN
			DELETE FROM dbo.Carts
			WHERE ProductId = @ProductId AND UserId = @UserId
		END


	IF @Action = 'GETBYID' 
		BEGIN
			SELECT * FROM dbo.Carts
			WHERE ProductId = @ProductId AND UserId = @UserId
		END

END
GO
