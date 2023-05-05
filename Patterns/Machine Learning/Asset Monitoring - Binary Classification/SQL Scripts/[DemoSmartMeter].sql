SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoSmartMeter](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetId] [nvarchar](25) NOT NULL,
	[AssetType] [nvarchar](50) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Active] [bit] NULL
CONSTRAINT [PK_DemoSmartMeter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoSmartMeter] ON 
GO
INSERT [dbo].[DemoSmartMeter] ([ID], [AssetId], [AssetType], [Latitude], [Longitude], [Active]) 
VALUES (1, N'SM-156', N'Commercial', 41.06984, 16.12632, 1)
GO
SET IDENTITY_INSERT [dbo].[DemoSmartMeter] OFF
GO
