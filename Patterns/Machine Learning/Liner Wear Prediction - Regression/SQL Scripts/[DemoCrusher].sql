SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoCrusher](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetId] [nvarchar](25) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Live] [bit] NULL,
	[HealthScore] [nchar](10) NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_DemoCrusher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoCrusher] ON 
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (2, N'SC1', N'Crusher 1', 50.770697265309941, -105.34947817747876, 1, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (3, N'SC2', N'Crusher 2', 50.770697265309941, -105.34947817747876, 1, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (4, N'SC3', N'Crusher 3', 50.770697265309941, -105.34947817747876, 1, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (5, N'SC4', N'Crusher 4', 50.770697265309941, -105.34947817747876, 0, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (6, N'SC5', N'Crusher 5', 50.770697265309941, -105.34947817747876, 0, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (7, N'SC6', N'Crusher 6', 50.770697265309941, -105.34947817747876, 1, N'90        ', N'Canada')
GO
SET IDENTITY_INSERT [dbo].[DemoCrusher] OFF
GO
