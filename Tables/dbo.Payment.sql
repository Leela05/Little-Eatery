CREATE TABLE [dbo].[Payment]
(
[PaymentId] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CardNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExpiryDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CvvNo] [int] NULL,
[Address] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentMode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payment] ADD CONSTRAINT [PK__Payment__9B556A3881EA342D] PRIMARY KEY CLUSTERED ([PaymentId]) ON [PRIMARY]
GO
