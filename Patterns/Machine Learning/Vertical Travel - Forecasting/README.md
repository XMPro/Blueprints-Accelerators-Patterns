<!-- omit in toc -->
# <img alternative="XMPro Logo X" width="30px" src="https://xmks.s3.amazonaws.com/2020/X-Blue.png#gh-light-mode-only"> Forecasting - Vertical Travel 

[◄ Patterns](https://github.com/XMPro/Blueprints-Accelerators-Patterns/tree/master/Patterns)

[◄ Blueprints, Accelerators & Patterns](https://github.com/XMPro/Blueprints-Accelerators-Patterns)

# Table of contents
1. [Files](#files)
2. [Description](#description)
3. [How To Import](#how-to-import)

# Files
<table>
<tr><td width="240px"> Type </td><td width="500px"> Name </td></tr>
<tr>
<td>SQL Scripts</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Machine%20Learning/Vertical%20Travel%20-%20Forecasting/SQL%20Scripts/%5BDemoCrusher%5D.sql" target="_blank">DemoCrusher</td>
</tr>
<tr>
<td>Data Stream</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Machine%20Learning/Vertical%20Travel%20-%20Forecasting/Vertical%20Travel%20Forecasting.xuc" target="_blank">Vertical Travel Forecasting</a></td>
</tr>
</table>

# Description
## SQL Scripts

<details>
<summary>DemoCrusher (Data for a crusher asset)</summary>

```
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoCrusher](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetId] [nvarchar](25) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Live] [bit] NULL,
	[HealthScore] [nchar](10) NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_DemoCrusher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoCrusher] ON 
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (2, N'SC1', N'Crusher 1', 50.770697265309941, -105.34947817747876, 1, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (3, N'SC2', N'Crusher 2', 50.770697265309941, -105.34947817747876, 1, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (4, N'SC3', N'Crusher 3', 50.770697265309941, -105.34947817747876, 1, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (5, N'SC4', N'Crusher 4', 50.770697265309941, -105.34947817747876, 0, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (6, N'SC5', N'Crusher 5', 50.770697265309941, -105.34947817747876, 0, N'90        ', N'Canada')
GO
INSERT [dbo].[DemoCrusher] ([ID], [AssetId], [Name], [Latitude], [Longitude], [Live], [HealthScore], [Location]) VALUES (7, N'SC6', N'Crusher 6', 50.770697265309941, -105.34947817747876, 1, N'90        ', N'Canada')
GO
SET IDENTITY_INSERT [dbo].[DemoCrusher] OFF
GO
```

</details>

##

## Data Stream

Prediction of liner wear for a crusher asset.

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Configured Data Stream](Images/DataStream_01.png)
</details>
The data stream is configured using: 

* <a href="https://xmpro.gitbook.io/csv/" target="_blank"><i>CSV</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - Simulate data from CSV file
* <a href="https://xmpro.gitbook.io/azure-sql/" target="_blank"><i>SQL</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - read consumer reference data from SQL
* <a href="https://xmpro.gitbook.io/broadcast/" target="_blank"><i>Broadcast</i></a> - Broadcast data to other agents
* <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank"><i>XMPro Apps</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agent</a>
  * *Post Telemetry* with a cache of 1 for live data
  * *Pass to Chart* with a cache of 95 for historical data
* <a href="https://xmpro.gitbook.io/join/" target="_blank"><i>Join</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Contextualize data with data from SQL
* <a href="https://xmpro.gitbook.io/forecasting/" target="_blank"><i>Regression</i></a> <a href="https://documentation.xmpro.com/concepts/agent#ai-and-machine-learning" target="_blank">AI and machine learning agent</a> - Execute forecasting model on data
* <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank"><i>Run Recommendation</i></a> <a href="https://documentation.xmpro.com/concepts/agent#recommendation" target="_blank">agent</a> - Run Recommendation Rules

##

# How to Import
Import Password: `Dem0nstr@t1on`, for instructions on how to import <a href="https://documentation.xmpro.com/how-tos/import-export-and-clone#importing">click here</a>.

Create/confirm the following variables
  * App Designer URL
  * App Designer Integration Key (Encrypted)
  * SQL Server
  * SQL Username
  * SQL Password (Encrypted)

## 1. Run SQL Scripts

	* Execute the scripts in SQL Server
	* Ensure the data is successfully loaded into the database


## 2. Import the Data Stream

    * Assign Access to others as required
	
	* Edit the XMPro agents and ensure the URL and Integration Key are selected
	* Edit the Recommendation agent and ensure the URL and Integration Key are selected
	* Edit the Azure SQL agent and ensure the Server Instance, Username and Password fields are filled in correctly

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the Post telemetry agents

<details>
  <summary markdown="span">Expand to view screenshot of a successfully running data stream with live data</summary>

![Running Data Stream](Images/DataStream_Running_01.png) 
</details>


## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)