
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Asset] [varchar](50) NOT NULL,
	[Description] [varchar](max) NULL,
	[IsActiveInApp] [bit] NULL,
	[Criticality] [int] NULL,
	[IsActiveInRec] [bit] NULL,
	[CompanyId] [int] NULL,
 CONSTRAINT [PK_AA_Asset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetMetaTagMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssetId] [int] NULL,
	[MetaTagValueId] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_AssetMetaTagMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTag](
	[MetaTag] [nvarchar](255) NOT NULL,
	[Label] [varchar](50) NOT NULL,
	[IsActive] [bit] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MetaTagType] [int] NOT NULL,
	[SortOrder] [int] NULL,
	[CompanyId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTagValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MetaTagID] [int] NULL,
	[MetaTagValue] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[SortOrder] [int] NULL,
	[MetaTag] [nvarchar](max) NULL,
	[MetaTagType] [int] NULL,
	[MetaTagSortOrder] [int] NULL,
	[MetaTagCompanyId] [int] NULL,
	[MetaTagIsActive] [bit] NULL,
 CONSTRAINT [PK_MetaTagLabel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[MetaTag] ON 

INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'Equipment', N'A05', 1, 1, 1, 50, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH2', N'A07', 1, 2, 1, 70, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'Subsystem', N'A04', 1, 3, 1, 40, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'System', N'A03', 1, 4, 1, 30, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'Area', N'A02', 1, 5, 1, 20, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH4', N'A09', 1, 6, 1, 90, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH5', N'A10', 1, 7, 1, 100, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH3', N'A08', 1, 8, 1, 80, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'PH1', N'A06', 1, 9, 1, 60, 2)
INSERT [dbo].[AM_MetaTag] ([MetaTag], [Label], [IsActive], [ID], [MetaTagType], [SortOrder], [CompanyId]) VALUES (N'Site', N'A01', 1, 10, 1, 10, 2)
SET IDENTITY_INSERT [dbo].[MetaTag] OFF
GO
SET IDENTITY_INSERT [dbo].[MetaTagType] ON 

INSERT [dbo].[MetaTagType] ([MetaTagType], [ID]) VALUES (N'Asset', 1)
SET IDENTITY_INSERT [dbo].[MetaTagType] OFF
GO
SET IDENTITY_INSERT [dbo].[MetaTagValue] ON 

INSERT [dbo].[MetaTagValue] ([Id], [MetaTagID], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (22, 1, N'Not Allocated', 1, NULL, N'Equipment', 1, 50, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagID], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (24, 3, N'Not Allocated', 1, NULL, N'Subsystem', 1, 40, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagID], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (25, 4, N'Not Allocated', 1, NULL, N'System', 1, 30, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagID], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (26, 5, N'Not Allocated', 1, NULL, N'Area', 1, 20, 2, 1)
INSERT [dbo].[MetaTagValue] ([Id], [MetaTagID], [MetaTagValue], [IsActive], [SortOrder], [MetaTag], [MetaTagType], [MetaTagSortOrder], [MetaTagCompanyId], [MetaTagIsActive]) VALUES (31, 10, N'Not Allocated', 1, NULL, N'Site', 1, 10, 2, 1)
SET IDENTITY_INSERT [dbo].[MetaTagValue] OFF
GO
SET ANSI_PADDING ON
GO


ALTER TABLE [dbo].[MetaTag] ADD  CONSTRAINT [UQ_MetaTag] UNIQUE NONCLUSTERED 
(
	[MetaTag] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO



ALTER TABLE [dbo].[MetaTagValue] ADD  CONSTRAINT [Unique_MetaTagLabel] UNIQUE NONCLUSTERED 
(
	[MetaTagID] ASC,
	[MetaTagValue] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO



CREATE NONCLUSTERED INDEX [idx_MetaTagValue_Id_MetaTagID] ON [dbo].[MetaTagValue]
(
	[Id] ASC,
	[MetaTagID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssetMetaTagMapping] ADD  CONSTRAINT [DF_AA_AssetMetaTagMapping_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MetaTagValue] ADD  CONSTRAINT [DF_AA_MetaTagLabel_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AssetMetaTagMapping]  WITH CHECK ADD  CONSTRAINT [FK_AssetID] FOREIGN KEY([AssetId])
REFERENCES [dbo].[AssetMaster] ([Id])
GO
ALTER TABLE [dbo].[AssetMetaTagMapping] CHECK CONSTRAINT [FK_AssetID]
GO
ALTER TABLE [dbo].[AssetMetaTagMapping]  WITH CHECK ADD  CONSTRAINT [FK_AssetMetaTagValue_MetaTag] FOREIGN KEY([MetaTagValueId])
REFERENCES [dbo].[MetaTagValue] ([Id])
GO
ALTER TABLE [dbo].[AssetMetaTagMapping] CHECK CONSTRAINT [FK_AssetMetaTagValue_MetaTag]
GO
ALTER TABLE [dbo].[MetaTagValue]  WITH NOCHECK ADD  CONSTRAINT [FK_MetaTagValue_MetaTag] FOREIGN KEY([MetaTagID])
REFERENCES [dbo].[MetaTag] ([ID])
GO
ALTER TABLE [dbo].[MetaTagValue] CHECK CONSTRAINT [FK_MetaTagValue_MetaTag]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TG_AA_Asset_Delete]
   ON  [dbo].[AssetMaster]
   AFTER DELETE
AS 
BEGIN
    SET NOCOUNT ON;

    DELETE FROM [dbo].[AssetMetaTagMapping]
    WHERE Id IN (SELECT Id FROM deleted);

END
GO
ALTER TABLE [dbo].[AssetMaster] ENABLE TRIGGER [TG_AA_Asset_Delete]
GO



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
           ,[IsActive])
     VALUES
           (
		   (SELECT ID From inserted)
           ,'Not Allocated'
           ,1)

END
GO
ALTER TABLE [dbo].[MetaTag] ENABLE TRIGGER [TG_MetaTag]
GO



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
