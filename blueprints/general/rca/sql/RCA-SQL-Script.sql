CREATE TABLE [dbo].[RCA_Action](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DetailID] [bigint] NULL,
	[ParticipantID] [bigint] NULL,
	[Title] [nvarchar](1000) NULL,
	[Description] [nvarchar](max) NULL,
	[DueDateUtc] [date] NULL,
	[CompletedDateUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
	[Completed] [bit] NULL,
	[RecomAlertId] [bigint] NULL,
 CONSTRAINT [PK_Action] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_Area](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FacilityID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[LastModifiedBy] [nvarchar](100) NULL,
	[LastModifiedDateUtc] [datetime] NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_AssetType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[LastModifiedBy] [nvarchar](100) NULL,
	[LastModifiedDateUtc] [datetime] NULL,
 CONSTRAINT [PK_PumpType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_Event](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DetailID] [bigint] NULL,
	[EventDatetimeUtc] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
	[Attachment] [varbinary](max) NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_Facility](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[LastModifiedBy] [nvarchar](100) NULL,
	[LastModifiedDateUtc] [datetime] NULL,
 CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_FailureAnalysis](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DetailID] [bigint] NULL,
	[FailureMechanismID] [int] NULL,
	[FailureMechanismCauseID] [int] NULL,
	[FailureMechanismReasonID] [int] NULL,
	[MechanismComments] [nvarchar](max) NULL,
	[FailureCauseID] [int] NULL,
	[FailureCauseReasonID] [int] NULL,
	[CauseComments] [nvarchar](max) NULL,
 CONSTRAINT [PK_FailureAnalysis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_FailureCause](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[AssetTypeID] [int] NULL,
	[Description] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[LastModifiedBy] [nvarchar](100) NULL,
	[LastModifiedDateUtc] [datetime] NULL,
 CONSTRAINT [PK_FailureCause] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_FailureCause_Default](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_FailureCause_Default] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_FailureDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetTypeID] [int] NULL,
	[AssetID] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[FailureDatetimeUtc] [datetime] NULL,
	[FacilityID] [int] NULL,
	[AreaID] [int] NULL,
	[Status] [nvarchar](20) NULL,
	[Safety] [money] NULL,
	[Operational] [money] NULL,
	[Environmental] [money] NULL,
	[Production] [money] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDateUtc] [datetime] NULL,
	[LastModifiedBy] [nvarchar](100) NULL,
	[LastModifiedDateUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
	[ClosureComments] [nvarchar](max) NULL,
 CONSTRAINT [PK_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_FailureMechanism](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[AssetTypeID] [int] NULL,
	[Description] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[LastModifiedBy] [nvarchar](100) NULL,
	[LastModifiedDateUtc] [datetime] NULL,
 CONSTRAINT [PK_FailureMechanism] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_FailureMechanism_Default](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_FailureMechanism_Default] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_FinancialImpact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DetailID] [bigint] NULL,
	[Safety] [money] NULL,
	[Operational] [money] NULL,
	[Environmental] [money] NULL,
	[Production] [money] NULL,
	[Total] [money] NULL,
 CONSTRAINT [PK_FinancialImpact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RCA_Participant](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DetailID] [bigint] NULL,
	[Name] [nvarchar](100) NULL,
	[JobTitle] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RCA_Area] ON 
