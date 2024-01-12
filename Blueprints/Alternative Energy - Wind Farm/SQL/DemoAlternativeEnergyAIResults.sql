/****** Object:  Table [dbo].[DemoAlternativeEnergyAIResults]    Script Date: 11/01/2024 12:53:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoAlternativeEnergyAIResults](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetNo] [nvarchar](50) NULL,
	[Blade] [nchar](10) NULL,
	[Side] [nvarchar](50) NULL,
	[DamageType] [nvarchar](50) NULL,
	[DamageArea] [decimal](18, 2) NULL,
	[DistanceToHub] [decimal](18, 2) NULL,
	[Severity] [int] NULL,
 CONSTRAINT [PK_DemoAlternativeEnergyAIResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoAlternativeEnergyAIResults] ON 
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (24, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(40.80 AS Decimal(18, 2)), CAST(32.70 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (25, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(57.20 AS Decimal(18, 2)), CAST(33.50 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (26, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(7.90 AS Decimal(18, 2)), CAST(33.10 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (27, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(8.60 AS Decimal(18, 2)), CAST(32.90 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (28, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(3.30 AS Decimal(18, 2)), CAST(24.80 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (29, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(2.90 AS Decimal(18, 2)), CAST(26.10 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (30, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(9.00 AS Decimal(18, 2)), CAST(26.70 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (31, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(9.20 AS Decimal(18, 2)), CAST(25.80 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (32, N'MMWT003', N'A         ', N'Pressure Side', N'Surface_Damage', CAST(3.70 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (33, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(5.30 AS Decimal(18, 2)), CAST(32.60 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (34, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(24.60 AS Decimal(18, 2)), CAST(33.80 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (35, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(33.80 AS Decimal(18, 2)), CAST(35.70 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (36, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(36.80 AS Decimal(18, 2)), CAST(34.30 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (37, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(46.00 AS Decimal(18, 2)), CAST(33.20 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (38, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(0.90 AS Decimal(18, 2)), CAST(32.80 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (39, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(5.90 AS Decimal(18, 2)), CAST(33.50 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (40, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(18.90 AS Decimal(18, 2)), CAST(32.10 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (41, N'MMWT003', N'A         ', N'Leading Edge', N'LE_Erosion', CAST(32.80 AS Decimal(18, 2)), CAST(31.40 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (42, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(2.40 AS Decimal(18, 2)), CAST(35.60 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (43, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(3.40 AS Decimal(18, 2)), CAST(34.50 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (44, N'MMWT003', N'B         ', N'Leading Edge', N'LE_Erosion', CAST(57.80 AS Decimal(18, 2)), CAST(35.10 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[DemoAlternativeEnergyAIResults] ([Id], [AssetNo], [Blade], [Side], [DamageType], [DamageArea], [DistanceToHub], [Severity]) VALUES (45, N'MMWT003', N'A         ', N'Leading Edge', N'LE_Erosion', CAST(5.50 AS Decimal(18, 2)), CAST(31.20 AS Decimal(18, 2)), 3)
GO
SET IDENTITY_INSERT [dbo].[DemoAlternativeEnergyAIResults] OFF
GO