
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AA_Asset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Asset] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[Site] [varchar](100) NULL,
	[Area] [varchar](100) NULL,
	[System] [varchar](100) NULL,
	[Subsystem] [varchar](100) NULL,
	[Equipment] [varchar](100) NULL,
 CONSTRAINT [PK_AA_Asset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AA_AssetMetaTagMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssetId] [int] NULL,
	[MetaTagLabelId] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_AA_AssetMetaTagMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AA_MetaTag](
	[MetaTag] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MetaTag] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Unique_AA_MetaTag] UNIQUE NONCLUSTERED 
(
	[Label] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AA_MetaTagLabel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MetaTag] [nvarchar](50) NULL,
	[Label] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_AA_MetaTagLabel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [Unique_AA_MetaTagLabel] UNIQUE NONCLUSTERED 
(
	[MetaTag] ASC,
	[Label] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AA_AssetMetaTagMapping] ADD  CONSTRAINT [DF_AA_AssetMetaTagMapping_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AA_MetaTagLabel] ADD  CONSTRAINT [DF_AA_MetaTagLabel_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AA_AssetMetaTagMapping]  WITH CHECK ADD  CONSTRAINT [FK_AA_AssetMetaTagMapping_Asset] FOREIGN KEY([AssetId])
REFERENCES [dbo].[AA_Asset] ([Id])
GO
ALTER TABLE [dbo].[AA_AssetMetaTagMapping] CHECK CONSTRAINT [FK_AA_AssetMetaTagMapping_Asset]
GO
ALTER TABLE [dbo].[AA_AssetMetaTagMapping]  WITH CHECK ADD  CONSTRAINT [FK_AA_AssetMetaTagMapping_MetaTagLabel] FOREIGN KEY([MetaTagLabelId])
REFERENCES [dbo].[AA_MetaTagLabel] ([Id])
GO
ALTER TABLE [dbo].[AA_AssetMetaTagMapping] CHECK CONSTRAINT [FK_AA_AssetMetaTagMapping_MetaTagLabel]
GO
ALTER TABLE [dbo].[AA_MetaTagLabel]  WITH CHECK ADD  CONSTRAINT [FK_AA_MetaTagLabel_MetaTag] FOREIGN KEY([MetaTag])
REFERENCES [dbo].[AA_MetaTag] ([MetaTag])
GO
ALTER TABLE [dbo].[AA_MetaTagLabel] CHECK CONSTRAINT [FK_AA_MetaTagLabel_MetaTag]
GO