GO
INSERT [dbo].[RCA_Area] ([ID], [FacilityID], [Name], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (1, 1, N'Area 1', 1, null, null)
GO
INSERT [dbo].[RCA_Area] ([ID], [FacilityID], [Name], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (2, 1, N'Area 2', 1, null, null)
GO
INSERT [dbo].[RCA_Area] ([ID], [FacilityID], [Name], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (3, 2, N'Area 1', 1, null, null)
GO
INSERT [dbo].[RCA_Area] ([ID], [FacilityID], [Name], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (4, 2, N'Area 2', 1, null, null)
GO
SET IDENTITY_INSERT [dbo].[RCA_Area] OFF
GO
SET IDENTITY_INSERT [dbo].[RCA_AssetType] ON 
GO
INSERT [dbo].[RCA_AssetType] ([ID], [Name], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (1, N'Centrifugal Pump', 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[RCA_AssetType] OFF
GO
SET IDENTITY_INSERT [dbo].[RCA_Facility] ON 
GO
INSERT [dbo].[RCA_Facility] ([ID], [Name], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (1, N'Facility 1', 1, null, null)
GO
INSERT [dbo].[RCA_Facility] ([ID], [Name], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (2, N'Facility 2', 1, null, null)
GO
INSERT [dbo].[RCA_Facility] ([ID], [Name], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (3, N'Facility 3', 1, null, null)
GO
SET IDENTITY_INSERT [dbo].[RCA_Facility] OFF
GO
SET IDENTITY_INSERT [dbo].[RCA_FailureCause] ON 
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (1, NULL, 1, N'Design-related causes', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (2, 1, 1, N'General', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (3, 1, 1, N'Improper capacity', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (4, 1, 1, N'Improper material', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (5, NULL, 1, N'Fabrication/installation-related causes', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (6, 5, 1, N'General', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (7, 5, 1, N'Fabrication failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (8, 5, 1, N'Installation failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (9, NULL, 1, N'Failure related to operation/maintenance', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (10, 9, 1, N'General', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (11, 9, 1, N'Off-design service', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (12, 9, 1, N'Operating error', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (13, 9, 1, N'Maintenance error', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (14, 9, 1, N'Expected wear and tear', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (15, NULL, 1, N'Failure related to management', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (16, 15, 1, N'General ', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (17, 15, 1, N'Documentation error', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (18, 15, 1, N'Management error', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (19, NULL, 1, N'Miscellaneous', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (20, 19, 1, N'General', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (21, 19, 1, N'No cause found', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (22, 19, 1, N'Common cause', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (23, 19, 1, N'Combined causes', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (24, 19, 1, N'Other unit/cascading failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (25, 19, 1, N'Other', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureCause] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (26, 19, 1, N'Unknown', 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[RCA_FailureCause] OFF
GO
SET IDENTITY_INSERT [dbo].[RCA_FailureCause_Default] ON 
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (1, NULL, N'Design-related causes')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (2, 1, N'General')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (3, 1, N'Improper capacity')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (4, 1, N'Improper material')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (5, NULL, N'Fabrication/installation-related causes')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (6, 5, N'General')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (7, 5, N'Fabrication failure')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (8, 5, N'Installation failure')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (9, NULL, N'Failure related to operation/maintenance')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (10, 9, N'General')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (11, 9, N'Off-design service')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (12, 9, N'Operating error')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (13, 9, N'Maintenance error')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (14, 9, N'Expected wear and tear')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (15, NULL, N'Failure related to management')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (16, 15, N'General ')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (17, 15, N'Documentation error')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (18, 15, N'Management error')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (19, NULL, N'Miscellaneous')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (20, 19, N'Miscellaneous-general')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (21, 19, N'No cause found')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (22, 19, N'Common cause')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (23, 19, N'Combined causes')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (24, 19, N'Other unit/cascading failure')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (25, 19, N'Other')
GO
INSERT [dbo].[RCA_FailureCause_Default] ([ID], [ParentID], [Description]) VALUES (26, 19, N'Unknown')
GO
SET IDENTITY_INSERT [dbo].[RCA_FailureCause_Default] OFF
GO
SET IDENTITY_INSERT [dbo].[RCA_FailureMechanism] ON 
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (1, NULL, 1, N'Mechanical Failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (2, 1, 1, N'Leakings', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (3, 2, 1, N'Volute damaged/cracked', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (4, 2, 1, N'Stuffing box failures', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (5, 2, 1, N'Flange gasket not sealing', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (6, 2, 1, N'Mechanical seal failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (7, 2, 1, N'Flange not sealing', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (8, 2, 1, N'Piping Damage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (9, 21, 1, N'Bearing Failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (10, 9, 1, N'Bearing Wear', 0, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (21, 1, 1, N'Vibration', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (22, 21, 1, N'Transmitted from nearby equipment', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (23, 21, 1, N'Misalignment', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (24, 21, 1, N'Vibration transferred to mechanical seal', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (25, 21, 1, N'Cavitation', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (26, 21, 1, N'Flow Induced Vibration', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (27, 21, 1, N'Foundation related issues', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (28, 1, 1, N'Clearance/alignment failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (29, 28, 1, N'Damaged/worn coupling components', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (30, 28, 1, N'Drive Shaft broken/bent', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (31, 28, 1, N'Impeller clearance incorrect', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (32, 28, 1, N'Excessive run out of shaft', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (33, 28, 1, N'Misalignment due to pipe strain', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (34, 28, 1, N'Misalignment due to foundation issue', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (35, 1, 1, N'Deformation', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (36, 35, 1, N'Broken impeller', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (37, 35, 1, N'Bent vanes', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (38, 35, 1, N'Drive shaft broken', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (39, 35, 1, N'Drive shaft bent', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (40, 35, 1, N'Excessive run out of shaft', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (41, 1, 1, N'Looseness', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (42, 41, 1, N'Loose on shaft', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (43, 41, 1, N'Assembled incorrectly', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (44, 41, 1, N'Nut under torqued', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (45, 41, 1, N'Excessive machine vibration', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (46, 41, 1, N'Hold-down bolts pulled out of concrete', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (47, 41, 1, N'Hold-down bolt nuts loose', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (48, 41, 1, N'Loose on foundation', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (49, 1, 1, N'Sticking', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (50, 49, 1, N'Jamming ', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (51, 49, 1, N'Seizing', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (52, NULL, 1, N'Material Failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (53, 52, 1, N'Cavitation', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (54, 53, 1, N'Flow instability', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (55, 53, 1, N'Blocked suction pipe', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (56, 53, 1, N'Partially closed valve in suction line', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (57, 53, 1, N'Insufficient NPSHa (NPSHa < NPSHr)', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (58, 53, 1, N'Liquid temperature rise', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (59, 53, 1, N'Suction line wear causing air leaks', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (60, 52, 1, N'Corrosion', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (61, 60, 1, N'De-alloying', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (62, 60, 1, N'Galvanic Corrosion', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (63, 60, 1, N'Stress corrosion cracking', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (64, 60, 1, N'Hydrogen Embrittlement', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (65, 60, 1, N'Microbiologically induced corrosion', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (66, 60, 1, N'Intergranular Corrosion', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (67, 52, 1, N'Erosion', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (68, 67, 1, N'Cavitation erosion', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (69, 67, 1, N'Adhesive wear', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (70, 67, 1, N'Fretting', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (71, 67, 1, N'Abrasive wear', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (72, 67, 1, N'Erosion due to solid particle impingement', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (73, 52, 1, N'Wear', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (74, 73, 1, N'Wear ring worn', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (75, 73, 1, N'Mechanical seal wear', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (76, 73, 1, N'Suction lining worn causing air leaks', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (77, 73, 1, N'Worn shaft', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (78, 73, 1, N'Worn bearing', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (79, 52, 1, N'Breakage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (80, 79, 1, N'Broken foundation', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (81, 79, 1, N'Impact by object', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (82, 79, 1, N'Pipe stress', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (83, 79, 1, N'Volute cracked', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (84, 79, 1, N'Broken frame', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (85, 52, 1, N'Fatigue', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (86, 85, 1, N'Drive coupling component broken', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (87, 85, 1, N'Drive shaft broken', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (88, 85, 1, N'Bearing damage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (89, 85, 1, N'Broken frame', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (90, 52, 1, N'Overheating', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (91, 90, 1, N'Worn/damaged bearings', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (92, 90, 1, N'Suction/discharge valve closed (pump ran dry)', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (93, 90, 1, N'Internal rubbing on internal parts', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (94, 90, 1, N'Poor lubrication', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (95, 90, 1, N'Suction/discharge line blockage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (96, 52, 1, N'Burst', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (97, 96, 1, N'Pump casing exploded', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (98, 96, 1, N'Mechanical seal explosion', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (99, NULL, 1, N'Electrical Failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (100, 99, 1, N'Short circuiting', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (101, 100, 1, N'Deterioration/faulty wire insulation', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (102, 100, 1, N'Improper installation', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (103, 100, 1, N'Earth/isolation fault', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (104, 100, 1, N'Loose wire connections', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (105, 99, 1, N'Open Circuit', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (106, 105, 1, N'Disconnection', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (107, 105, 1, N'Interruption', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (108, 105, 1, N'Broken wire/cable', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (109, 99, 1, N'No power/voltage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (110, 109, 1, N'Motor starter failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (111, 109, 1, N'Cable connection overheated', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (112, 109, 1, N'Cable burnt-out from overload', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (113, 109, 1, N'Cable mechanically damaged', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (114, 109, 1, N'Under-voltage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (115, 109, 1, N'Power provider interruption', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (116, 99, 1, N'Faulty power voltage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (117, 116, 1, N'Mechanical overload', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (118, 116, 1, N'Poor power conditioning', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (119, 116, 1, N'Voltage imbalance', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (120, 116, 1, N'Over-current draw', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (121, 99, 1, N'Other', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (122, 121, 1, N'Motor wired incorrectly', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (123, 121, 1, N'Shaft broken', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (124, 121, 1, N'Motor bearing failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (125, 121, 1, N'Stator damage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (126, 121, 1, N'Rotor bar failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (127, 121, 1, N'Rotor damage', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (128, 121, 1, N'Motor overheated', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (129, 121, 1, N'Locked rotor', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (130, NULL, 1, N'External Influences', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (131, 130, 1, N'Blockage/plugged', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (132, 131, 1, N'Excessive air/vapor trapped in liquid', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (133, 131, 1, N'Loss of prime', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (134, 131, 1, N'Suction/discharge valve shut', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (135, 131, 1, N'Suction/discharge piping blocked', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (136, 131, 1, N'Impeller damaged/warped/jammed', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (137, 131, 1, N'Supply tank/vessel low', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (138, 130, 1, N'Contamination', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (139, 138, 1, N'Mechanical seal face contaminated', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (140, 138, 1, N'Bearing contaminated', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (141, 138, 1, N'Upstream contamination', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (142, 130, 1, N'Miscellaneous external influences', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (143, 142, 1, N'Foreign objects', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (144, 142, 1, N'Environmental influences', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (145, 130, 1, N'Instrument Failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (146, 145, 1, N'Controls failure', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (147, 145, 1, N'No signal/indication/alarm', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (148, 145, 1, N'Faulty signal/indication/alarm', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (149, 145, 1, N'Out of adjustment/calibration', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (150, 145, 1, N'Software error', 1, NULL, NULL)
GO
INSERT [dbo].[RCA_FailureMechanism] ([ID], [ParentID], [AssetTypeID], [Description], [Active], [LastModifiedBy], [LastModifiedDateUtc]) VALUES (151, 145, 1, N'Common cause/common mode failure', 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[RCA_FailureMechanism] OFF
GO
SET IDENTITY_INSERT [dbo].[RCA_FailureMechanism_Default] ON 
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (1, NULL, N'Mechanical Failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (2, 1, N'Leakage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (3, 2, N'Volute damaged/cracked')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (4, 2, N'Stuffing box failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (5, 2, N'Flange gasket not sealing')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (6, 2, N'Mechanical seal failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (7, 2, N'Flange not sealing')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (8, 2, N'Piping Damage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (9, 1, N'Roller Bearing Failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (10, 9, N'Bearing Wear')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (11, 9, N'Bearing Overheated')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (12, 9, N'Brinell and False Brinell')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (13, 9, N'Creeping Slippage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (14, 9, N'Smearing rollers and raceways')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (15, 9, N'Surface Distress Cracks')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (16, 9, N'Raceway Spalling')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (17, 9, N'Seized Bearing')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (18, 9, N'Corrosion')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (19, 9, N'Cracked Rings')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (20, 9, N'Cage Damage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (21, 1, N'Vibration')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (22, 21, N'Transmitted from nearby equipment')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (23, 21, N'Misalignment')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (24, 21, N'Vibration transferred to mechanical seal')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (25, 21, N'Cavitation')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (26, 21, N'Flow Induced Vibration')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (27, 21, N'Foundation related issues')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (28, 1, N'Clearance/alignment failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (29, 28, N'Damaged/worn coupling components')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (30, 28, N'Drive Shaft broken/bent')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (31, 28, N'Impeller clearance incorrect')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (32, 28, N'Excessive run out of shaft')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (33, 28, N'Misalignment due to pipe strain')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (34, 28, N'Misalignment due to foundation issue')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (35, 1, N'Deformation')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (36, 35, N'Broken impeller')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (37, 35, N'Bent vanes')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (38, 35, N'Drive Shaft broken')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (39, 35, N'Drive Shaft bent')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (40, 35, N'Excessive run out of shaft')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (41, 1, N'Looseness')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (42, 41, N'Loose on shaft')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (43, 41, N'Assembled incorrectly')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (44, 41, N'Nut under torqued')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (45, 41, N'Excessive machine vibration')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (46, 41, N'Hold-down bolts pulled out of concrete')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (47, 41, N'Hold-down bolt nuts loose')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (48, 41, N'Loose on foundation')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (49, 1, N'Sticking')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (50, 49, N'Jamming ')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (51, 49, N'Seizing')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (52, NULL, N'Material Failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (53, 52, N'Cavitation')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (54, 53, N'Flow instability')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (55, 53, N'Blocked suction pipe')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (56, 53, N'Partially closed valve in suction line')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (57, 53, N'Insufficient NPSHa (NPSHa < NPSHr)')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (58, 53, N'Liquid temperature rise')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (59, 53, N'Suction line wear causing air leaks')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (60, 52, N'Corrosion')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (61, 60, N'De-alloying')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (62, 60, N'Galvanic Corrosion')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (63, 60, N'Stress corrosion cracking')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (64, 60, N'Hydrogen Embrittlement')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (65, 60, N'Microbiologically induced corrosion')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (66, 60, N'Intergranular Corrosion')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (67, 52, N'Erosion')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (68, 67, N'Cavitation erosion')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (69, 67, N'Adhesive wear')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (70, 67, N'Fretting')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (71, 67, N'Abrasive Wear')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (72, 67, N'Erosion due to solid particle impingement')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (73, 52, N'Wear')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (74, 73, N'Wear ring worn')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (75, 73, N'Mechanical seal wear')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (76, 73, N'Suction lining worn causing air leaks')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (77, 73, N'Worn shaft')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (78, 73, N'Worn bearing')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (79, 52, N'Breakage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (80, 79, N'Broken foundation')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (81, 79, N'Impact by object')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (82, 79, N'Pipe stress')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (83, 79, N'Volute cracked')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (84, 79, N'Broken frame')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (85, 52, N'Fatigue')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (86, 85, N'Drive coupling component broken')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (87, 85, N'Drive shaft broken')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (88, 85, N'Roller bearing damage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (89, 85, N'Broken Frame')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (90, 52, N'Overheating')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (91, 90, N'Worn/damaged bearings')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (92, 90, N'Suction/Discharge valve closed (pump ran dry)')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (93, 90, N'Internal rubbing on internal parts')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (94, 90, N'Poor lubrication')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (95, 90, N'Suction/discharge line blockage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (96, 52, N'Burst')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (97, 96, N'Pump casing exploded')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (98, 96, N'Mechanical seal explosion')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (99, NULL, N'Electrical Failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (100, 99, N'Short circuiting')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (101, 100, N'Deterioration/faulty wire insulation')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (102, 100, N'Improper installation')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (103, 100, N'Earth/isolation fault')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (104, 100, N'Loose wire connections')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (105, 99, N'Open Circuit')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (106, 105, N'Disconnection')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (107, 105, N'Interruption')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (108, 105, N'Broken wire/cable')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (109, 99, N'No power/voltage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (110, 109, N'Motor starter failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (111, 109, N'Cable connection overheated')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (112, 109, N'Cable burnt-out from overload')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (113, 109, N'Cable mechanically damaged')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (114, 109, N'Under-voltage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (115, 109, N'Power provider interruption')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (116, 99, N'Faulty power voltage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (117, 116, N'Mechanical overload')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (118, 116, N'Poor power conditioning')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (119, 116, N'Voltage imbalance')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (120, 116, N'Over-current Draw')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (121, 99, N'Other')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (122, 121, N'Motor wired incorrectly')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (123, 121, N'Shaft Broken')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (124, 121, N'Motor Bearing Failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (125, 121, N'Stator Damage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (126, 121, N'Rotor Bar Failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (127, 121, N'Rotor Damage')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (128, 121, N'Motor Overheated')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (129, 121, N'Locked Rotor')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (130, NULL, N'External Influences')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (131, 130, N'Blockage/plugged')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (132, 131, N'Excessive air/vapor trapped in liquid')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (133, 131, N'Loss of prime')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (134, 131, N'Suction/Discharge valve shut')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (135, 131, N'Suction/Discharge piping blocked')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (136, 131, N'Impeller damaged/warped/jammed')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (137, 131, N'Supply tank/vessel low')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (138, 130, N'Contamination')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (139, 138, N'Mechanical seal face contaminated')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (140, 138, N'Bearing Contaminated')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (141, 138, N'Upstream contamination')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (142, 130, N'Miscellaneous external influences')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (143, 142, N'Foreign objects')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (144, 142, N'Environmental influences')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (145, 130, N'Instrument Failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (146, 145, N'Control Failure')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (147, 145, N'No signal/indication/alarm')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (148, 145, N'Faulty signal/indication/alarm')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (149, 145, N'Out of adjustment/calibration')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (150, 145, N'Software error')
GO
INSERT [dbo].[RCA_FailureMechanism_Default] ([ID], [ParentID], [Description]) VALUES (151, 145, N'Common cause/Common mode failure')
GO
SET IDENTITY_INSERT [dbo].[RCA_FailureMechanism_Default] OFF
GO
ALTER TABLE [dbo].[RCA_Action] ADD  CONSTRAINT [DF_RCA_Action_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[RCA_Action] ADD  CONSTRAINT [DF_RCA_Action_Completed]  DEFAULT ((0)) FOR [Completed]
GO
ALTER TABLE [dbo].[RCA_Event] ADD  CONSTRAINT [DF_RCA_Event_Active]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[RCA_FailureDetail] ADD  CONSTRAINT [DF_FailureDetail_CreatedDateUtc]  DEFAULT (getutcdate()) FOR [CreatedDateUtc]
GO
ALTER TABLE [dbo].[RCA_FailureDetail] ADD  CONSTRAINT [DF_RCA_FailureDetail_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[RCA_Participant] ADD  CONSTRAINT [DF_RCA_Participant_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[RCA_Action]  WITH CHECK ADD  CONSTRAINT [FK_Action_FailureDetail] FOREIGN KEY([DetailID])
REFERENCES [dbo].[RCA_FailureDetail] ([ID])
GO
ALTER TABLE [dbo].[RCA_Action] CHECK CONSTRAINT [FK_Action_FailureDetail]
GO
ALTER TABLE [dbo].[RCA_Action]  WITH CHECK ADD  CONSTRAINT [FK_Action_Participant] FOREIGN KEY([ParticipantID])
REFERENCES [dbo].[RCA_Participant] ([ID])
GO
ALTER TABLE [dbo].[RCA_Action] CHECK CONSTRAINT [FK_Action_Participant]
GO
ALTER TABLE [dbo].[RCA_Area]  WITH CHECK ADD  CONSTRAINT [FK_Area_Facility] FOREIGN KEY([FacilityID])
REFERENCES [dbo].[RCA_Facility] ([ID])
GO
ALTER TABLE [dbo].[RCA_Area] CHECK CONSTRAINT [FK_Area_Facility]
GO
ALTER TABLE [dbo].[RCA_Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_FailureDetail] FOREIGN KEY([DetailID])
REFERENCES [dbo].[RCA_FailureDetail] ([ID])
GO
ALTER TABLE [dbo].[RCA_Event] CHECK CONSTRAINT [FK_Event_FailureDetail]
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_FailureAnalysis_FailureCause] FOREIGN KEY([FailureCauseID])
REFERENCES [dbo].[RCA_FailureCause] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis] CHECK CONSTRAINT [FK_FailureAnalysis_FailureCause]
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_FailureAnalysis_FailureCause1] FOREIGN KEY([FailureCauseReasonID])
REFERENCES [dbo].[RCA_FailureCause] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis] CHECK CONSTRAINT [FK_FailureAnalysis_FailureCause1]
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_FailureAnalysis_FailureDetail] FOREIGN KEY([DetailID])
REFERENCES [dbo].[RCA_FailureDetail] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis] CHECK CONSTRAINT [FK_FailureAnalysis_FailureDetail]
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_FailureAnalysis_FailureMechanism] FOREIGN KEY([FailureMechanismID])
REFERENCES [dbo].[RCA_FailureMechanism] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis] CHECK CONSTRAINT [FK_FailureAnalysis_FailureMechanism]
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_FailureAnalysis_FailureMechanism1] FOREIGN KEY([FailureMechanismCauseID])
REFERENCES [dbo].[RCA_FailureMechanism] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis] CHECK CONSTRAINT [FK_FailureAnalysis_FailureMechanism1]
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_FailureAnalysis_FailureMechanism2] FOREIGN KEY([FailureMechanismReasonID])
REFERENCES [dbo].[RCA_FailureMechanism] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureAnalysis] CHECK CONSTRAINT [FK_FailureAnalysis_FailureMechanism2]
GO
ALTER TABLE [dbo].[RCA_FailureCause]  WITH CHECK ADD  CONSTRAINT [FK_FailureCause_AssetType] FOREIGN KEY([AssetTypeID])
REFERENCES [dbo].[RCA_AssetType] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RCA_FailureCause] CHECK CONSTRAINT [FK_FailureCause_AssetType]
GO
ALTER TABLE [dbo].[RCA_FailureDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FailureDetail_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[RCA_Area] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureDetail] CHECK CONSTRAINT [FK_FailureDetail_Area]
GO
ALTER TABLE [dbo].[RCA_FailureDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FailureDetail_AssetType] FOREIGN KEY([AssetTypeID])
REFERENCES [dbo].[RCA_AssetType] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureDetail] CHECK CONSTRAINT [FK_FailureDetail_AssetType]
GO
ALTER TABLE [dbo].[RCA_FailureDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_FailureDetail_Facility] FOREIGN KEY([FacilityID])
REFERENCES [dbo].[RCA_Facility] ([ID])
GO
ALTER TABLE [dbo].[RCA_FailureDetail] CHECK CONSTRAINT [FK_FailureDetail_Facility]
GO
ALTER TABLE [dbo].[RCA_FailureMechanism]  WITH CHECK ADD  CONSTRAINT [FK_FailureMechanism_AssetType] FOREIGN KEY([AssetTypeID])
REFERENCES [dbo].[RCA_AssetType] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RCA_FailureMechanism] CHECK CONSTRAINT [FK_FailureMechanism_AssetType]
GO
ALTER TABLE [dbo].[RCA_FinancialImpact]  WITH CHECK ADD  CONSTRAINT [FK_FinancialImpact_FailureDetail] FOREIGN KEY([DetailID])
REFERENCES [dbo].[RCA_FailureDetail] ([ID])
GO
ALTER TABLE [dbo].[RCA_FinancialImpact] CHECK CONSTRAINT [FK_FinancialImpact_FailureDetail]
GO
ALTER TABLE [dbo].[RCA_Participant]  WITH CHECK ADD  CONSTRAINT [FK_Participant_FailureDetail] FOREIGN KEY([DetailID])
REFERENCES [dbo].[RCA_FailureDetail] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RCA_Participant] CHECK CONSTRAINT [FK_Participant_FailureDetail]
GO
CREATE PROCEDURE [dbo].[sp_RCA_AssetType_New]
    @AssetType nvarchar(100),
    @CreatedBy nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @AssetTypeID int;
    DECLARE @ID int, @ParentID int, @Desc nvarchar(200), @PrevID int, @PrevParentID int, @NewParentID int, @NewParentID2 int;
    DECLARE @fmdata TABLE (ID int, ParentID int, [Desc] nvarchar(200));
    DECLARE @fcdata TABLE (ID int, ParentID int, [Desc] nvarchar(200));
    DECLARE @SuccessMsg nvarchar(max), @FailureMsg nvarchar(max);

    IF (@AssetType IS NULL OR TRIM(@AssetType) = '')
        BEGIN
            SET @SuccessMsg = '';
            SET @FailureMsg = '';
            SELECT 'AssetTypeID' = NULL, 'SuccessMsg' = @SuccessMsg, 'FailureMsg' = @FailureMsg;
            RETURN -1;
        END

    ELSE IF EXISTS (SELECT * FROM [dbo].[RCA_AssetType] WHERE [Name] = TRIM(@AssetType))
        BEGIN
            SET @SuccessMsg = '';
            SET @FailureMsg = 'Asset Type ' + @AssetType + ' already exists.';
            SELECT 'AssetTypeID' = NULL, 'SuccessMsg' = @SuccessMsg, 'FailureMsg' = @FailureMsg;
            RETURN -1;
        END

    ELSE
        BEGIN

            INSERT INTO [dbo].[RCA_AssetType] (Name, Active, LastModifiedBy, LastModifiedDateUtc) VALUES (@AssetType, 1, @CreatedBy, GETUTCDATE());
            SET @AssetTypeID = @@IDENTITY;
    
            WITH CTE AS (
                SELECT ID, ParentID, Description
                FROM RCA_FailureMechanism_Default
                WHERE ParentID IS NULL
            UNION ALL
                SELECT t.ID, t.ParentID, t.Description
                FROM RCA_FailureMechanism_Default t
                INNER JOIN CTE c ON t.ParentID = c.ID
            )   
            INSERT INTO @fmdata (ID, ParentID, [Desc])
            SELECT ID, ParentID, Description FROM CTE
            ORDER BY ParentID;

            DECLARE fm_cursor CURSOR FOR
            SELECT * FROM @fmdata WHERE ParentID IS NULL ORDER BY ID, ParentID

            OPEN fm_cursor  
            FETCH NEXT FROM fm_cursor INTO @ID, @ParentID, @Desc

            WHILE @@FETCH_STATUS = 0  
            BEGIN  
                INSERT INTO [dbo].[RCA_FailureMechanism] (AssetTypeID, ParentID, Description, Active) VALUES (@AssetTypeID, @ParentID, @Desc, 1);
                SET @NewParentID = @@IDENTITY;

                DECLARE fm_cursor2 CURSOR FOR
                SELECT * FROM @fmdata WHERE ParentID = @ID ORDER BY ID, ParentID

                OPEN fm_cursor2  
                FETCH NEXT FROM fm_cursor2 INTO @ID, @ParentID, @Desc

                WHILE @@FETCH_STATUS = 0  
                BEGIN                             
                    INSERT INTO [dbo].[RCA_FailureMechanism] (AssetTypeID, ParentID, Description, Active) VALUES (@AssetTypeID, @NewParentID, @Desc, 1);
                    SET @NewParentID2 = @@IDENTITY;

                    DECLARE fm_cursor3 CURSOR FOR
                    SELECT * FROM @fmdata WHERE ParentID = @ID ORDER BY ID, ParentID

                    OPEN fm_cursor3  
                    FETCH NEXT FROM fm_cursor3 INTO @ID, @ParentID, @Desc

                    print cast(@ID as nvarchar(10)) + '-' + cast(ISNULL(@ParentID,0) as nvarchar(10)) + '-' + @Desc

                    WHILE @@FETCH_STATUS = 0  
                    BEGIN 
                        INSERT INTO [dbo].[RCA_FailureMechanism] (AssetTypeID, ParentID, Description, Active) VALUES (@AssetTypeID, @NewParentID2, @Desc, 1);

                        FETCH NEXT FROM fm_cursor3 INTO @ID, @ParentID, @Desc
                    END 

                    CLOSE fm_cursor3  
                    DEALLOCATE fm_cursor3 

                    FETCH NEXT FROM fm_cursor2 INTO @ID, @ParentID, @Desc
                END 

                CLOSE fm_cursor2  
                DEALLOCATE fm_cursor2 

                FETCH NEXT FROM fm_cursor INTO @ID, @ParentID, @Desc
            END 

            CLOSE fm_cursor  
            DEALLOCATE fm_cursor;


            WITH CTE AS (
                SELECT ID, ParentID, Description
                FROM RCA_FailureCause_Default
                WHERE ParentID IS NULL
            UNION ALL
                SELECT t.ID, t.ParentID, t.Description
                FROM RCA_FailureCause_Default t
                INNER JOIN CTE c ON t.ParentID = c.ID
            )   
            INSERT INTO @fcdata (ID, ParentID, [Desc])
            SELECT ID, ParentID, Description FROM CTE
            ORDER BY ParentID;

            DECLARE fc_cursor CURSOR FOR
            SELECT * FROM @fcdata WHERE ParentID IS NULL ORDER BY ID, ParentID

            OPEN fc_cursor  
            FETCH NEXT FROM fc_cursor INTO @ID, @ParentID, @Desc

            WHILE @@FETCH_STATUS = 0  
            BEGIN  
                INSERT INTO [dbo].[RCA_FailureCause] (AssetTypeID, ParentID, Description, Active) VALUES (@AssetTypeID, @ParentID, @Desc, 1);
                SET @NewParentID = @@IDENTITY;

                DECLARE fc_cursor2 CURSOR FOR
                SELECT * FROM @fcdata WHERE ParentID = @ID ORDER BY ID, ParentID

                OPEN fc_cursor2  
                FETCH NEXT FROM fc_cursor2 INTO @ID, @ParentID, @Desc

                WHILE @@FETCH_STATUS = 0  
                BEGIN         
                    INSERT INTO [dbo].[RCA_FailureCause] (AssetTypeID, ParentID, Description, Active) VALUES (@AssetTypeID, @NewParentID, @Desc, 1);

                    FETCH NEXT FROM fc_cursor2 INTO @ID, @ParentID, @Desc
                END 

                CLOSE fc_cursor2  
                DEALLOCATE fc_cursor2 

                FETCH NEXT FROM fc_cursor INTO @ID, @ParentID, @Desc
            END 

            CLOSE fc_cursor  
            DEALLOCATE fc_cursor 

            SET @SuccessMsg = 'Asset Type ' + @AssetType + ' created successfully.';
            SET @FailureMsg = '';
            SELECT 'AssetTypeID' = @AssetTypeID, 'SuccessMsg' = @SuccessMsg, 'FailureMsg' = @FailureMsg;

        END

END
GO
