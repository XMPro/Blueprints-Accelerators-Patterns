SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoAlternativeEnergyAsset](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetNo] [nvarchar](25) NOT NULL,
	[AssetType] [nvarchar](50) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Active] [bit] NULL,
	[Criticality] [nchar](10) NULL,
	[RiskScore] [decimal](12, 0) NULL,
	[Location] [nvarchar](50) NULL,
	[AlertColor] [nchar](10) NULL,
 CONSTRAINT [PK_DemoAlternativeEnergyAsset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoAlternativeEnergyAsset] ON 
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (1, N'MM01', N'Wind Farm', 41.06984, 16.12632, 1, N'High', CAST(32 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (2, N'MMWT001', N'Wind Turbine', 41.07063461, 16.12720363, 1, N'High', CAST(44 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (3, N'MMWT002', N'Wind Turbine', 41.07063461, 16.12720363, 1, N'High', CAST(14 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (4, N'MMWT003', N'Wind Turbine', 41.07063461, 16.12789363, 1, N'High', CAST(9 AS Decimal(12, 0)), N'Minervino Murge', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (5, N'MMWT004', N'Wind Turbine', 41.07063461, 16.12858363, 1, N'High', CAST(38 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (6, N'MMWT005', N'Wind Turbine', 41.07063461, 16.12927363, 1, N'High', CAST(16 AS Decimal(12, 0)), N'Minervino Murge', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (7, N'MMWT006', N'Wind Turbine', 41.07063461, 16.12996363, 1, N'High', CAST(48 AS Decimal(12, 0)), N'Minervino Murge', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (8, N'MMWT007', N'Wind Turbine', 41.07063461, 16.13065363, 1, N'High', CAST(32 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (9, N'MMWT008', N'Wind Turbine', 41.07063461, 16.13134363, 1, N'High', CAST(24 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (10, N'MMWT009', N'Wind Turbine', 41.07063461, 16.13203363, 1, N'Medium ', CAST(38 AS Decimal(12, 0)), N'Minervino Murge', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (11, N'SS01', N'Wind Farm', 38.64486, 16.48808, 1, N'High', CAST(10 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (12, N'SSWT001', N'Wind Turbine', 38.644889, 16.488115, 1, N'Medium ', CAST(32 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (13, N'SSWT002', N'Wind Turbine', 38.644889, 16.488805, 1, N'High', CAST(44 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (14, N'SSWT003', N'Wind Turbine', 38.644889, 16.489495, 1, N'High', CAST(14 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (15, N'SSWT004', N'Wind Turbine', 38.644889, 16.490185, 1, N'High', CAST(9 AS Decimal(12, 0)), N'San Sostene', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (16, N'SSWT005', N'Wind Turbine', 38.644889, 16.490875, 1, N'Medium ', CAST(38 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (17, N'SSWT006', N'Wind Turbine', 38.644889, 16.491565, 1, N'Medium ', CAST(16 AS Decimal(12, 0)), N'San Sostene', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (18, N'SSWT007', N'Wind Turbine', 38.644889, 16.492255, 1, N'High', CAST(48 AS Decimal(12, 0)), N'San Sostene', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (19, N'SSWT008', N'Wind Turbine', 38.644889, 16.492945, 1, N'High', CAST(32 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (20, N'SSWT009', N'Wind Turbine', 38.644889, 16.493635, 1, N'High', CAST(24 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (21, N'SSWT010', N'Wind Turbine', 38.644889, 16.494325, 1, N'High', CAST(38 AS Decimal(12, 0)), N'San Sostene', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (22, N'R001', N'Photovoltaics', 39.33405, 16.1861, 1, N'Medium ', CAST(10 AS Decimal(12, 0)), N'Rende', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (23, N'RSA001', N'Solar Array', 39.33405, 16.1861, 1, N'Medium ', CAST(32 AS Decimal(12, 0)), N'Rende', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (24, N'RSA002', N'Solar Array', 39.33405, 16.1861, 1, N'Medium ', CAST(44 AS Decimal(12, 0)), N'Rende', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (25, N'RSA003', N'Solar Array', 39.33405, 16.1861, 1, N'Medium ', CAST(14 AS Decimal(12, 0)), N'Rende', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (26, N'BM001', N'Biomass', 39.33912, 16.19341, 1, N'Low ', CAST(9 AS Decimal(12, 0)), N'Rende', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (27, N'NM001', N'Photovoltaics', 40.56214, 17.80939, 1, N'Medium ', CAST(38 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (28, N'NMS001', N'Solar Array', 40.56214, 17.80939, 1, N'Medium ', CAST(16 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (29, N'NMS002', N'Solar Array', 40.56214, 17.80939, 1, N'Medium ', CAST(48 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (30, N'NMS003', N'Solar Array', 40.56214, 17.80939, 1, N'High', CAST(32 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (31, N'NMS004', N'Solar Array', 40.56214, 17.80939, 1, N'High', CAST(24 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (32, N'NMS005', N'Solar Array', 40.56214, 17.80939, 1, N'High', CAST(38 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#E8C268')
GO
SET IDENTITY_INSERT [dbo].[DemoAlternativeEnergyAsset] OFF
GO
