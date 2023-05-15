<!-- omit in toc -->
# <img alternative="XMPro Logo X" width="30px" src="https://xmks.s3.amazonaws.com/2020/X-Blue.png#gh-light-mode-only"> Alternative Energy - Renewable View 

[◄ Accelerators](https://github.com/XMPro/Blueprints-Accelerators-Patterns/tree/master/Accelerators)

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
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable%20View/SQL%20Scripts/%5BDemoAlternativeEnergyAsset%5D.sql" target="_blank">DemoAlternativeEnergyAsset</a><br /><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable%20View/SQL%20Scripts/%5BDemoWorkManagementWindTurbine%5D.sql" target="_blank">DemoWorkManagementWindTurbine</a></td>
</tr>
<tr>
<td>Data Stream</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable%20View/Data%20Stream/Renewable%20Condition%20Monitoring.xuc" target="_blank">Renewable Condition Monitoring</a></td>
</tr>
<tr>
<td>Recommendation</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable%20View/Recommendation/Gearbox%20Oil.xr" target="_blank">Gearbox Oil</a></td>
</tr>
<tr>
<td>Application</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable%20View/Application/Renewables%20View.xapp" target="_blank">Renewables View</a></td>
</tr>
</table>

# Description
## SQL Scripts

<details>
<summary>DemoAlternativeEnergyAsset (A list of assets, their location and other details)</summary>

```
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoAlternativeEnergyAsset](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetNo] [nvarchar](25) NOT NULL,
	[AssetType] [nvarchar](50) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Active] [bit] NULL,
	[Criticality] [nchar](10) NULL,
	[RiskScore] [decimal](12, 0) NULL,
	[Location] [nvarchar](50) NULL,
	[AlertColor] [nchar](10) NULL,
 CONSTRAINT [PK_DemoAlternativeEnergyAsset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoAlternativeEnergyAsset] ON 
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (1, N'MM01', N'Wind Farm', 41.06984, 16.12632, 1, N'High', CAST(32 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (2, N'MMWT001', N'Wind Turbine', 41.07063461, 16.12720363, 1, N'High', CAST(44 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (3, N'MMWT002', N'Wind Turbine', 41.07063461, 16.12720363, 1, N'High', CAST(14 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (4, N'MMWT003', N'Wind Turbine', 41.07063461, 16.12789363, 1, N'High', CAST(9 AS Decimal(12, 0)), N'Minervino Murge', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (5, N'MMWT004', N'Wind Turbine', 41.07063461, 16.12858363, 1, N'High', CAST(38 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (6, N'MMWT005', N'Wind Turbine', 41.07063461, 16.12927363, 1, N'High', CAST(16 AS Decimal(12, 0)), N'Minervino Murge', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (7, N'MMWT006', N'Wind Turbine', 41.07063461, 16.12996363, 1, N'High', CAST(48 AS Decimal(12, 0)), N'Minervino Murge', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (8, N'MMWT007', N'Wind Turbine', 41.07063461, 16.13065363, 1, N'High', CAST(32 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (9, N'MMWT008', N'Wind Turbine', 41.07063461, 16.13134363, 1, N'High', CAST(24 AS Decimal(12, 0)), N'Minervino Murge', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (10, N'MMWT009', N'Wind Turbine', 41.07063461, 16.13203363, 1, N'Medium ', CAST(38 AS Decimal(12, 0)), N'Minervino Murge', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (11, N'SS01', N'Wind Farm', 38.64486, 16.48808, 1, N'High', CAST(10 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (12, N'SSWT001', N'Wind Turbine', 38.644889, 16.488115, 1, N'Medium ', CAST(32 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (13, N'SSWT002', N'Wind Turbine', 38.644889, 16.488805, 1, N'High', CAST(44 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (14, N'SSWT003', N'Wind Turbine', 38.644889, 16.489495, 1, N'High', CAST(14 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (15, N'SSWT004', N'Wind Turbine', 38.644889, 16.490185, 1, N'High', CAST(9 AS Decimal(12, 0)), N'San Sostene', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (16, N'SSWT005', N'Wind Turbine', 38.644889, 16.490875, 1, N'Medium ', CAST(38 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (17, N'SSWT006', N'Wind Turbine', 38.644889, 16.491565, 1, N'Medium ', CAST(16 AS Decimal(12, 0)), N'San Sostene', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (18, N'SSWT007', N'Wind Turbine', 38.644889, 16.492255, 1, N'High', CAST(48 AS Decimal(12, 0)), N'San Sostene', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (19, N'SSWT008', N'Wind Turbine', 38.644889, 16.492945, 1, N'High', CAST(32 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (20, N'SSWT009', N'Wind Turbine', 38.644889, 16.493635, 1, N'High', CAST(24 AS Decimal(12, 0)), N'San Sostene', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (21, N'SSWT010', N'Wind Turbine', 38.644889, 16.494325, 1, N'High', CAST(38 AS Decimal(12, 0)), N'San Sostene', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (22, N'R001', N'Photovoltaics', 39.33405, 16.1861, 1, N'Medium ', CAST(10 AS Decimal(12, 0)), N'Rende', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (23, N'RSA001', N'Solar Array', 39.33405, 16.1861, 1, N'Medium ', CAST(32 AS Decimal(12, 0)), N'Rende', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (24, N'RSA002', N'Solar Array', 39.33405, 16.1861, 1, N'Medium ', CAST(44 AS Decimal(12, 0)), N'Rende', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (25, N'RSA003', N'Solar Array', 39.33405, 16.1861, 1, N'Medium ', CAST(14 AS Decimal(12, 0)), N'Rende', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (26, N'BM001', N'Biomass', 39.33912, 16.19341, 1, N'Low ', CAST(9 AS Decimal(12, 0)), N'Rende', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (27, N'NM001', N'Photovoltaics', 40.56214, 17.80939, 1, N'Medium ', CAST(38 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (28, N'NMS001', N'Solar Array', 40.56214, 17.80939, 1, N'Medium ', CAST(16 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#E8C268')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (29, N'NMS002', N'Solar Array', 40.56214, 17.80939, 1, N'Medium ', CAST(48 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#CB715E')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (30, N'NMS003', N'Solar Array', 40.56214, 17.80939, 1, N'High', CAST(32 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (31, N'NMS004', N'Solar Array', 40.56214, 17.80939, 1, N'High', CAST(24 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#8fc797')
GO
INSERT [dbo].[DemoAlternativeEnergyAsset] ([ID], [AssetNo], [AssetType], [Latitude], [Longitude], [Active], [Criticality], [RiskScore], [Location], [AlertColor]) VALUES (32, N'NMS005', N'Solar Array', 40.56214, 17.80939, 1, N'High', CAST(38 AS Decimal(12, 0)), N'Notarpanaro - Mesagne', N'#E8C268')
GO
SET IDENTITY_INSERT [dbo].[DemoAlternativeEnergyAsset] OFF
GO

```
</details>

<details>
<summary>DemoWorkManagementWindTurbine (Work management information)</summary>

```
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoWorkManagementWindTurbine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AssetNo] [nvarchar](50) NULL,
	[WRNo] [nvarchar](50) NULL,
	[WONo] [nvarchar](50) NULL,
	[Title] [nvarchar](250) NULL,
	[WOStatus] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_DemoWorkManagementWindTurbine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoWorkManagementWindTurbine] ON 
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (1, N'MMWT004', N'3453788', N'114879', N'Visual inspection of rotor for excessive damage/wear', N'INPROG', CAST(N'2021-03-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (2, N'MMWT004', N'3446268', N'114900', N'Replacement of generator air filter and inspection of fan housing', N'PLAN', CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (3, N'MMWT004', N'3451228', N'114921', N'Infrared inspection on switchgeras, distribution panels, bus connections, and starters', N'PLAN', CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (4, N'MMWT004', N'3446195', N'114942', N'Grease front and rear generator bearings', N'PLAN', CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (5, N'MMWT004', N'3446268', N'114963', N'Replace main cabinet control filter element', N'SCHED', CAST(N'2021-04-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (6, N'MMWT004', N'3446115', N'114984', N'Inspection ofcable connections to generator terminal box', N'SCHED', CAST(N'2019-10-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (7, N'MMWT004', N'3446139', N'115005', N'Visually inspect pillow blocks bolts for corrosion', N'SCHED', CAST(N'2019-09-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (8, N'MMWT004', N'3446163', N'115026', N'Drain and replace the entire volume of the converter coolant loop and inspect coolant pump for leakage', N'RESCHED', CAST(N'2019-10-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (9, N'MMWT004', N'3446187', N'115047', N'Inspect generator support frame for cracking/corrosion', N'COMPLETED', CAST(N'2019-09-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[DemoWorkManagementWindTurbine] ([ID], [AssetNo], [WRNo], [WONo], [Title], [WOStatus], [Date]) VALUES (10, N'MMWT004', N'3446211', N'115068', N'Inspection of coupling mechanical guard for damage/warpage ', N'COMPLETED', CAST(N'2019-09-10T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DemoWorkManagementWindTurbine] OFF
GO

```
</details>

## Data Stream

An example of how to contextualize simulated data, calculate an oil level, run recommendations and output the wind turbine data to the Application Designer.

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Configured Data Stream](Images/DataStream.png)
</details>

