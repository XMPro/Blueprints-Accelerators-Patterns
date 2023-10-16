SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoWorkManagementPump](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetNo] [nvarchar](50) NULL,
	[WRNo] [nvarchar](50) NULL,
	[WONo] [nvarchar](50) NULL,
	[Title] [nvarchar](250) NULL,
	[WOStatus] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_DemoWorkManagementPump] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoWorkManagementPump] ON 
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (1, N'P-778', N'3453788', N'114879', N'Grease drive end and opposite drive end motor bearings', N'INPROG', CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (2, N'P-778', N'3446268', N'114900', N'Inspect mechanical seal for visible leakage', N'PLAN', CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (3, N'P-778', N'3451228', N'114921', N'Take pump drive end and opposite drive end oil samples for oil analysis', N'PLAN', CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (4, N'P-778', N'3446195', N'114942', N'Inspect motor and pump base plate bolts for looseness', N'PLAN', CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (5, N'P-778', N'3446268', N'114963', N'Take manual vibration readings for the motor and pump drive end and opposite drive end bearings', N'SCHED', CAST(N'2021-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (6, N'P-778', N'3446115', N'114984', N'Check shaft alignment', N'SCHED', CAST(N'2019-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (7, N'P-778', N'3446139', N'115005', N'Inspect coupling for wear/damage', N'SCHED', CAST(N'2019-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (8, N'P-778', N'3446163', N'115026', N'Inspect pump casing and gaskets for leakage', N'RESCHED', CAST(N'2019-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (9, N'P-778', N'3446187', N'115047', N'Inspect drive end and opposite drive end bearings oil levels', N'COMPLETED', CAST(N'2019-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementPump] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (10, N'P-778', N'3446211', N'115068', N'Inspect coupling guard for damage/warpage', N'COMPLETED', CAST(N'2019-09-10T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DemoWorkManagementPump] OFF
GO
