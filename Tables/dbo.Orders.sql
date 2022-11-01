CREATE TABLE [dbo].[Orders]
(
[OrderDetailsId] [int] NOT NULL IDENTITY(1, 1),
[OrderNo] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductId] [int] NULL,
[Quantity] [int] NULL,
[UserId] [int] NULL,
[Status] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentId] [int] NULL,
[OrderDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK__Orders__9DD74DBDF764ACEF] PRIMARY KEY CLUSTERED ([OrderDetailsId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Payment] FOREIGN KEY ([PaymentId]) REFERENCES [dbo].[Payment] ([PaymentId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Products] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE
GO
