/****** Object:  Table [dbo].[DemoGasTurbine]    Script Date: 25/07/2022 9:32:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoGasTurbine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetId] [nvarchar](25) NOT NULL,
	[HealthScore] [float] NULL,
	[OpenWO] [numeric](18, 0) NULL,
	[LastMaintained] [datetime] NULL,
 CONSTRAINT [PK_DemoGasTurbine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoGasTurbine] ON 

INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (5, N'N-2', 62, NULL, CAST(N'2020-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (6, N'N-3', 71, CAST(8017204 AS Numeric(18, 0)), CAST(N'2020-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (7, N'N-4', 85, NULL, CAST(N'2020-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (8, N'N-1', 92, CAST(3404653 AS Numeric(18, 0)), CAST(N'2020-02-06T00:00:00.000' AS DateTime))
INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (9, N'N-5', 92, NULL, CAST(N'2020-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (10, N'N-6', 74, CAST(5589987 AS Numeric(18, 0)), CAST(N'2020-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (11, N'N-7', 65, NULL, CAST(N'2020-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (12, N'N-8', 81, CAST(5907648 AS Numeric(18, 0)), CAST(N'2020-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DemoGasTurbine] ([ID], [AssetId], [HealthScore], [OpenWO], [LastMaintained]) VALUES (13, N'N-9', 98, NULL, CAST(N'2020-01-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DemoGasTurbine] OFF
GO
