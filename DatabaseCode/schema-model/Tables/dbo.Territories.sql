CREATE TABLE [dbo].[Territories]
(
[TerritoryID] [nvarchar] (20) NOT NULL,
[TerritoryDescription] [nchar] (50) NOT NULL,
[RegionID] [int] NOT NULL,
[RegionName] [nchar] (10) NULL,
[RegionCode] [nchar] (10) NULL,
[RegionOwner] [nchar] (10) NULL,
[Nationality] [nvarchar] (20) NULL,
[NationalityCode] [nvarchar] (20) NULL,
[Active] [bit] NULL CONSTRAINT [DF__Territori__Activ__67DE6983] DEFAULT ((1)),
[StartDate] [date] NULL CONSTRAINT [DF__Territori__Start__68D28DBC] DEFAULT (getdate()),
[EndDate] [date] NULL CONSTRAINT [DF__Territori__EndDa__69C6B1F5] DEFAULT (getdate())
)
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED ([TerritoryID])
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [FK_Territories_Region] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
GO
