/****** Object:  Table [dbo].[RARecommendationData]    Script Date: 07/05/2024 9:29:30 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RARecommendationData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RecommendationId] [int] NULL,
	[RCodeValueId] [int] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK__RARecomm__3213E83F7F86E7F8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RARecommendationData] ADD  CONSTRAINT [DF_RARecommendationData_isActive_1]  DEFAULT ((1)) FOR [isActive]
GO

