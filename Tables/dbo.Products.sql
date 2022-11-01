CREATE TABLE [dbo].[Products]
(
[ProductId] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Price] [decimal] (18, 2) NULL,
[Quantity] [int] NULL,
[CategoryId] [int] NULL,
[IsActive] [bit] NULL,
[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK__Products__B40CC6CDFF59368F] PRIMARY KEY CLUSTERED ([ProductId]) ON [PRIMARY]
GO
