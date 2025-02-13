/****** Object:  Table [dbo].[MetaTag]    Script Date: 8/9/2024 3:29:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTag](
	[MetaTag] [nvarchar](255) NOT NULL,
	[Label] [varchar](50) NOT NULL,
	[IsActive] [bit] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MetaTagType] [int] NOT NULL,
	[SortOrder] [int] NULL,
	[CompanyId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaTagType]    Script Date: 8/9/2024 3:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTagType](
	[MetaTagType] [varchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MetaTagType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaTagValue]    Script Date: 8/9/2024 3:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTagValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MetaTagId] [int] NULL,
	[MetaTagValue] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[SortOrder] [int] NULL,
	[MetaTag] [nvarchar](255) NULL,
	[MetaTagType] [int] NULL,
	[MetaTagSortOrder] [int] NULL,
	[MetaTagCompanyId] [int] NULL,
	[MetaTagIsActive] [bit] NULL,
 CONSTRAINT [PK_MetaTagLabel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecommendationMetaTags]    Script Date: 8/9/2024 3:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecommendationMetaTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecommendationId] [bigint] NULL,
	[MetaTagValueId] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_RecommendationData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MetaTag] ON 

INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH1', N'R01', 1, 1, 1, 10, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH2', N'R02', 1, 2, 1, 20, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH3', N'R03', 1, 3, 1, 30, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH4', N'R04', 1, 4, 1, 40, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH5', N'R05', 1, 5, 1, 50, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH6', N'R06', 1, 6, 1, 60, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH7', N'R07', 1, 7, 1, 70, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH8', N'R08', 1, 8, 1, 80, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH9', N'R09', 1, 9, 1, 90, 2)
INSERT [dbo].[MetaTag] ([MetaTag], [Label], [IsActive], [Id], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH10', N'R10', 1, 10, 1, 100, 2)
SET IDENTITY_INSERT [dbo].[MetaTag] OFF

SET IDENTITY_INSERT [dbo].[MetaTagType] ON 
INSERT [dbo].[MetaTagType] ([MetaTagType], [ID]) VALUES (N'Recommendation', 1)
SET IDENTITY_INSERT [dbo].[MetaTagType] OFF

SET IDENTITY_INSERT [dbo].[MetaTagValue] ON 
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (1, 1, N'Not Allocated', 1, NULL, N'PH1', 1, 10, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (2, 2, N'Not Allocated', 1, NULL, N'PH2', 1, 20, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (3, 3, N'Not Allocated', 1, NULL, N'PH3', 1, 30, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (4, 4, N'Not Allocated', 1, NULL, N'PH4', 1, 40, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (5, 5, N'Not Allocated', 1, NULL, N'PH5', 1, 50, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (6, 6, N'Not Allocated', 1, NULL, N'PH6', 1, 60, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (7, 7, N'Not Allocated', 1, NULL, N'PH7', 1, 70, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (8, 8, N'Not Allocated', 1, NULL, N'PH8', 1, 80, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (9, 9, N'Not Allocated', 1, NULL, N'PH9', 1, 90, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagId], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (10, 10, N'Not Allocated', 1, NULL, N'PH10', 1, 100, 2, 1)
SET IDENTITY_INSERT [dbo].[MetaTagValue] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_MetaTag]    Script Date: 8/9/2024 3:29:15 PM ******/
ALTER TABLE [dbo].[MetaTag] ADD  CONSTRAINT [UQ_MetaTag] UNIQUE NONCLUSTERED 
(
	[MetaTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_MetaTagLabel]    Script Date: 8/9/2024 3:29:15 PM ******/
ALTER TABLE [dbo].[MetaTagValue] ADD  CONSTRAINT [Unique_MetaTagLabel] UNIQUE NONCLUSTERED 
(
	[MetaTagId] ASC,
	[MetaTagValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MetaTagValue] ADD  CONSTRAINT [DF_MetaTag_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RecommendationMetaTags] ADD  CONSTRAINT [DF_RecommendationMetaTags_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MetaTagValue]  WITH NOCHECK ADD  CONSTRAINT [FK_MetaTagValue_MetaTag] FOREIGN KEY([MetaTagId])
REFERENCES [dbo].[MetaTag] ([Id])
GO
ALTER TABLE [dbo].[MetaTagValue] CHECK CONSTRAINT [FK_MetaTagValue_MetaTag]
GO
ALTER TABLE [dbo].[RecommendationMetaTags]  WITH CHECK ADD  CONSTRAINT [FK_MetaTagValueID] FOREIGN KEY([MetaTagValueId])
REFERENCES [dbo].[MetaTagValue] ([Id])
GO
ALTER TABLE [dbo].[RecommendationMetaTags] CHECK CONSTRAINT [FK_MetaTagValueID]
GO
ALTER TABLE [dbo].[RecommendationMetaTags]  WITH CHECK ADD  CONSTRAINT [FK_RecommendationId] FOREIGN KEY([RecommendationId])
REFERENCES [dbo].[Recommendation] ([Id])
GO
ALTER TABLE [dbo].[RecommendationMetaTags] CHECK CONSTRAINT [FK_RecommendationId]
GO
/****** Object:  Trigger [dbo].[TG_MetaTag]    Script Date: 8/9/2024 3:29:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [dbo].[TG_MetaTag]
   ON  [dbo].[MetaTag]
   AFTER INSERT
AS 
BEGIN
	

	INSERT INTO [dbo].[MetaTagValue]
           ([MetaTagID]
           ,[MetaTagValue]
           ,[IsActive]
		   ,MetaTagIsActive
		   )
     VALUES
           (
		   (SELECT ID From inserted)
           ,'Not Allocated'
           ,1
		   ,1
		   )

END
GO
ALTER TABLE [dbo].[MetaTag] ENABLE TRIGGER [TG_MetaTag]
GO
/****** Object:  Trigger [dbo].[TG_MetaTag_Update]    Script Date: 8/9/2024 3:29:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TG_MetaTag_Update]
   ON  [dbo].[MetaTag]
   AFTER UPDATE
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE tv
    SET tv.MetaTag = t.MetaTag,
        tv.MetaTagType = t.MetaTagType,
        tv.MetaTagSortOrder = t.SortOrder,
		tv.MetaTagCompanyId = t.CompanyId,
		tv.MetaTagIsActive = t.IsActive
    FROM MetaTagValue tv
    INNER JOIN Inserted i ON tv.MetaTagID = i.ID
    INNER JOIN MetaTag t ON t.ID = i.ID
END
GO
ALTER TABLE [dbo].[MetaTag] ENABLE TRIGGER [TG_MetaTag_Update]
GO
/****** Object:  Trigger [dbo].[TG_MetaTagValue]    Script Date: 8/9/2024 3:29:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[TG_MetaTagValue]
   ON  [dbo].[MetaTagValue]
   AFTER INSERT, UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @ID int = NULL, @MetaTagID int = NULL;

    SELECT @ID = ID, @MetaTagID = MetaTagID FROM Inserted

	IF (@ID IS NOT NULL AND @MetaTagID IS NOT NULL)
		UPDATE tv
		SET tv.MetaTag = t.MetaTag,
			tv.MetaTagType = t.MetaTagType,
			tv.MetaTagSortOrder = t.SortOrder,
			tv.MetaTagCompanyId = t.CompanyId,
			tv.MetaTagIsActive = t.IsActive
		FROM MetaTagValue tv
			INNER JOIN MetaTag t on tv.MetaTagID = t.ID
		WHERE tv.ID = @ID
		

END
GO
ALTER TABLE [dbo].[MetaTagValue] ENABLE TRIGGER [TG_MetaTagValue]
GO
