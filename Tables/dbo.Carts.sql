CREATE TABLE [dbo].[Carts]
(
[CartId] [int] NOT NULL IDENTITY(1, 1),
[ProductId] [int] NULL,
[Quantity] [int] NULL,
[UserId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carts] ADD CONSTRAINT [PK__Carts__51BCD7B7F2146B1D] PRIMARY KEY CLUSTERED ([CartId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carts] ADD CONSTRAINT [FK_Carts_Products] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] ADD CONSTRAINT [FK_Carts_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE
GO
