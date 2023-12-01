SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoSTPPlantMapping](
	[ID] [int] NOT NULL,
	[AssetNo] [nvarchar](6) NULL,
	[Description] [nvarchar](25) NULL,
	[Active] [bit] NULL,
	[X] [float] NOT NULL,
	[Y] [float] NOT NULL,
 CONSTRAINT [PK_DemoSTPPlantMapping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (1, N'R-001', N'Reservoir-001', 1, 14, 50.25)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (2, N'R-002', N'Reservoir-002', 1, 63, 50.25)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (3, N'P-001', N'Pump-001', 1, 18.55, 63.55)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (4, N'P-002', N'Pump-002', 1, 35, 63.55)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (5, N'P-003', N'Pump-003', 1, 66, 63.55)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (7, N'C-001', N'Cyclone-001', 1, 48.28, 22.26)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (8, N'C-002', N'Cyclone-002', 1, 48.28, 54)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (9, N'P-509', N'Pump-509', 1, 39, 87.5)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (10, N'P-009', N'Pump-009', 1, 90.39, 77.02)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (11, N'P-78', N'Pump-778', 1, 39, 76)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (12, N'P-932', N'Pump-932', 0, 90.39, 86.02)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (13, N'T-001', N'Tank-001', 1, 16.5, 81.33)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (14, N'T-002', N'Tank-002', 1, 59, 81.33)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (15, N'M-001', N'Mill-001', 1, 35.5, 39.1)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (16, N'M-002', N'Mill-002', 1, 80, 39.1)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (17, N'B-001', N'Belt-001', 1, 12, 10.5)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (18, N'B-002', N'Belt-002', 1, 35, 10.4)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (19, N'B-003', N'Belt-003', 1, 12, 19.5)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (20, N'B-004', N'Belt-004', 1, 35, 19.5)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (21, N'B-005', N'Belt-005', 1, 12, 28.7)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (22, N'B-006', N'Belt-006', 1, 35, 28.7)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (23, N'P-004', N'Pump-004', 1, 82.55, 63.55)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (24, N'B-007', N'Belt-007', 1, -50, 50)
GO
INSERT [dbo].[DemoSTPPlantMapping] ([ID], [AssetNo], [Description], [Active], [X], [Y]) VALUES (25, N'B-008', N'Belt-008', 1, -50, 50)
GO
ALTER TABLE [dbo].[DemoSTPPlantMapping] ADD  CONSTRAINT [DF__ConveyorMotor__X__469D7149]  DEFAULT ((0)) FOR [X]
GO
ALTER TABLE [dbo].[DemoSTPPlantMapping] ADD  CONSTRAINT [DF__ConveyorMotor__Y__47919582]  DEFAULT ((0)) FOR [Y]
GO
