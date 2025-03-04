/****** Object:  Table [dbo].[DemoWaterQuality]    Script Date: 28/02/2024 11:13:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoWaterQuality](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stationId] [nvarchar](max) NOT NULL,
	[turbidityMin] [float] NULL,
	[turbidityMax] [float] NULL,
	[turbidityTime] [int] NULL,
	[pHMin] [float] NULL,
	[pHMax] [float] NULL,
	[pHTime] [int] NULL,
	[conductivityMin] [float] NULL,
	[conductivityMax] [float] NULL,
	[conductivityTime] [int] NULL,
	[dissolvedOxygenMin] [float] NULL,
	[dissolvedOxygenMax] [float] NULL,
	[dissolvedOxygenTime] [int] NULL,
	[temperatureMin] [float] NULL,
	[temperatureMax] [float] NULL,
	[temperatureTime] [int] NULL,
	[ORPMin] [float] NULL,
	[ORPMax] [float] NULL,
	[ORPTime] [int] NULL,
 CONSTRAINT [PK_DemoWaterQuality] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoWaterQuality] ON 

INSERT [dbo].[DemoWaterQuality] ([id], [stationId], [turbidityMin], [turbidityMax], [turbidityTime], [pHMin], [pHMax], [pHTime], [conductivityMin], [conductivityMax], [conductivityTime], [dissolvedOxygenMin], [dissolvedOxygenMax], [dissolvedOxygenTime], [temperatureMin], [temperatureMax], [temperatureTime], [ORPMin], [ORPMax], [ORPTime]) VALUES (1, N'Station A', 1, 4, 2, 3, 8, 2, 261, 1247, 2, 5, 14, 2, 9, 35, 2, -750, 593, 2)
INSERT [dbo].[DemoWaterQuality] ([id], [stationId], [turbidityMin], [turbidityMax], [turbidityTime], [pHMin], [pHMax], [pHTime], [conductivityMin], [conductivityMax], [conductivityTime], [dissolvedOxygenMin], [dissolvedOxygenMax], [dissolvedOxygenTime], [temperatureMin], [temperatureMax], [temperatureTime], [ORPMin], [ORPMax], [ORPTime]) VALUES (2, N'Station B', 3, 5, 2, 4, 9, 2, 411, 1721, 2, 2, 10, 2, 9, 25, 2, -357, 10, 2)
INSERT [dbo].[DemoWaterQuality] ([id], [stationId], [turbidityMin], [turbidityMax], [turbidityTime], [pHMin], [pHMax], [pHTime], [conductivityMin], [conductivityMax], [conductivityTime], [dissolvedOxygenMin], [dissolvedOxygenMax], [dissolvedOxygenTime], [temperatureMin], [temperatureMax], [temperatureTime], [ORPMin], [ORPMax], [ORPTime]) VALUES (3, N'Station C', 2, 4, NULL, 5, 9, 2, 621, 1349, 2, 2, 7, 2, 0, 2, 2, -186, 341, NULL)
SET IDENTITY_INSERT [dbo].[DemoWaterQuality] OFF
GO