The data stream is configured using: 

* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Event Simulator</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - Simulates data for the stream
* <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Adding a boolean column for the join
* <a href="https://xmpro.gitbook.io/azure-sql/" target="_blank"><i>SQL</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - read all records from SQL
* <a href="https://xmpro.gitbook.io/join/" target="_blank"><i>Join</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Contextualize sensor data with data from SQL
* <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Calculate oil level as `"Low"` or `"High"`
* <a href="https://xmpro.gitbook.io/broadcast/" target="_blank"><i>Broadcast</i></a> - Broadcast data to other agents
* <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank"><i>Run Recommendation</i></a> <a href="https://documentation.xmpro.com/concepts/agent#recommendations" target="_blank">agent</a> - Run failure Recommendation Rule
* <a href="https://xmpro.gitbook.io/rounding/" target="_blank"><i>Rounding</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Rounding all values
* <a href="https://xmpro.gitbook.io/filter/" target="_blank"><i>Filter</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Filter for all wind turbine assets
* <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank"><i>XMPro App</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agent</a> - View data in the App Designer

## Recommendation
The recommendation is configured using two rules: 

<details>
<summary markdown="span">Gearbox Oil Level - Checks if the Wind Turbine assets have a low gearbox oil level</summary>

![Reccommendation_01](Images/Recommendation_01.png)
</details>

