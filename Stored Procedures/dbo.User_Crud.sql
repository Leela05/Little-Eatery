SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[User_Crud]
	@Action VARCHAR(20),
	@UserId INT = NULL,
	@Name varchar(50) = null,
	@Username varchar(50) = null,
	@Mobile varchar(50) = null,
	@Email varchar(50) = null,
	@Address varchar(max) = null,
	@PostCode varchar(50) = null,
	@Password varchar(50) = null

AS
BEGIN
    SET NOCOUNT ON;

    --SELECT FOR LOGIN
    IF @Action = 'SELECT4LOGIN'
       BEGIN
            SELECT * FROM dbo.Users WHERE Username = @Username and Password = @Password
       END
       

       --SELECT FOR USER PROFILE
       IF @Action = 'SELECT4PROFILE'
         BEGIN
                SELECT * FROM dbo.Users WHERE UserId = @UserId
         END

       --INSERT (REGISTRATION)
       IF @Action = 'INSERT'
          BEGIN
                INSERT into dbo.Users(Name,Username,Mobile,Email,Address,PostCode,Password,CreatedDate)
                values  (@Name,@Username,@Mobile,@Email,@Address,@PostCode,@Password,GETDATE())
          END
 END
GO
