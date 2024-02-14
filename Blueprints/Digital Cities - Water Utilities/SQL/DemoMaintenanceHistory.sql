/****** Object:  Table [dbo].[DemoMaintenanceHistory]    Script Date: 10/01/2024 9:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoMaintenanceHistory](
	[ID] [int] NOT NULL,
	[AssetName] [nvarchar](250) NOT NULL,
	[AssetCondition] [nvarchar](250) NULL,
	[MaintenancePerson] [nvarchar](200) NULL,
	[CurrentStatus] [nvarchar](100) NULL,
	[CompletionDate] [datetime] NULL,
	[CompletionStatus] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[t_stamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (2, N'P79', N'Complete Failure', N'David Brain', N'Fixed', CAST(N'2023-02-12T00:00:00.000' AS DateTime), N'Complete', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (3, N'P80', N'Complete Failure', N'Mark twain', N'Pending', CAST(N'2023-02-11T00:00:00.000' AS DateTime), N'Hold', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (4, N'P81', N'Partial Failure', N'Gail', N'Fixed', CAST(N'2023-02-13T00:00:00.000' AS DateTime), N'Complete', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (5, N'P82', N'Partial Failure', N'Gail', N'Fixed', CAST(N'2023-02-14T00:00:00.000' AS DateTime), N'Complete', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (6, N'P83', N'Partial Failure', N'Gail', N'Fixed', CAST(N'2023-02-11T00:00:00.000' AS DateTime), N'Complete', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (7, N'P84', N'Partial Failure', N'Gail', N'Fixed', CAST(N'2023-02-11T00:00:00.000' AS DateTime), N'Complete', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (8, N'M-0019', N'Partial Failure', N'Malia', N'Fixed', CAST(N'2023-02-15T00:00:00.000' AS DateTime), N'Complete', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (9, N'M-0020', N'Partial Failure', N'Malia', N'Pending', CAST(N'2023-02-16T00:00:00.000' AS DateTime), N'Hold', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO
INSERT [dbo].[DemoMaintenanceHistory] ([ID], [AssetName], [AssetCondition], [MaintenancePerson], [CurrentStatus], [CompletionDate], [CompletionStatus], [CreatedBy], [t_stamp]) VALUES (1, N'P78', N'Complete Failure', N'David Brain', N'Fixed', CAST(N'2023-02-11T00:00:00.000' AS DateTime), N'Complete', NULL, CAST(N'2023-03-07T16:27:31.050' AS DateTime))
GO