<details>
<summary markdown="span">Gearbox Oil Viscosity - Checks if the Wind Turbine assets have a high gearbox oil viscosity</summary>

![Reccommendation_01](Images/Recommendation_02.png)
</details>

##
## Application
An example of how to visualize the synthetic data passed by the data stream to a Unity model in an application.


### Landing Page
<details>
	<summary markdown="span">Expand to view screenshot</summary>

![Application_01](Images/Application_01.png)
</details>

The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/esri-map" target="_blank"><i>Esri Map</i></a> to render the 3D globe and visualize the assets at their geographic coordinates
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart"><i>Chart</i></a> to visualize the historical count of equiment requiring maintenance
* <a href="https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations" target="_blank"><i>Recommendations</i></a> to view current open recommendations for all assets
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/indicator" target="_blank"><i>Indicator</i></a> to visually inspect the active state of the assets

##
### Asset View
<details>
<summary markdown="span">Expand to view screenshot</summary>

![Application_03](Images/Application_03.png)
</details>

The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart" target="_blank"><i>Chart</i></a> a horizontal bar graph to display assets with open alerts
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/pie-chart" target="_blank"><i>Pie Chart</i></a> to display the current work order status for the asset
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/indicator" target="_blank"><i>Indicator</i></a> to visualize the status of each asset
* <a href="https://documentation.xmpro.com/blocks-toolbox/layout/accordion"><i>Accordion</i></a> to allow the raw data to be viewed
* <a href="https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations" target="_blank"><i>Recommendations</i></a> to view current open recommendations for all assets

##
### Asset Drilldown
<details>
<summary markdown="span">Expand to view screenshot</summary>

![Application_02](Images/Application_02.png)
</details>

The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge"><i>Circular Gauge</i></a> showing the effective utilization percentage
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/indicator" target="_blank"><i>Indicator</i></a> presenting the status of hazard risk
* <a href="https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations" target="_blank"><i>Recommendations</i></a> to view current open recommendations for current asset
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart" target="_blank"><i>Charts</i></a> 
  * to show window of data for Wind Speed
  * to show window of data for Gearbox Oil
  * to display the time profile for the last 24 hours

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
    
	* Edit the Azure SQL agent "Read all Records"
     - Ensure the Server Instance, Username and Password fields are filled in correctly

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the Post telemetry agents

<details>
  <summary markdown="span">Expand to view screenshot of a successfully running data stream with live data</summary>

![Running Data Stream](Images/DataStream_Running.png) 
</details>


## 3. Import the Recommendation

    * Import the included form if it doesn't already exist

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Recommendation Import](Images/Recommendation_Import.png) 

</details>

    * Assign Access to others as required

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Recommendation Access](Images/Recommendation_Access.png) 

</details>

## 4. Import the Application

When importing the application make sure to map the data source on the import wizard to the above data stream that was imported.
Confirm the connections are configured correctly in the App Data tab and in each Page Data tab.

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Application Import](Images/Application_Import.png) 
</details>

    * Assign Access to others as required for design and runtime

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Application Access](Images/Application_Access.png) 
</details>

	* Edit the Application
    	* Select all recommendation elements on all pages and tick "Oil" in Block Properties > Behavior:
        	* Landing Page (top-right)
        	* Asset View (bottom-right)
        	* Asset Drilldown (center-left)

	* Save the Application
	* Publish the application
	* Ensure there is data in the application by checking each graph, status and gauge.

<!-- <details>
  <summary markdown="span">Expand to view screenshot</summary>

![Application](Images/Application.png) 
</details> -->

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)