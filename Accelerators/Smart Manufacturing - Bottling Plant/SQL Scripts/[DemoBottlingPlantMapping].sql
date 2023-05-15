/****** Object:  Table [dbo].[DemoBottlingPlantMapping]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoBottlingPlantMapping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetNo] [nvarchar](6) NULL,
	[Description] [nvarchar](25) NULL,
	[Active] [bit] NULL,
	[X] [float] NOT NULL,
	[Y] [float] NOT NULL,
 CONSTRAINT [PK_DemoBottlingPlantMapping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoBottlingPlantMapping] ON 
GO
INSERT [dbo].[DemoBottlingPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (1, N'P01', N'Feeding Pump', 1, 0.5, 8)
GO
INSERT [dbo].[DemoBottlingPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (2, N'T01', N'Main Storage Tank', 1, 14.5, 17)
GO
INSERT [dbo].[DemoBottlingPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (3, N'T02', N'Feeding Strage Tank', 1, 32, 41)
GO
INSERT [dbo].[DemoBottlingPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (4, N'F01', N'Filling and Capping ', 1, 28, 62.5)
GO
INSERT [dbo].[DemoBottlingPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (5, N'C01', N'Conveyor Feeder', 1, 32, 76)
GO
INSERT [dbo].[DemoBottlingPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (6, N'C02', N'Conveyor Feeder', 1, 50, 76)
GO
INSERT [dbo].[DemoBottlingPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (7, N'C03', N'Conveyor Feeder', 1, 68, 76)
GO
INSERT [dbo].[DemoBottlingPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (8, N'I01', N'Quality Check Image', 1, 59, 41)
GO
SET IDENTITY_INSERT [dbo].[DemoBottlingPlantMapping] OFF
GO
ALTER TABLE [dbo].[DemoBottlingPlantMapping] ADD  CONSTRAINT [DF__BottlingPlant__X__469D7149]  DEFAULT ((0)) FOR [X]
GO
ALTER TABLE [dbo].[DemoBottlingPlantMapping] ADD  CONSTRAINT [DF__BottlingPlant__Y__47919582]  DEFAULT ((0)) FOR [Y]
GO
