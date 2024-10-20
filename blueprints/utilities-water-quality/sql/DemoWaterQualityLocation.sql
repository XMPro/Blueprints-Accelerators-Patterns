/****** Object:  Table [dbo].[DemoWaterQualityLocation]    Script Date: 28/02/2024 11:13:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoWaterQualityLocation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stationId] [nchar](100) NULL,
	[name] [nchar](100) NULL,
	[location] [nchar](100) NULL,
	[latitiude] [float] NULL,
	[longitude] [float] NULL,
 CONSTRAINT [PK_DemoWaterQualityLocation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoWaterQualityLocation] ON 

INSERT [dbo].[DemoWaterQualityLocation] ([id], [stationId], [name], [location], [latitiude], [longitude]) VALUES (1, N'Station A                                                                                           ', N'Garsfontein Reservoir                                                                               ', N'56 Seshego St, Moreleta Park, Pretoria, 0044, South Africa                                          ', -25.87005, 28.26768)
INSERT [dbo].[DemoWaterQualityLocation] ([id], [stationId], [name], [location], [latitiude], [longitude]) VALUES (2, N'Station B                                                                                           ', N'Rietvallei Reservoir                                                                                ', N'SA                                                                                                  ', -25.8103, 28.29102)
INSERT [dbo].[DemoWaterQualityLocation] ([id], [stationId], [name], [location], [latitiude], [longitude]) VALUES (3, N'Station C                                                                                           ', N'Pecanwood Reservoir                                                                                 ', N'SA                                                                                                  ', -25.761714, 27.85385)
SET IDENTITY_INSERT [dbo].[DemoWaterQualityLocation] OFF
GO
