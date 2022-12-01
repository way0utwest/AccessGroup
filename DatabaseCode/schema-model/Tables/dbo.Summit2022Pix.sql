CREATE TABLE [dbo].[Summit2022Pix]
(
[Summit2022PixID] [int] NOT NULL IDENTITY(1, 1),
[PictureDesc] [varchar] (200) NULL,
[PictureURL] [varchar] (300) NULL
)
GO
ALTER TABLE [dbo].[Summit2022Pix] ADD CONSTRAINT [Summit2022PixPK] PRIMARY KEY CLUSTERED ([Summit2022PixID])
GO
