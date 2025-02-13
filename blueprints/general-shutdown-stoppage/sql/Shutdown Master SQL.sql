/****** Cannot script Unresolved Entities : Server[@Name='xcs-dev-sqlserver-a43zk3ahnzkrm']/Database[@Name='MD']/UnresolvedEntity[@Name='inserted'] ******/
GO
/****** Object:  Table [dbo].[ShutdownAssets]    Script Date: 8/14/2024 1:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShutdownAssets](
	[AssetID] [varchar](max) NULL,
	[ShutdownID] [int] NOT NULL,
 CONSTRAINT [PK_ShutdownAssets] PRIMARY KEY CLUSTERED 
(
	[ShutdownID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShutdownMaster]    Script Date: 8/14/2024 1:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShutdownMaster](
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](max) NULL,
	[Site] [varchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[ModifiedStartTime] [datetime] NULL,
	[ModifiedEndTime] [datetime] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShutdownNotificationList]    Script Date: 8/14/2024 1:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShutdownNotificationList](
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Site] [varchar](50) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ShutdownAssets]  WITH CHECK ADD  CONSTRAINT [FK_ShutdownAssets_ShutdownMaster] FOREIGN KEY([ShutdownID])
REFERENCES [dbo].[ShutdownMaster] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShutdownAssets] CHECK CONSTRAINT [FK_ShutdownAssets_ShutdownMaster]
GO
/****** Object:  Trigger [dbo].[TG_ShutdownMasterAsset]    Script Date: 8/14/2024 1:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TG_ShutdownMasterAsset]
   ON  [dbo].[ShutdownMaster]
   AFTER INSERT
AS 
BEGIN
    -- Insert into ShutdownAssets
    INSERT INTO [dbo].[ShutdownAssets] (AssetID, ShutdownID)
    SELECT NULL, ID
    FROM inserted;
END
GO
ALTER TABLE [dbo].[ShutdownMaster] ENABLE TRIGGER [TG_ShutdownMasterAsset]
GO
