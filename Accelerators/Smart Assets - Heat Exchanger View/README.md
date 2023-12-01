<!-- omit in toc -->
# <img alternative="XMPro Logo X" width="30px" src="https://xmks.s3.amazonaws.com/2020/X-Blue.png#gh-light-mode-only"> Smart Assets - Heat Exchanger View 

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
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Assets%20-%20Heat%20Exchanger%20View/SQL%20Scripts/%5BDemoHeatExchangerUCoefficient%5D.sql" target="_blank">DemoHeatExchangerUCoefficient</a></td>
</tr>
<tr>
<td>Data Stream</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Assets%20-%20Heat%20Exchanger%20View/Data%20Stream/Simulate%20Heat%20Exchanger%20Telemetry.xuc" target="_blank">Simulate Heat Exchanger Telemetry</a></td>
</tr>
<tr>
<td>Recommendation</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Assets%20-%20Heat%20Exchanger%20View/Recommendation/Heat%20Exchanger%20Fouling.xr" target="_blank">Heat Exchanger Fouling</a></td>
</tr>
<tr>
<td>Application</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Assets%20-%20Heat%20Exchanger%20View/Application/Heat%20Exchanger%20View.xapp" target="_blank">Heat Exchanger View</a></td>
</tr>
<tr>
<td>Template</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Assets%20-%20Heat%20Exchanger%20View/Template/Heat%20Exchanger%20View.xtml" target="_blank">Heat Exchanger Template</a></td>
</tr>
</table>

# Description
## SQL Scripts


<details>
<summary>DemoHeatExchangerUCoefficient (A time series history of coefficient values)</summary>

```SQL
/****** Object:  Table [dbo].[DemoHeatExchangerUCoefficient]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemoHeatExchangerUCoefficient](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[UCoefficient] [numeric](18, 5) NOT NULL,
 CONSTRAINT [PK_DemoHeatExchangerUCoefficient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DemoHeatExchangerUCoefficient] ON 
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1, CAST(N'2009-01-01' AS Date), CAST(224.32526 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2, CAST(N'2009-01-02' AS Date), CAST(221.29229 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (3, CAST(N'2009-01-03' AS Date), CAST(221.31118 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (4, CAST(N'2009-01-04' AS Date), CAST(220.35955 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (5, CAST(N'2009-01-05' AS Date), CAST(217.97587 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (6, CAST(N'2009-01-06' AS Date), CAST(220.07888 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (7, CAST(N'2009-01-07' AS Date), CAST(224.42647 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (8, CAST(N'2009-01-08' AS Date), CAST(215.16010 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (9, CAST(N'2009-01-09' AS Date), CAST(221.04434 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (10, CAST(N'2009-01-10' AS Date), CAST(221.39689 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (11, CAST(N'2009-01-11' AS Date), CAST(216.98888 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (12, CAST(N'2009-01-12' AS Date), CAST(214.52213 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (13, CAST(N'2009-01-13' AS Date), CAST(204.46253 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (14, CAST(N'2009-01-14' AS Date), CAST(213.67343 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (15, CAST(N'2009-01-17' AS Date), CAST(232.67503 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (16, CAST(N'2009-01-18' AS Date), CAST(238.24145 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (17, CAST(N'2009-01-19' AS Date), CAST(237.77774 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (18, CAST(N'2009-01-20' AS Date), CAST(241.77536 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (19, CAST(N'2009-01-21' AS Date), CAST(234.33032 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (20, CAST(N'2009-01-22' AS Date), CAST(219.43909 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (21, CAST(N'2009-01-23' AS Date), CAST(216.70801 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (22, CAST(N'2009-01-24' AS Date), CAST(217.82133 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (23, CAST(N'2009-01-25' AS Date), CAST(217.34738 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (24, CAST(N'2009-01-26' AS Date), CAST(214.02125 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (25, CAST(N'2009-01-27' AS Date), CAST(212.25587 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (26, CAST(N'2009-01-28' AS Date), CAST(209.77364 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (27, CAST(N'2009-01-29' AS Date), CAST(215.55413 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (28, CAST(N'2009-02-01' AS Date), CAST(205.18441 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (29, CAST(N'2009-02-02' AS Date), CAST(206.91617 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (30, CAST(N'2009-02-03' AS Date), CAST(217.69734 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (31, CAST(N'2009-02-04' AS Date), CAST(229.67643 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (32, CAST(N'2009-02-05' AS Date), CAST(233.47289 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (33, CAST(N'2009-02-10' AS Date), CAST(219.66140 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (34, CAST(N'2009-02-11' AS Date), CAST(211.00785 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (35, CAST(N'2009-02-12' AS Date), CAST(204.51294 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (36, CAST(N'2009-02-13' AS Date), CAST(212.84977 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (37, CAST(N'2009-02-14' AS Date), CAST(215.45281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (38, CAST(N'2009-02-15' AS Date), CAST(216.11936 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (39, CAST(N'2009-02-16' AS Date), CAST(216.48471 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (40, CAST(N'2009-02-17' AS Date), CAST(215.69625 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (41, CAST(N'2009-02-18' AS Date), CAST(218.02505 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (42, CAST(N'2009-02-19' AS Date), CAST(212.65707 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (43, CAST(N'2009-02-20' AS Date), CAST(211.38043 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (44, CAST(N'2009-02-21' AS Date), CAST(204.15254 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (45, CAST(N'2009-02-22' AS Date), CAST(208.12951 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (46, CAST(N'2009-02-23' AS Date), CAST(202.66369 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (47, CAST(N'2009-02-24' AS Date), CAST(208.84585 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (48, CAST(N'2009-02-25' AS Date), CAST(200.63065 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (49, CAST(N'2009-02-26' AS Date), CAST(201.76659 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (50, CAST(N'2009-02-27' AS Date), CAST(201.16832 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (51, CAST(N'2009-02-28' AS Date), CAST(237.64425 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (52, CAST(N'2009-03-01' AS Date), CAST(237.98731 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (53, CAST(N'2009-03-02' AS Date), CAST(223.95098 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (54, CAST(N'2009-03-03' AS Date), CAST(224.89895 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (55, CAST(N'2009-03-04' AS Date), CAST(224.20057 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (56, CAST(N'2009-03-05' AS Date), CAST(226.18531 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (57, CAST(N'2009-03-06' AS Date), CAST(222.98801 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (58, CAST(N'2009-03-07' AS Date), CAST(217.42364 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (59, CAST(N'2009-03-17' AS Date), CAST(193.51332 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (60, CAST(N'2009-03-18' AS Date), CAST(216.91361 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (61, CAST(N'2009-03-19' AS Date), CAST(222.23614 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (62, CAST(N'2009-03-20' AS Date), CAST(223.82564 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (63, CAST(N'2009-03-21' AS Date), CAST(225.99921 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (64, CAST(N'2009-03-22' AS Date), CAST(235.87144 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (65, CAST(N'2009-03-23' AS Date), CAST(242.03859 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (66, CAST(N'2009-03-24' AS Date), CAST(244.04129 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (67, CAST(N'2009-03-25' AS Date), CAST(237.59156 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (68, CAST(N'2009-03-26' AS Date), CAST(244.10709 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (69, CAST(N'2009-03-27' AS Date), CAST(237.30575 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (70, CAST(N'2009-03-28' AS Date), CAST(241.78299 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (71, CAST(N'2009-03-29' AS Date), CAST(239.49545 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (72, CAST(N'2009-03-30' AS Date), CAST(232.59536 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (73, CAST(N'2009-03-31' AS Date), CAST(234.41605 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (74, CAST(N'2009-04-03' AS Date), CAST(185.43801 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (75, CAST(N'2009-04-04' AS Date), CAST(217.15911 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (76, CAST(N'2009-04-05' AS Date), CAST(217.59440 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (77, CAST(N'2009-04-06' AS Date), CAST(230.69428 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (78, CAST(N'2009-04-07' AS Date), CAST(224.55969 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (79, CAST(N'2009-04-08' AS Date), CAST(222.52669 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (80, CAST(N'2009-04-09' AS Date), CAST(212.86760 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (81, CAST(N'2009-04-10' AS Date), CAST(214.56542 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (82, CAST(N'2009-04-11' AS Date), CAST(216.44545 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (83, CAST(N'2009-04-12' AS Date), CAST(215.67803 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (84, CAST(N'2009-04-13' AS Date), CAST(216.53093 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (85, CAST(N'2009-04-14' AS Date), CAST(221.05461 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (86, CAST(N'2009-04-15' AS Date), CAST(222.20959 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (87, CAST(N'2009-04-16' AS Date), CAST(185.87996 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (88, CAST(N'2009-04-17' AS Date), CAST(206.01663 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (89, CAST(N'2009-04-18' AS Date), CAST(201.83686 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (90, CAST(N'2009-04-19' AS Date), CAST(203.48334 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (91, CAST(N'2009-04-20' AS Date), CAST(209.59315 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (92, CAST(N'2009-04-21' AS Date), CAST(205.28485 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (93, CAST(N'2009-04-22' AS Date), CAST(208.32508 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (94, CAST(N'2009-04-23' AS Date), CAST(203.03333 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (95, CAST(N'2009-04-24' AS Date), CAST(202.52087 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (96, CAST(N'2009-04-25' AS Date), CAST(204.57029 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (97, CAST(N'2009-04-26' AS Date), CAST(200.05634 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (98, CAST(N'2009-04-27' AS Date), CAST(198.77052 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (99, CAST(N'2009-04-28' AS Date), CAST(212.09598 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (100, CAST(N'2009-04-29' AS Date), CAST(226.27838 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (101, CAST(N'2009-04-30' AS Date), CAST(222.42846 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (102, CAST(N'2009-05-01' AS Date), CAST(218.26322 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (103, CAST(N'2009-05-02' AS Date), CAST(219.14656 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (104, CAST(N'2009-05-03' AS Date), CAST(221.12458 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (105, CAST(N'2009-05-04' AS Date), CAST(222.89074 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (106, CAST(N'2009-05-05' AS Date), CAST(220.90947 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (107, CAST(N'2009-05-06' AS Date), CAST(209.48119 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (108, CAST(N'2009-05-07' AS Date), CAST(207.66679 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (109, CAST(N'2009-05-08' AS Date), CAST(209.46322 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (110, CAST(N'2009-05-09' AS Date), CAST(211.00570 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (111, CAST(N'2009-05-10' AS Date), CAST(212.19646 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (112, CAST(N'2009-05-14' AS Date), CAST(211.64538 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (113, CAST(N'2009-05-15' AS Date), CAST(214.08870 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (114, CAST(N'2009-05-16' AS Date), CAST(219.90884 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (115, CAST(N'2009-05-17' AS Date), CAST(220.79826 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (116, CAST(N'2009-06-18' AS Date), CAST(264.67542 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (117, CAST(N'2009-06-19' AS Date), CAST(277.78149 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (118, CAST(N'2009-06-20' AS Date), CAST(272.71388 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (119, CAST(N'2009-06-21' AS Date), CAST(262.45203 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (120, CAST(N'2009-06-22' AS Date), CAST(256.80169 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (121, CAST(N'2009-06-23' AS Date), CAST(257.42728 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (122, CAST(N'2009-06-24' AS Date), CAST(272.62037 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (123, CAST(N'2009-06-25' AS Date), CAST(269.54578 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (124, CAST(N'2009-06-26' AS Date), CAST(263.23712 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (125, CAST(N'2009-06-27' AS Date), CAST(261.96760 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (126, CAST(N'2009-06-28' AS Date), CAST(259.63852 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (127, CAST(N'2009-06-29' AS Date), CAST(259.38531 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (128, CAST(N'2009-06-30' AS Date), CAST(256.59594 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (129, CAST(N'2009-07-01' AS Date), CAST(249.63303 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (130, CAST(N'2009-07-14' AS Date), CAST(273.67981 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (131, CAST(N'2009-07-15' AS Date), CAST(267.00853 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (132, CAST(N'2009-07-16' AS Date), CAST(270.04709 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (133, CAST(N'2009-07-17' AS Date), CAST(273.82432 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (134, CAST(N'2009-07-18' AS Date), CAST(270.33668 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (135, CAST(N'2009-07-19' AS Date), CAST(263.54221 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (136, CAST(N'2009-07-20' AS Date), CAST(259.97340 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (137, CAST(N'2009-07-21' AS Date), CAST(267.18214 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (138, CAST(N'2009-07-22' AS Date), CAST(264.58632 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (139, CAST(N'2009-07-23' AS Date), CAST(256.59031 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (140, CAST(N'2009-07-24' AS Date), CAST(261.57279 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (141, CAST(N'2009-07-25' AS Date), CAST(257.92339 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (142, CAST(N'2009-07-26' AS Date), CAST(267.04762 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (143, CAST(N'2009-07-27' AS Date), CAST(256.06217 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (144, CAST(N'2009-07-28' AS Date), CAST(251.02744 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (145, CAST(N'2009-07-29' AS Date), CAST(255.78784 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (146, CAST(N'2009-07-30' AS Date), CAST(270.01519 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (147, CAST(N'2009-07-31' AS Date), CAST(256.01192 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (148, CAST(N'2009-08-01' AS Date), CAST(259.58135 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (149, CAST(N'2009-08-02' AS Date), CAST(267.89490 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (150, CAST(N'2009-08-03' AS Date), CAST(262.00436 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (151, CAST(N'2009-08-04' AS Date), CAST(261.64118 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (152, CAST(N'2009-08-05' AS Date), CAST(265.90132 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (153, CAST(N'2009-08-06' AS Date), CAST(268.05352 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (154, CAST(N'2009-08-20' AS Date), CAST(234.23489 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (155, CAST(N'2009-08-21' AS Date), CAST(244.19589 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (156, CAST(N'2009-08-22' AS Date), CAST(265.92807 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (157, CAST(N'2009-08-23' AS Date), CAST(245.50171 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (158, CAST(N'2009-08-24' AS Date), CAST(260.79369 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (159, CAST(N'2009-08-25' AS Date), CAST(280.47792 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (160, CAST(N'2009-08-26' AS Date), CAST(280.53027 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (161, CAST(N'2009-08-27' AS Date), CAST(274.35318 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (162, CAST(N'2009-08-28' AS Date), CAST(282.54293 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (163, CAST(N'2009-08-29' AS Date), CAST(289.73649 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (164, CAST(N'2009-08-30' AS Date), CAST(296.33770 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (165, CAST(N'2009-08-31' AS Date), CAST(297.82617 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (166, CAST(N'2009-09-01' AS Date), CAST(288.85638 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (167, CAST(N'2009-09-02' AS Date), CAST(281.96341 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (168, CAST(N'2009-09-03' AS Date), CAST(277.41666 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (169, CAST(N'2009-09-04' AS Date), CAST(292.39809 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (170, CAST(N'2009-09-05' AS Date), CAST(267.20887 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (171, CAST(N'2009-09-06' AS Date), CAST(269.52290 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (172, CAST(N'2009-09-07' AS Date), CAST(273.90681 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (173, CAST(N'2009-09-08' AS Date), CAST(278.88325 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (174, CAST(N'2009-09-09' AS Date), CAST(280.13245 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (175, CAST(N'2009-09-10' AS Date), CAST(287.44594 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (176, CAST(N'2009-09-12' AS Date), CAST(267.31092 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (177, CAST(N'2009-09-13' AS Date), CAST(261.21842 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (178, CAST(N'2009-09-14' AS Date), CAST(268.19008 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (179, CAST(N'2009-09-15' AS Date), CAST(274.95926 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (180, CAST(N'2009-09-16' AS Date), CAST(282.53339 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (181, CAST(N'2009-09-17' AS Date), CAST(295.26469 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (182, CAST(N'2009-09-18' AS Date), CAST(286.26428 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (183, CAST(N'2009-09-19' AS Date), CAST(288.59131 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (184, CAST(N'2009-09-20' AS Date), CAST(283.13978 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (185, CAST(N'2009-09-21' AS Date), CAST(288.97971 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (186, CAST(N'2009-09-22' AS Date), CAST(287.08540 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (187, CAST(N'2009-09-23' AS Date), CAST(289.48902 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (188, CAST(N'2009-09-24' AS Date), CAST(278.61947 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (189, CAST(N'2009-09-25' AS Date), CAST(278.22919 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (190, CAST(N'2009-09-26' AS Date), CAST(280.77162 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (191, CAST(N'2009-09-27' AS Date), CAST(278.18643 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (192, CAST(N'2009-09-28' AS Date), CAST(273.30006 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (193, CAST(N'2009-09-29' AS Date), CAST(275.29911 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (194, CAST(N'2009-09-30' AS Date), CAST(288.36433 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (195, CAST(N'2009-10-01' AS Date), CAST(283.58290 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (196, CAST(N'2009-10-02' AS Date), CAST(288.03578 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (197, CAST(N'2009-10-03' AS Date), CAST(284.41182 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (198, CAST(N'2009-10-04' AS Date), CAST(287.99356 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (199, CAST(N'2009-10-05' AS Date), CAST(288.90712 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (200, CAST(N'2009-10-06' AS Date), CAST(285.15893 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (201, CAST(N'2009-10-07' AS Date), CAST(280.67279 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (202, CAST(N'2009-10-08' AS Date), CAST(283.05032 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (203, CAST(N'2009-10-09' AS Date), CAST(279.25002 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (204, CAST(N'2009-10-10' AS Date), CAST(279.56988 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (205, CAST(N'2009-10-11' AS Date), CAST(272.21252 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (206, CAST(N'2009-10-12' AS Date), CAST(280.01992 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (207, CAST(N'2009-10-14' AS Date), CAST(280.27985 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (208, CAST(N'2009-10-15' AS Date), CAST(282.37343 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (209, CAST(N'2009-10-16' AS Date), CAST(293.17620 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (210, CAST(N'2009-10-17' AS Date), CAST(288.66500 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (211, CAST(N'2009-10-18' AS Date), CAST(288.02000 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (212, CAST(N'2009-10-19' AS Date), CAST(282.92780 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (213, CAST(N'2009-10-20' AS Date), CAST(275.95390 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (214, CAST(N'2009-10-21' AS Date), CAST(277.63258 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (215, CAST(N'2009-10-22' AS Date), CAST(281.08850 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (216, CAST(N'2009-10-23' AS Date), CAST(282.01890 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (217, CAST(N'2009-10-24' AS Date), CAST(274.49876 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (218, CAST(N'2009-11-03' AS Date), CAST(0.80402 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (219, CAST(N'2009-11-08' AS Date), CAST(270.13225 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (220, CAST(N'2009-11-09' AS Date), CAST(265.43960 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (221, CAST(N'2009-11-10' AS Date), CAST(268.54390 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (222, CAST(N'2009-11-11' AS Date), CAST(264.38691 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (223, CAST(N'2009-11-12' AS Date), CAST(267.62364 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (224, CAST(N'2009-11-13' AS Date), CAST(267.61333 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (225, CAST(N'2009-11-14' AS Date), CAST(264.67642 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (226, CAST(N'2009-11-15' AS Date), CAST(264.47717 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (227, CAST(N'2009-11-16' AS Date), CAST(268.33991 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (228, CAST(N'2009-11-17' AS Date), CAST(267.77069 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (229, CAST(N'2009-11-18' AS Date), CAST(268.76366 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (230, CAST(N'2009-11-19' AS Date), CAST(257.86789 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (231, CAST(N'2009-11-20' AS Date), CAST(255.27334 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (232, CAST(N'2009-11-21' AS Date), CAST(269.71107 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (233, CAST(N'2009-11-22' AS Date), CAST(267.47280 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (234, CAST(N'2009-11-23' AS Date), CAST(260.19401 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (235, CAST(N'2009-11-26' AS Date), CAST(266.12890 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (236, CAST(N'2009-11-27' AS Date), CAST(264.32279 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (237, CAST(N'2009-11-28' AS Date), CAST(274.41389 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (238, CAST(N'2009-11-29' AS Date), CAST(258.47354 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (239, CAST(N'2009-11-30' AS Date), CAST(254.58218 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (240, CAST(N'2009-12-01' AS Date), CAST(254.01750 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (241, CAST(N'2009-12-02' AS Date), CAST(251.26667 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (242, CAST(N'2009-12-03' AS Date), CAST(247.16700 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (243, CAST(N'2009-12-04' AS Date), CAST(251.89066 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (244, CAST(N'2009-12-05' AS Date), CAST(260.67869 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (245, CAST(N'2009-12-06' AS Date), CAST(259.84601 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (246, CAST(N'2009-12-07' AS Date), CAST(260.18632 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (247, CAST(N'2009-12-08' AS Date), CAST(285.01094 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (248, CAST(N'2009-12-09' AS Date), CAST(262.19788 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (249, CAST(N'2009-12-10' AS Date), CAST(259.45931 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (250, CAST(N'2009-12-11' AS Date), CAST(266.44670 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (251, CAST(N'2009-12-19' AS Date), CAST(258.25839 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (252, CAST(N'2009-12-20' AS Date), CAST(271.98436 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (253, CAST(N'2009-12-21' AS Date), CAST(262.01420 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (254, CAST(N'2009-12-22' AS Date), CAST(255.23981 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (255, CAST(N'2009-12-23' AS Date), CAST(262.75506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (256, CAST(N'2009-12-24' AS Date), CAST(262.07453 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (257, CAST(N'2009-12-25' AS Date), CAST(261.50635 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (258, CAST(N'2009-12-26' AS Date), CAST(248.66932 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (259, CAST(N'2009-12-27' AS Date), CAST(263.34432 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (260, CAST(N'2009-12-28' AS Date), CAST(268.93730 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (261, CAST(N'2009-12-29' AS Date), CAST(268.83621 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (262, CAST(N'2009-12-30' AS Date), CAST(260.29855 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (263, CAST(N'2009-12-31' AS Date), CAST(272.53934 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (264, CAST(N'2010-01-01' AS Date), CAST(269.47638 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (265, CAST(N'2010-01-02' AS Date), CAST(273.82388 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (266, CAST(N'2010-01-03' AS Date), CAST(275.83968 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (267, CAST(N'2010-01-04' AS Date), CAST(265.29431 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (268, CAST(N'2010-01-05' AS Date), CAST(272.43453 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (269, CAST(N'2010-01-06' AS Date), CAST(272.82219 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (270, CAST(N'2010-01-07' AS Date), CAST(257.16505 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (271, CAST(N'2010-01-08' AS Date), CAST(262.43644 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (272, CAST(N'2010-01-09' AS Date), CAST(258.85185 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (273, CAST(N'2010-01-19' AS Date), CAST(365.46043 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (274, CAST(N'2010-01-20' AS Date), CAST(262.41341 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (275, CAST(N'2010-01-21' AS Date), CAST(278.36465 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (276, CAST(N'2010-01-22' AS Date), CAST(268.95283 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (277, CAST(N'2010-01-23' AS Date), CAST(256.47958 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (278, CAST(N'2010-01-24' AS Date), CAST(247.42600 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (279, CAST(N'2010-01-25' AS Date), CAST(238.00596 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (280, CAST(N'2010-01-26' AS Date), CAST(247.75206 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (281, CAST(N'2010-01-27' AS Date), CAST(249.86771 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (282, CAST(N'2010-01-28' AS Date), CAST(248.86050 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (283, CAST(N'2010-01-29' AS Date), CAST(260.35634 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (284, CAST(N'2010-01-30' AS Date), CAST(268.33226 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (285, CAST(N'2010-01-31' AS Date), CAST(257.90949 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (286, CAST(N'2010-02-01' AS Date), CAST(245.42121 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (287, CAST(N'2010-02-02' AS Date), CAST(253.84242 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (288, CAST(N'2010-02-03' AS Date), CAST(266.84777 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (289, CAST(N'2010-02-04' AS Date), CAST(252.86730 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (290, CAST(N'2010-02-05' AS Date), CAST(252.44677 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (291, CAST(N'2010-02-06' AS Date), CAST(263.33941 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (292, CAST(N'2010-02-07' AS Date), CAST(255.43829 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (293, CAST(N'2010-02-08' AS Date), CAST(250.87044 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (294, CAST(N'2010-02-09' AS Date), CAST(250.16680 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (295, CAST(N'2010-02-10' AS Date), CAST(258.67379 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (296, CAST(N'2010-02-17' AS Date), CAST(252.88446 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (297, CAST(N'2010-02-18' AS Date), CAST(264.46364 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (298, CAST(N'2010-02-19' AS Date), CAST(270.22465 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (299, CAST(N'2010-02-20' AS Date), CAST(272.41311 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (300, CAST(N'2010-02-21' AS Date), CAST(276.74327 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (301, CAST(N'2010-02-22' AS Date), CAST(279.52662 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (302, CAST(N'2010-02-23' AS Date), CAST(274.83963 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (303, CAST(N'2010-02-24' AS Date), CAST(267.06728 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (304, CAST(N'2010-03-19' AS Date), CAST(1.23888 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (305, CAST(N'2010-03-21' AS Date), CAST(219.14414 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (306, CAST(N'2010-03-23' AS Date), CAST(279.47431 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (307, CAST(N'2010-03-24' AS Date), CAST(273.39696 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (308, CAST(N'2010-03-25' AS Date), CAST(282.96026 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (309, CAST(N'2010-03-26' AS Date), CAST(277.67211 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (310, CAST(N'2010-03-27' AS Date), CAST(267.01951 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (311, CAST(N'2010-03-28' AS Date), CAST(308.26616 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (312, CAST(N'2010-03-29' AS Date), CAST(305.49419 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (313, CAST(N'2010-03-30' AS Date), CAST(314.27611 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (314, CAST(N'2010-03-31' AS Date), CAST(297.75750 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (315, CAST(N'2010-04-01' AS Date), CAST(295.39066 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (316, CAST(N'2010-04-02' AS Date), CAST(277.33636 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (317, CAST(N'2010-04-03' AS Date), CAST(296.83598 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (318, CAST(N'2010-04-13' AS Date), CAST(259.32573 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (319, CAST(N'2010-04-14' AS Date), CAST(253.32427 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (320, CAST(N'2010-04-15' AS Date), CAST(246.20992 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (321, CAST(N'2010-04-16' AS Date), CAST(257.25411 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (322, CAST(N'2010-04-17' AS Date), CAST(252.87708 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (323, CAST(N'2010-04-18' AS Date), CAST(268.78378 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (324, CAST(N'2010-04-19' AS Date), CAST(268.20113 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (325, CAST(N'2010-04-20' AS Date), CAST(287.98084 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (326, CAST(N'2010-04-21' AS Date), CAST(276.20809 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (327, CAST(N'2010-04-22' AS Date), CAST(271.97921 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (328, CAST(N'2010-04-23' AS Date), CAST(293.18919 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (329, CAST(N'2010-04-24' AS Date), CAST(290.85474 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (330, CAST(N'2010-04-25' AS Date), CAST(300.89684 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (331, CAST(N'2010-04-26' AS Date), CAST(297.37693 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (332, CAST(N'2010-04-27' AS Date), CAST(292.96556 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (333, CAST(N'2010-04-28' AS Date), CAST(304.33338 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (334, CAST(N'2010-04-29' AS Date), CAST(289.33890 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (335, CAST(N'2010-04-30' AS Date), CAST(264.57359 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (336, CAST(N'2010-05-01' AS Date), CAST(280.99133 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (337, CAST(N'2010-05-02' AS Date), CAST(322.57185 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (338, CAST(N'2010-05-05' AS Date), CAST(378.09718 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (339, CAST(N'2010-05-07' AS Date), CAST(281.54082 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (340, CAST(N'2010-05-08' AS Date), CAST(288.95185 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (341, CAST(N'2010-05-09' AS Date), CAST(297.68957 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (342, CAST(N'2010-05-11' AS Date), CAST(289.47220 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (343, CAST(N'2010-05-12' AS Date), CAST(289.53129 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (344, CAST(N'2010-05-13' AS Date), CAST(272.38390 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (345, CAST(N'2010-05-14' AS Date), CAST(282.10346 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (346, CAST(N'2010-05-15' AS Date), CAST(291.60690 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (347, CAST(N'2010-05-16' AS Date), CAST(296.44731 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (348, CAST(N'2010-05-17' AS Date), CAST(296.83601 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (349, CAST(N'2010-05-18' AS Date), CAST(305.50541 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (350, CAST(N'2010-05-19' AS Date), CAST(296.24188 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (351, CAST(N'2010-05-20' AS Date), CAST(285.16838 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (352, CAST(N'2010-05-28' AS Date), CAST(251.51492 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (353, CAST(N'2010-05-29' AS Date), CAST(250.63671 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (354, CAST(N'2010-05-30' AS Date), CAST(255.36315 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (355, CAST(N'2010-05-31' AS Date), CAST(253.54251 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (356, CAST(N'2010-06-01' AS Date), CAST(257.91023 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (357, CAST(N'2010-06-02' AS Date), CAST(254.20736 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (358, CAST(N'2010-06-03' AS Date), CAST(245.71051 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (359, CAST(N'2010-06-04' AS Date), CAST(251.80271 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (360, CAST(N'2010-06-05' AS Date), CAST(256.45175 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (361, CAST(N'2010-06-06' AS Date), CAST(257.65861 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (362, CAST(N'2010-06-07' AS Date), CAST(265.15459 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (363, CAST(N'2010-06-08' AS Date), CAST(262.41630 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (364, CAST(N'2010-06-09' AS Date), CAST(268.57837 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (365, CAST(N'2010-06-10' AS Date), CAST(257.98768 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (366, CAST(N'2010-06-11' AS Date), CAST(259.22269 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (367, CAST(N'2010-06-12' AS Date), CAST(254.91338 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (368, CAST(N'2010-06-13' AS Date), CAST(250.55584 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (369, CAST(N'2010-06-14' AS Date), CAST(252.99343 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (370, CAST(N'2010-06-17' AS Date), CAST(252.01483 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (371, CAST(N'2010-06-18' AS Date), CAST(273.26690 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (372, CAST(N'2010-06-19' AS Date), CAST(274.85617 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (373, CAST(N'2010-06-20' AS Date), CAST(271.07492 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (374, CAST(N'2010-06-21' AS Date), CAST(269.65005 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (375, CAST(N'2010-06-22' AS Date), CAST(266.24200 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (376, CAST(N'2010-06-23' AS Date), CAST(270.82054 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (377, CAST(N'2010-06-24' AS Date), CAST(266.76725 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (378, CAST(N'2010-06-25' AS Date), CAST(266.26281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (379, CAST(N'2010-06-26' AS Date), CAST(268.04616 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (380, CAST(N'2010-06-27' AS Date), CAST(266.26538 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (381, CAST(N'2010-06-28' AS Date), CAST(263.43986 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (382, CAST(N'2010-06-29' AS Date), CAST(264.56418 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (383, CAST(N'2010-06-30' AS Date), CAST(278.25399 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (384, CAST(N'2010-07-01' AS Date), CAST(272.26549 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (385, CAST(N'2010-07-02' AS Date), CAST(270.18251 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (386, CAST(N'2010-07-03' AS Date), CAST(255.81226 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (387, CAST(N'2010-07-04' AS Date), CAST(256.81211 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (388, CAST(N'2010-07-05' AS Date), CAST(253.58601 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (389, CAST(N'2010-07-06' AS Date), CAST(256.79736 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (390, CAST(N'2010-07-07' AS Date), CAST(257.33564 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (391, CAST(N'2010-07-08' AS Date), CAST(259.85322 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (392, CAST(N'2010-07-09' AS Date), CAST(261.45547 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (393, CAST(N'2010-07-10' AS Date), CAST(284.92114 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (394, CAST(N'2010-07-11' AS Date), CAST(272.21588 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (395, CAST(N'2010-07-12' AS Date), CAST(267.00351 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (396, CAST(N'2010-07-13' AS Date), CAST(267.15431 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (397, CAST(N'2010-07-14' AS Date), CAST(274.94588 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (398, CAST(N'2010-07-15' AS Date), CAST(262.96940 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (399, CAST(N'2010-07-16' AS Date), CAST(259.80215 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (400, CAST(N'2010-07-17' AS Date), CAST(258.52143 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (401, CAST(N'2010-07-18' AS Date), CAST(260.91545 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (402, CAST(N'2010-07-28' AS Date), CAST(268.36288 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (403, CAST(N'2010-07-29' AS Date), CAST(261.49743 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (404, CAST(N'2010-07-30' AS Date), CAST(273.09798 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (405, CAST(N'2010-07-31' AS Date), CAST(271.62343 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (406, CAST(N'2010-08-01' AS Date), CAST(269.52518 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (407, CAST(N'2010-08-02' AS Date), CAST(269.96521 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (408, CAST(N'2010-08-03' AS Date), CAST(272.83275 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (409, CAST(N'2010-08-04' AS Date), CAST(267.97971 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (410, CAST(N'2010-08-05' AS Date), CAST(269.49346 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (411, CAST(N'2010-08-06' AS Date), CAST(265.91817 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (412, CAST(N'2010-08-07' AS Date), CAST(263.95795 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (413, CAST(N'2010-08-08' AS Date), CAST(263.30626 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (414, CAST(N'2010-08-09' AS Date), CAST(255.34851 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (415, CAST(N'2010-08-10' AS Date), CAST(259.99520 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (416, CAST(N'2010-08-11' AS Date), CAST(259.61780 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (417, CAST(N'2010-08-12' AS Date), CAST(254.28340 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (418, CAST(N'2010-08-13' AS Date), CAST(241.93122 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (419, CAST(N'2010-08-14' AS Date), CAST(261.07072 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (420, CAST(N'2010-08-15' AS Date), CAST(257.25360 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (421, CAST(N'2010-08-16' AS Date), CAST(254.75427 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (422, CAST(N'2010-08-17' AS Date), CAST(256.73840 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (423, CAST(N'2010-08-18' AS Date), CAST(261.16041 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (424, CAST(N'2010-08-19' AS Date), CAST(247.18107 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (425, CAST(N'2010-08-20' AS Date), CAST(252.98112 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (426, CAST(N'2010-08-21' AS Date), CAST(253.63340 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (427, CAST(N'2010-08-22' AS Date), CAST(258.64566 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (428, CAST(N'2010-08-23' AS Date), CAST(252.03311 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (429, CAST(N'2010-08-24' AS Date), CAST(259.38206 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (430, CAST(N'2010-08-25' AS Date), CAST(256.26462 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (431, CAST(N'2010-08-26' AS Date), CAST(260.81575 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (432, CAST(N'2010-08-27' AS Date), CAST(257.88436 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (433, CAST(N'2010-08-28' AS Date), CAST(252.04907 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (434, CAST(N'2010-08-29' AS Date), CAST(256.05949 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (435, CAST(N'2010-08-30' AS Date), CAST(249.04247 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (436, CAST(N'2010-08-31' AS Date), CAST(245.16905 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (437, CAST(N'2010-09-01' AS Date), CAST(248.65686 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (438, CAST(N'2010-09-02' AS Date), CAST(253.69703 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (439, CAST(N'2010-09-03' AS Date), CAST(263.03844 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (440, CAST(N'2010-09-04' AS Date), CAST(261.61105 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (441, CAST(N'2010-09-05' AS Date), CAST(272.31059 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (442, CAST(N'2010-09-06' AS Date), CAST(262.95283 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (443, CAST(N'2010-09-07' AS Date), CAST(262.30730 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (444, CAST(N'2010-09-08' AS Date), CAST(260.53898 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (445, CAST(N'2010-09-09' AS Date), CAST(260.36885 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (446, CAST(N'2010-09-10' AS Date), CAST(267.37617 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (447, CAST(N'2010-09-11' AS Date), CAST(260.41448 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (448, CAST(N'2010-09-14' AS Date), CAST(259.75325 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (449, CAST(N'2010-09-15' AS Date), CAST(272.38328 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (450, CAST(N'2010-09-16' AS Date), CAST(269.11069 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (451, CAST(N'2010-09-18' AS Date), CAST(264.43959 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (452, CAST(N'2010-09-19' AS Date), CAST(269.88795 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (453, CAST(N'2010-09-20' AS Date), CAST(267.59643 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (454, CAST(N'2010-09-21' AS Date), CAST(264.14805 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (455, CAST(N'2010-09-22' AS Date), CAST(253.27578 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (456, CAST(N'2010-09-23' AS Date), CAST(270.28394 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (457, CAST(N'2010-09-24' AS Date), CAST(245.82132 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (458, CAST(N'2010-09-25' AS Date), CAST(255.48528 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (459, CAST(N'2010-09-26' AS Date), CAST(279.24207 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (460, CAST(N'2010-09-27' AS Date), CAST(267.35872 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (461, CAST(N'2010-09-28' AS Date), CAST(271.08928 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (462, CAST(N'2010-09-29' AS Date), CAST(276.40429 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (463, CAST(N'2010-09-30' AS Date), CAST(275.65814 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (464, CAST(N'2010-10-01' AS Date), CAST(272.16550 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (465, CAST(N'2010-10-02' AS Date), CAST(276.11345 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (466, CAST(N'2010-10-03' AS Date), CAST(280.09571 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (467, CAST(N'2010-10-04' AS Date), CAST(295.33461 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (468, CAST(N'2010-10-05' AS Date), CAST(292.21152 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (469, CAST(N'2010-10-06' AS Date), CAST(287.56506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (470, CAST(N'2010-10-07' AS Date), CAST(284.50660 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (471, CAST(N'2010-10-08' AS Date), CAST(267.35867 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (472, CAST(N'2010-10-09' AS Date), CAST(265.41899 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (473, CAST(N'2010-10-18' AS Date), CAST(1.90431 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (474, CAST(N'2010-10-20' AS Date), CAST(275.20654 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (475, CAST(N'2010-10-21' AS Date), CAST(270.01530 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (476, CAST(N'2010-10-22' AS Date), CAST(272.85367 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (477, CAST(N'2010-10-23' AS Date), CAST(274.07901 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (478, CAST(N'2010-10-24' AS Date), CAST(277.24287 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (479, CAST(N'2010-10-25' AS Date), CAST(274.08448 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (480, CAST(N'2010-10-26' AS Date), CAST(292.63534 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (481, CAST(N'2010-10-27' AS Date), CAST(257.90427 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (482, CAST(N'2010-10-28' AS Date), CAST(259.52584 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (483, CAST(N'2011-03-03' AS Date), CAST(148.20184 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (484, CAST(N'2011-04-29' AS Date), CAST(272.18684 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (485, CAST(N'2011-04-30' AS Date), CAST(289.65425 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (486, CAST(N'2011-05-01' AS Date), CAST(281.64509 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (487, CAST(N'2011-05-02' AS Date), CAST(279.40512 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (488, CAST(N'2011-05-03' AS Date), CAST(280.20419 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (489, CAST(N'2011-05-04' AS Date), CAST(289.32601 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (490, CAST(N'2011-05-05' AS Date), CAST(280.85511 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (491, CAST(N'2011-05-06' AS Date), CAST(279.71859 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (492, CAST(N'2011-05-07' AS Date), CAST(282.80737 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (493, CAST(N'2011-05-08' AS Date), CAST(282.71233 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (494, CAST(N'2011-05-09' AS Date), CAST(274.54818 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (495, CAST(N'2011-05-10' AS Date), CAST(278.01049 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (496, CAST(N'2011-05-11' AS Date), CAST(274.68656 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (497, CAST(N'2011-05-12' AS Date), CAST(273.81577 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (498, CAST(N'2011-05-13' AS Date), CAST(278.02330 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (499, CAST(N'2011-05-14' AS Date), CAST(278.93922 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (500, CAST(N'2011-05-15' AS Date), CAST(288.20569 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (501, CAST(N'2011-05-16' AS Date), CAST(298.21354 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (502, CAST(N'2011-05-17' AS Date), CAST(299.37835 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (503, CAST(N'2011-05-18' AS Date), CAST(300.38538 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (504, CAST(N'2011-05-19' AS Date), CAST(294.06568 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (505, CAST(N'2011-05-20' AS Date), CAST(300.98679 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (506, CAST(N'2011-05-21' AS Date), CAST(292.51136 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (507, CAST(N'2011-05-27' AS Date), CAST(250.77108 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (508, CAST(N'2011-05-28' AS Date), CAST(261.93971 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (509, CAST(N'2011-05-29' AS Date), CAST(253.60548 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (510, CAST(N'2011-05-30' AS Date), CAST(273.66436 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (511, CAST(N'2011-05-31' AS Date), CAST(255.30398 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (512, CAST(N'2011-06-01' AS Date), CAST(257.77039 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (513, CAST(N'2011-06-02' AS Date), CAST(259.16198 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (514, CAST(N'2011-06-03' AS Date), CAST(263.18161 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (515, CAST(N'2011-06-04' AS Date), CAST(240.45614 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (516, CAST(N'2011-06-05' AS Date), CAST(247.15398 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (517, CAST(N'2011-06-06' AS Date), CAST(274.95171 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (518, CAST(N'2011-06-07' AS Date), CAST(248.67868 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (519, CAST(N'2011-06-08' AS Date), CAST(251.01484 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (520, CAST(N'2011-06-09' AS Date), CAST(264.20648 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (521, CAST(N'2011-06-10' AS Date), CAST(252.45585 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (522, CAST(N'2011-06-11' AS Date), CAST(257.48151 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (523, CAST(N'2011-06-12' AS Date), CAST(261.55632 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (524, CAST(N'2011-06-13' AS Date), CAST(246.17774 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (525, CAST(N'2011-06-14' AS Date), CAST(245.76174 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (526, CAST(N'2011-06-15' AS Date), CAST(242.88576 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (527, CAST(N'2011-06-16' AS Date), CAST(249.51702 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (528, CAST(N'2011-06-17' AS Date), CAST(253.88880 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (529, CAST(N'2011-06-18' AS Date), CAST(263.70506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (530, CAST(N'2011-06-19' AS Date), CAST(261.30064 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (531, CAST(N'2011-06-20' AS Date), CAST(248.77158 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (532, CAST(N'2011-06-21' AS Date), CAST(259.85030 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (533, CAST(N'2011-06-22' AS Date), CAST(244.66685 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (534, CAST(N'2011-06-23' AS Date), CAST(240.50145 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (535, CAST(N'2011-06-24' AS Date), CAST(239.02801 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (536, CAST(N'2011-06-25' AS Date), CAST(236.10215 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (537, CAST(N'2011-06-26' AS Date), CAST(245.76059 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (538, CAST(N'2011-06-27' AS Date), CAST(245.64038 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (539, CAST(N'2011-07-01' AS Date), CAST(238.21641 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (540, CAST(N'2011-07-02' AS Date), CAST(236.90637 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (541, CAST(N'2011-07-03' AS Date), CAST(236.28798 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (542, CAST(N'2011-07-04' AS Date), CAST(242.27183 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (543, CAST(N'2011-07-05' AS Date), CAST(236.24410 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (544, CAST(N'2011-07-06' AS Date), CAST(223.01404 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (545, CAST(N'2011-07-07' AS Date), CAST(222.04155 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (546, CAST(N'2011-07-08' AS Date), CAST(228.30510 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (547, CAST(N'2011-07-09' AS Date), CAST(231.35263 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (548, CAST(N'2011-07-10' AS Date), CAST(230.61941 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (549, CAST(N'2011-07-11' AS Date), CAST(238.89969 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (550, CAST(N'2011-07-12' AS Date), CAST(236.84142 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (551, CAST(N'2011-07-13' AS Date), CAST(252.04333 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (552, CAST(N'2011-07-14' AS Date), CAST(247.99792 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (553, CAST(N'2011-07-15' AS Date), CAST(254.31205 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (554, CAST(N'2011-07-16' AS Date), CAST(258.12221 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (555, CAST(N'2011-07-17' AS Date), CAST(250.90730 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (556, CAST(N'2011-07-18' AS Date), CAST(244.17100 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (557, CAST(N'2011-07-19' AS Date), CAST(242.34169 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (558, CAST(N'2011-07-20' AS Date), CAST(238.41506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (559, CAST(N'2011-07-21' AS Date), CAST(239.66341 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (560, CAST(N'2011-07-22' AS Date), CAST(232.64758 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (561, CAST(N'2011-07-23' AS Date), CAST(243.20950 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (562, CAST(N'2011-07-24' AS Date), CAST(239.63712 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (563, CAST(N'2011-07-25' AS Date), CAST(240.26832 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (564, CAST(N'2011-07-26' AS Date), CAST(226.51194 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (565, CAST(N'2011-07-27' AS Date), CAST(240.33848 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (566, CAST(N'2011-07-28' AS Date), CAST(232.63023 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (567, CAST(N'2011-07-29' AS Date), CAST(229.79842 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (568, CAST(N'2011-07-30' AS Date), CAST(231.36864 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (569, CAST(N'2011-07-31' AS Date), CAST(225.25679 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (570, CAST(N'2011-08-01' AS Date), CAST(218.89249 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (571, CAST(N'2011-08-02' AS Date), CAST(222.32911 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (572, CAST(N'2011-08-03' AS Date), CAST(223.36801 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (573, CAST(N'2011-08-05' AS Date), CAST(247.42106 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (574, CAST(N'2011-08-06' AS Date), CAST(241.77775 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (575, CAST(N'2011-08-07' AS Date), CAST(246.54205 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (576, CAST(N'2011-08-15' AS Date), CAST(243.55200 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (577, CAST(N'2011-08-16' AS Date), CAST(247.73275 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (578, CAST(N'2011-08-17' AS Date), CAST(242.15304 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (579, CAST(N'2011-08-18' AS Date), CAST(260.25180 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (580, CAST(N'2011-08-19' AS Date), CAST(258.32327 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (581, CAST(N'2011-08-20' AS Date), CAST(258.86777 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (582, CAST(N'2011-08-21' AS Date), CAST(255.02765 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (583, CAST(N'2011-08-22' AS Date), CAST(260.36543 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (584, CAST(N'2011-08-23' AS Date), CAST(252.02694 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (585, CAST(N'2011-08-24' AS Date), CAST(251.55078 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (586, CAST(N'2011-08-25' AS Date), CAST(253.46140 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (587, CAST(N'2011-08-26' AS Date), CAST(259.94004 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (588, CAST(N'2011-08-27' AS Date), CAST(392.76888 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (589, CAST(N'2011-09-03' AS Date), CAST(242.39529 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (590, CAST(N'2011-09-04' AS Date), CAST(239.89408 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (591, CAST(N'2011-09-05' AS Date), CAST(247.28070 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (592, CAST(N'2011-09-06' AS Date), CAST(257.30701 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (593, CAST(N'2011-09-07' AS Date), CAST(252.84128 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (594, CAST(N'2011-09-08' AS Date), CAST(251.10054 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (595, CAST(N'2011-09-09' AS Date), CAST(252.47867 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (596, CAST(N'2011-09-10' AS Date), CAST(248.96527 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (597, CAST(N'2011-09-11' AS Date), CAST(249.08802 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (598, CAST(N'2011-09-12' AS Date), CAST(230.88234 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (599, CAST(N'2011-09-13' AS Date), CAST(217.29926 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (600, CAST(N'2011-09-14' AS Date), CAST(223.75329 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (601, CAST(N'2011-09-15' AS Date), CAST(234.04954 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (602, CAST(N'2011-09-17' AS Date), CAST(233.72209 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (603, CAST(N'2011-09-18' AS Date), CAST(245.42174 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (604, CAST(N'2011-09-19' AS Date), CAST(242.98033 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (605, CAST(N'2011-09-20' AS Date), CAST(245.58350 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (606, CAST(N'2011-09-21' AS Date), CAST(244.36795 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (607, CAST(N'2011-09-22' AS Date), CAST(242.46509 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (608, CAST(N'2011-09-23' AS Date), CAST(248.32089 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (609, CAST(N'2011-09-24' AS Date), CAST(240.94597 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (610, CAST(N'2011-09-25' AS Date), CAST(266.14402 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (611, CAST(N'2011-09-26' AS Date), CAST(265.81885 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (612, CAST(N'2011-09-27' AS Date), CAST(261.72971 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (613, CAST(N'2011-09-28' AS Date), CAST(265.91075 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (614, CAST(N'2011-09-29' AS Date), CAST(239.76535 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (615, CAST(N'2011-09-30' AS Date), CAST(259.50174 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (616, CAST(N'2011-10-01' AS Date), CAST(269.64214 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (617, CAST(N'2011-10-02' AS Date), CAST(275.62281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (618, CAST(N'2011-10-03' AS Date), CAST(271.90624 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (619, CAST(N'2011-10-04' AS Date), CAST(269.77214 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (620, CAST(N'2011-10-05' AS Date), CAST(266.96277 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (621, CAST(N'2011-10-06' AS Date), CAST(259.12903 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (622, CAST(N'2011-10-07' AS Date), CAST(250.99691 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (623, CAST(N'2011-10-08' AS Date), CAST(242.70264 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (624, CAST(N'2011-10-09' AS Date), CAST(248.00444 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (625, CAST(N'2011-10-10' AS Date), CAST(247.37486 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (626, CAST(N'2011-10-11' AS Date), CAST(251.62822 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (627, CAST(N'2011-10-12' AS Date), CAST(257.98036 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (628, CAST(N'2011-10-13' AS Date), CAST(267.57173 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (629, CAST(N'2011-10-14' AS Date), CAST(262.52557 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (630, CAST(N'2011-10-15' AS Date), CAST(263.93651 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (631, CAST(N'2011-10-17' AS Date), CAST(21.09268 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (632, CAST(N'2011-10-20' AS Date), CAST(4.62525 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (633, CAST(N'2011-10-23' AS Date), CAST(279.21086 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (634, CAST(N'2011-10-24' AS Date), CAST(253.73609 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (635, CAST(N'2011-10-25' AS Date), CAST(259.61791 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (636, CAST(N'2011-10-26' AS Date), CAST(257.22868 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (637, CAST(N'2011-10-27' AS Date), CAST(259.04207 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (638, CAST(N'2011-10-28' AS Date), CAST(266.64059 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (639, CAST(N'2011-10-29' AS Date), CAST(278.63162 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (640, CAST(N'2011-10-30' AS Date), CAST(265.89392 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (641, CAST(N'2011-10-31' AS Date), CAST(261.54640 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (642, CAST(N'2011-11-01' AS Date), CAST(263.81335 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (643, CAST(N'2011-11-02' AS Date), CAST(256.31025 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (644, CAST(N'2011-11-03' AS Date), CAST(257.40053 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (645, CAST(N'2011-11-04' AS Date), CAST(261.83057 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (646, CAST(N'2011-11-05' AS Date), CAST(264.27532 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (647, CAST(N'2011-11-06' AS Date), CAST(247.97320 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (648, CAST(N'2011-11-10' AS Date), CAST(0.74522 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (649, CAST(N'2011-11-11' AS Date), CAST(241.97814 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (650, CAST(N'2011-11-12' AS Date), CAST(258.13736 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (651, CAST(N'2011-11-13' AS Date), CAST(257.59268 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (652, CAST(N'2011-11-15' AS Date), CAST(231.66120 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (653, CAST(N'2011-11-16' AS Date), CAST(240.43785 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (654, CAST(N'2011-11-17' AS Date), CAST(265.59293 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (655, CAST(N'2011-11-18' AS Date), CAST(241.67585 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (656, CAST(N'2011-11-19' AS Date), CAST(245.90870 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (657, CAST(N'2011-11-20' AS Date), CAST(246.97115 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (658, CAST(N'2011-11-21' AS Date), CAST(241.96949 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (659, CAST(N'2011-11-22' AS Date), CAST(244.11671 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (660, CAST(N'2011-11-23' AS Date), CAST(275.89629 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (661, CAST(N'2011-11-24' AS Date), CAST(258.44945 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (662, CAST(N'2011-11-25' AS Date), CAST(263.74431 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (663, CAST(N'2011-11-26' AS Date), CAST(251.39490 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (664, CAST(N'2011-11-27' AS Date), CAST(251.84439 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (665, CAST(N'2011-11-28' AS Date), CAST(239.37179 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (666, CAST(N'2011-11-29' AS Date), CAST(251.84071 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (667, CAST(N'2011-11-30' AS Date), CAST(242.56536 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (668, CAST(N'2011-12-01' AS Date), CAST(248.74885 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (669, CAST(N'2011-12-02' AS Date), CAST(236.30810 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (670, CAST(N'2011-12-03' AS Date), CAST(236.07709 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (671, CAST(N'2011-12-04' AS Date), CAST(235.15837 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (672, CAST(N'2011-12-05' AS Date), CAST(234.29530 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (673, CAST(N'2011-12-06' AS Date), CAST(229.45095 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (674, CAST(N'2011-12-23' AS Date), CAST(246.74867 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (675, CAST(N'2011-12-24' AS Date), CAST(256.55826 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (676, CAST(N'2011-12-25' AS Date), CAST(252.48664 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (677, CAST(N'2011-12-26' AS Date), CAST(256.21195 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (678, CAST(N'2011-12-28' AS Date), CAST(246.47244 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (679, CAST(N'2011-12-30' AS Date), CAST(247.29748 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (680, CAST(N'2011-12-31' AS Date), CAST(245.77724 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (681, CAST(N'2012-01-01' AS Date), CAST(240.68238 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (682, CAST(N'2012-01-02' AS Date), CAST(244.28033 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (683, CAST(N'2012-01-03' AS Date), CAST(248.14114 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (684, CAST(N'2012-01-04' AS Date), CAST(242.36004 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (685, CAST(N'2012-01-06' AS Date), CAST(235.20233 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (686, CAST(N'2012-01-07' AS Date), CAST(235.64429 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (687, CAST(N'2012-01-08' AS Date), CAST(241.29602 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (688, CAST(N'2012-01-09' AS Date), CAST(243.61210 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (689, CAST(N'2012-01-10' AS Date), CAST(238.87481 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (690, CAST(N'2012-01-11' AS Date), CAST(240.25921 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (691, CAST(N'2012-01-12' AS Date), CAST(240.45135 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (692, CAST(N'2012-01-13' AS Date), CAST(250.91514 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (693, CAST(N'2012-01-14' AS Date), CAST(262.30621 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (694, CAST(N'2012-01-15' AS Date), CAST(276.03423 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (695, CAST(N'2012-01-16' AS Date), CAST(268.13481 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (696, CAST(N'2012-01-17' AS Date), CAST(261.07954 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (697, CAST(N'2012-01-18' AS Date), CAST(263.16559 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (698, CAST(N'2012-01-19' AS Date), CAST(262.48415 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (699, CAST(N'2012-01-20' AS Date), CAST(265.80024 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (700, CAST(N'2012-01-21' AS Date), CAST(272.03145 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (701, CAST(N'2012-01-22' AS Date), CAST(273.18865 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (702, CAST(N'2012-01-23' AS Date), CAST(258.49187 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (703, CAST(N'2012-01-24' AS Date), CAST(256.50401 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (704, CAST(N'2012-01-25' AS Date), CAST(263.21002 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (705, CAST(N'2012-01-26' AS Date), CAST(263.76182 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (706, CAST(N'2012-01-27' AS Date), CAST(250.23401 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (707, CAST(N'2012-01-28' AS Date), CAST(265.79637 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (708, CAST(N'2012-01-29' AS Date), CAST(263.64754 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (709, CAST(N'2012-01-30' AS Date), CAST(265.83144 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (710, CAST(N'2012-01-31' AS Date), CAST(255.52335 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (711, CAST(N'2012-02-01' AS Date), CAST(248.69604 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (712, CAST(N'2012-02-08' AS Date), CAST(308.67663 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (713, CAST(N'2012-02-16' AS Date), CAST(249.62953 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (714, CAST(N'2012-02-17' AS Date), CAST(240.39938 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (715, CAST(N'2012-02-18' AS Date), CAST(234.20985 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (716, CAST(N'2012-02-19' AS Date), CAST(225.47700 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (717, CAST(N'2012-02-20' AS Date), CAST(224.68034 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (718, CAST(N'2012-02-21' AS Date), CAST(225.12314 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (719, CAST(N'2012-02-22' AS Date), CAST(225.37977 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (720, CAST(N'2012-02-23' AS Date), CAST(226.56008 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (721, CAST(N'2012-02-24' AS Date), CAST(254.87628 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (722, CAST(N'2012-02-25' AS Date), CAST(246.52927 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (723, CAST(N'2012-02-26' AS Date), CAST(249.30002 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (724, CAST(N'2012-02-27' AS Date), CAST(240.49292 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (725, CAST(N'2012-02-28' AS Date), CAST(253.47108 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (726, CAST(N'2012-02-29' AS Date), CAST(261.57150 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (727, CAST(N'2012-03-01' AS Date), CAST(291.65684 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (728, CAST(N'2012-03-02' AS Date), CAST(313.73112 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (729, CAST(N'2012-03-03' AS Date), CAST(306.71956 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (730, CAST(N'2012-03-04' AS Date), CAST(310.33081 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (731, CAST(N'2012-03-05' AS Date), CAST(314.42665 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (732, CAST(N'2012-03-06' AS Date), CAST(311.75611 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (733, CAST(N'2012-03-07' AS Date), CAST(325.29632 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (734, CAST(N'2012-03-18' AS Date), CAST(249.63788 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (735, CAST(N'2012-03-19' AS Date), CAST(245.36410 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (736, CAST(N'2012-03-20' AS Date), CAST(380.15474 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (737, CAST(N'2012-03-21' AS Date), CAST(283.71342 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (738, CAST(N'2012-03-22' AS Date), CAST(286.91690 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (739, CAST(N'2012-03-23' AS Date), CAST(277.14106 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (740, CAST(N'2012-03-24' AS Date), CAST(290.25906 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (741, CAST(N'2012-03-25' AS Date), CAST(289.22783 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (742, CAST(N'2012-03-26' AS Date), CAST(282.43817 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (743, CAST(N'2012-03-27' AS Date), CAST(285.69764 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (744, CAST(N'2012-03-28' AS Date), CAST(278.31357 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (745, CAST(N'2012-03-29' AS Date), CAST(278.86252 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (746, CAST(N'2012-03-30' AS Date), CAST(278.92235 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (747, CAST(N'2012-03-31' AS Date), CAST(285.19138 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (748, CAST(N'2012-04-01' AS Date), CAST(283.07398 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (749, CAST(N'2012-04-02' AS Date), CAST(286.84966 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (750, CAST(N'2012-04-03' AS Date), CAST(279.17298 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (751, CAST(N'2012-04-04' AS Date), CAST(283.64941 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (752, CAST(N'2012-04-05' AS Date), CAST(284.58193 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (753, CAST(N'2012-04-06' AS Date), CAST(291.09281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (754, CAST(N'2012-04-07' AS Date), CAST(285.28941 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (755, CAST(N'2012-04-08' AS Date), CAST(279.85806 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (756, CAST(N'2012-04-09' AS Date), CAST(282.60545 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (757, CAST(N'2012-04-10' AS Date), CAST(255.97433 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (758, CAST(N'2012-04-11' AS Date), CAST(251.01328 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (759, CAST(N'2012-04-12' AS Date), CAST(251.61955 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (760, CAST(N'2012-04-13' AS Date), CAST(248.56956 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (761, CAST(N'2012-04-14' AS Date), CAST(244.13058 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (762, CAST(N'2012-04-15' AS Date), CAST(243.16276 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (763, CAST(N'2012-04-16' AS Date), CAST(240.50563 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (764, CAST(N'2012-04-18' AS Date), CAST(251.67296 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (765, CAST(N'2012-04-19' AS Date), CAST(247.53310 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (766, CAST(N'2012-04-20' AS Date), CAST(229.57421 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (767, CAST(N'2012-04-21' AS Date), CAST(222.36057 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (768, CAST(N'2012-04-26' AS Date), CAST(242.87589 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (769, CAST(N'2012-04-27' AS Date), CAST(248.79434 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (770, CAST(N'2012-04-28' AS Date), CAST(242.61343 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (771, CAST(N'2012-04-29' AS Date), CAST(242.09869 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (772, CAST(N'2012-04-30' AS Date), CAST(244.46308 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (773, CAST(N'2012-05-01' AS Date), CAST(248.40752 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (774, CAST(N'2012-05-02' AS Date), CAST(261.74582 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (775, CAST(N'2012-05-03' AS Date), CAST(250.67327 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (776, CAST(N'2012-05-04' AS Date), CAST(241.91568 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (777, CAST(N'2012-05-05' AS Date), CAST(251.02203 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (778, CAST(N'2012-05-06' AS Date), CAST(255.39151 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (779, CAST(N'2012-05-07' AS Date), CAST(247.24393 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (780, CAST(N'2012-05-08' AS Date), CAST(249.30982 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (781, CAST(N'2012-05-09' AS Date), CAST(248.88938 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (782, CAST(N'2012-05-10' AS Date), CAST(250.63120 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (783, CAST(N'2012-05-12' AS Date), CAST(276.23803 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (784, CAST(N'2012-05-13' AS Date), CAST(272.06494 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (785, CAST(N'2012-05-14' AS Date), CAST(276.48060 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (786, CAST(N'2012-05-15' AS Date), CAST(278.04394 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (787, CAST(N'2012-05-16' AS Date), CAST(276.09212 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (788, CAST(N'2012-05-17' AS Date), CAST(280.91690 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (789, CAST(N'2012-05-18' AS Date), CAST(284.82109 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (790, CAST(N'2012-05-19' AS Date), CAST(280.80496 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (791, CAST(N'2012-05-20' AS Date), CAST(282.48525 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (792, CAST(N'2012-05-21' AS Date), CAST(287.05217 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (793, CAST(N'2012-05-22' AS Date), CAST(286.51109 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (794, CAST(N'2012-05-23' AS Date), CAST(277.82488 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (795, CAST(N'2012-05-24' AS Date), CAST(277.76730 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (796, CAST(N'2012-05-25' AS Date), CAST(272.37538 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (797, CAST(N'2012-05-26' AS Date), CAST(273.58001 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (798, CAST(N'2012-05-27' AS Date), CAST(270.51427 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (799, CAST(N'2012-05-28' AS Date), CAST(268.78658 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (800, CAST(N'2012-05-29' AS Date), CAST(267.07394 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (801, CAST(N'2012-05-30' AS Date), CAST(271.45340 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (802, CAST(N'2012-05-31' AS Date), CAST(268.80251 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (803, CAST(N'2012-06-01' AS Date), CAST(272.01236 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (804, CAST(N'2012-06-02' AS Date), CAST(269.00149 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (805, CAST(N'2012-06-03' AS Date), CAST(267.60083 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (806, CAST(N'2012-06-04' AS Date), CAST(251.17584 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (807, CAST(N'2012-06-05' AS Date), CAST(255.48978 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (808, CAST(N'2012-06-06' AS Date), CAST(251.03599 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (809, CAST(N'2012-06-07' AS Date), CAST(256.97453 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (810, CAST(N'2012-06-08' AS Date), CAST(250.30425 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (811, CAST(N'2012-06-09' AS Date), CAST(250.31841 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (812, CAST(N'2012-06-10' AS Date), CAST(257.92171 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (813, CAST(N'2012-06-11' AS Date), CAST(255.91572 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (814, CAST(N'2012-06-12' AS Date), CAST(260.33666 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (815, CAST(N'2012-06-13' AS Date), CAST(257.59482 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (816, CAST(N'2012-06-14' AS Date), CAST(255.95484 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (817, CAST(N'2012-06-15' AS Date), CAST(255.27881 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (818, CAST(N'2012-06-16' AS Date), CAST(256.51593 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (819, CAST(N'2012-06-17' AS Date), CAST(255.26441 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (820, CAST(N'2012-06-18' AS Date), CAST(251.24981 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (821, CAST(N'2012-06-19' AS Date), CAST(243.82902 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (822, CAST(N'2012-06-20' AS Date), CAST(242.31083 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (823, CAST(N'2012-06-21' AS Date), CAST(245.21998 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (824, CAST(N'2012-06-22' AS Date), CAST(252.79964 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (825, CAST(N'2012-06-23' AS Date), CAST(259.33672 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (826, CAST(N'2012-06-24' AS Date), CAST(263.76971 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (827, CAST(N'2012-06-25' AS Date), CAST(339.08673 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (828, CAST(N'2012-06-26' AS Date), CAST(273.28411 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (829, CAST(N'2012-06-27' AS Date), CAST(268.80080 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (830, CAST(N'2012-06-28' AS Date), CAST(260.66561 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (831, CAST(N'2012-06-29' AS Date), CAST(265.33061 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (832, CAST(N'2012-06-30' AS Date), CAST(269.28813 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (833, CAST(N'2012-07-01' AS Date), CAST(269.68213 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (834, CAST(N'2012-07-02' AS Date), CAST(270.59046 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (835, CAST(N'2012-07-03' AS Date), CAST(272.14727 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (836, CAST(N'2012-07-04' AS Date), CAST(278.53948 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (837, CAST(N'2012-07-05' AS Date), CAST(279.68490 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (838, CAST(N'2012-07-06' AS Date), CAST(290.08640 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (839, CAST(N'2012-07-07' AS Date), CAST(221.64820 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (840, CAST(N'2012-07-08' AS Date), CAST(238.88794 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (841, CAST(N'2012-07-09' AS Date), CAST(263.35172 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (842, CAST(N'2012-07-10' AS Date), CAST(259.52558 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (843, CAST(N'2012-07-11' AS Date), CAST(258.73614 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (844, CAST(N'2012-07-12' AS Date), CAST(307.60753 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (845, CAST(N'2012-07-13' AS Date), CAST(257.21188 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (846, CAST(N'2012-07-14' AS Date), CAST(264.11602 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (847, CAST(N'2012-07-15' AS Date), CAST(254.10587 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (848, CAST(N'2012-07-16' AS Date), CAST(236.01494 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (849, CAST(N'2012-07-17' AS Date), CAST(224.39734 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (850, CAST(N'2012-07-18' AS Date), CAST(213.01589 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (851, CAST(N'2012-07-19' AS Date), CAST(252.74397 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (852, CAST(N'2012-07-20' AS Date), CAST(257.90721 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (853, CAST(N'2012-07-21' AS Date), CAST(260.64886 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (854, CAST(N'2012-07-22' AS Date), CAST(251.79783 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (855, CAST(N'2012-07-23' AS Date), CAST(249.12421 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (856, CAST(N'2012-07-24' AS Date), CAST(247.31486 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (857, CAST(N'2012-07-26' AS Date), CAST(248.82956 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (858, CAST(N'2012-07-27' AS Date), CAST(250.07193 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (859, CAST(N'2012-07-28' AS Date), CAST(251.07781 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (860, CAST(N'2012-07-29' AS Date), CAST(261.37920 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (861, CAST(N'2012-07-30' AS Date), CAST(254.40240 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (862, CAST(N'2012-07-31' AS Date), CAST(258.32294 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (863, CAST(N'2012-08-01' AS Date), CAST(253.28151 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (864, CAST(N'2012-08-02' AS Date), CAST(250.21199 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (865, CAST(N'2012-08-03' AS Date), CAST(232.39235 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (866, CAST(N'2012-08-04' AS Date), CAST(251.21798 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (867, CAST(N'2012-08-05' AS Date), CAST(249.59113 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (868, CAST(N'2012-08-06' AS Date), CAST(245.71794 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (869, CAST(N'2012-08-07' AS Date), CAST(248.94959 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (870, CAST(N'2012-08-08' AS Date), CAST(246.01399 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (871, CAST(N'2012-08-09' AS Date), CAST(245.17001 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (872, CAST(N'2012-08-10' AS Date), CAST(251.04129 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (873, CAST(N'2012-08-11' AS Date), CAST(246.08906 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (874, CAST(N'2012-08-12' AS Date), CAST(246.07663 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (875, CAST(N'2012-08-13' AS Date), CAST(325.43033 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (876, CAST(N'2012-08-14' AS Date), CAST(255.65217 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (877, CAST(N'2012-08-15' AS Date), CAST(255.81107 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (878, CAST(N'2012-08-16' AS Date), CAST(260.44707 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (879, CAST(N'2012-08-17' AS Date), CAST(246.11231 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (880, CAST(N'2012-08-18' AS Date), CAST(250.78681 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (881, CAST(N'2012-08-19' AS Date), CAST(251.27055 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (882, CAST(N'2012-08-23' AS Date), CAST(284.11665 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (883, CAST(N'2012-08-24' AS Date), CAST(287.78948 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (884, CAST(N'2012-08-25' AS Date), CAST(291.89638 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (885, CAST(N'2012-08-26' AS Date), CAST(287.46093 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (886, CAST(N'2012-08-27' AS Date), CAST(279.02380 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (887, CAST(N'2012-08-28' AS Date), CAST(287.48310 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (888, CAST(N'2012-08-29' AS Date), CAST(285.00590 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (889, CAST(N'2012-08-30' AS Date), CAST(277.34700 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (890, CAST(N'2012-08-31' AS Date), CAST(267.39958 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (891, CAST(N'2012-09-01' AS Date), CAST(251.73764 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (892, CAST(N'2012-09-02' AS Date), CAST(260.71549 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (893, CAST(N'2012-09-03' AS Date), CAST(270.34298 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (894, CAST(N'2012-09-04' AS Date), CAST(266.44499 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (895, CAST(N'2012-09-05' AS Date), CAST(267.13211 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (896, CAST(N'2012-09-06' AS Date), CAST(267.42768 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (897, CAST(N'2012-09-07' AS Date), CAST(262.63071 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (898, CAST(N'2012-09-08' AS Date), CAST(262.57776 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (899, CAST(N'2012-09-09' AS Date), CAST(267.92837 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (900, CAST(N'2012-09-10' AS Date), CAST(262.89910 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (901, CAST(N'2012-09-11' AS Date), CAST(262.67618 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (902, CAST(N'2012-09-12' AS Date), CAST(251.48053 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (903, CAST(N'2012-09-13' AS Date), CAST(262.50600 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (904, CAST(N'2012-09-14' AS Date), CAST(262.49169 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (905, CAST(N'2012-09-15' AS Date), CAST(261.52828 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (906, CAST(N'2012-09-16' AS Date), CAST(261.59551 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (907, CAST(N'2012-09-17' AS Date), CAST(249.57356 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (908, CAST(N'2012-09-18' AS Date), CAST(249.30591 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (909, CAST(N'2012-09-19' AS Date), CAST(255.48443 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (910, CAST(N'2012-09-20' AS Date), CAST(259.61192 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (911, CAST(N'2012-09-21' AS Date), CAST(251.71139 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (912, CAST(N'2012-09-22' AS Date), CAST(246.88449 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (913, CAST(N'2012-09-23' AS Date), CAST(257.56390 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (914, CAST(N'2012-09-24' AS Date), CAST(255.37388 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (915, CAST(N'2012-09-25' AS Date), CAST(249.94678 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (916, CAST(N'2012-09-26' AS Date), CAST(248.81810 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (917, CAST(N'2012-09-27' AS Date), CAST(255.15525 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (918, CAST(N'2012-09-28' AS Date), CAST(249.13264 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (919, CAST(N'2012-09-29' AS Date), CAST(257.07281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (920, CAST(N'2012-09-30' AS Date), CAST(252.41667 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (921, CAST(N'2012-10-01' AS Date), CAST(258.59556 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (922, CAST(N'2012-10-02' AS Date), CAST(259.69113 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (923, CAST(N'2012-10-03' AS Date), CAST(241.05526 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (924, CAST(N'2012-10-04' AS Date), CAST(244.94711 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (925, CAST(N'2012-10-05' AS Date), CAST(247.28841 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (926, CAST(N'2012-10-06' AS Date), CAST(245.76605 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (927, CAST(N'2012-10-07' AS Date), CAST(256.30498 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (928, CAST(N'2012-10-08' AS Date), CAST(256.58753 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (929, CAST(N'2012-10-09' AS Date), CAST(257.32802 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (930, CAST(N'2012-10-10' AS Date), CAST(247.79463 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (931, CAST(N'2012-10-11' AS Date), CAST(253.90526 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (932, CAST(N'2012-10-12' AS Date), CAST(251.81907 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (933, CAST(N'2012-10-13' AS Date), CAST(250.12075 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (934, CAST(N'2012-10-14' AS Date), CAST(241.57445 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (935, CAST(N'2012-10-16' AS Date), CAST(288.55070 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (936, CAST(N'2012-10-17' AS Date), CAST(289.37160 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (937, CAST(N'2012-10-18' AS Date), CAST(288.93293 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (938, CAST(N'2012-10-19' AS Date), CAST(285.18530 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (939, CAST(N'2012-10-20' AS Date), CAST(287.72173 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (940, CAST(N'2012-10-21' AS Date), CAST(291.10822 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (941, CAST(N'2012-10-22' AS Date), CAST(287.83577 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (942, CAST(N'2012-10-23' AS Date), CAST(285.44023 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (943, CAST(N'2012-10-24' AS Date), CAST(288.10282 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (944, CAST(N'2012-10-25' AS Date), CAST(262.82700 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (945, CAST(N'2012-10-26' AS Date), CAST(253.06821 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (946, CAST(N'2012-10-27' AS Date), CAST(257.77759 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (947, CAST(N'2012-10-28' AS Date), CAST(258.72900 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (948, CAST(N'2012-11-04' AS Date), CAST(263.64723 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (949, CAST(N'2012-11-05' AS Date), CAST(267.37931 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (950, CAST(N'2012-11-06' AS Date), CAST(272.45834 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (951, CAST(N'2012-11-07' AS Date), CAST(279.39584 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (952, CAST(N'2012-11-08' AS Date), CAST(278.66188 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (953, CAST(N'2012-11-09' AS Date), CAST(282.95903 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (954, CAST(N'2012-11-10' AS Date), CAST(274.15885 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (955, CAST(N'2012-11-11' AS Date), CAST(267.70745 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (956, CAST(N'2012-11-12' AS Date), CAST(271.66505 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (957, CAST(N'2012-11-13' AS Date), CAST(279.11028 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (958, CAST(N'2012-11-14' AS Date), CAST(272.98459 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (959, CAST(N'2012-11-15' AS Date), CAST(274.46077 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (960, CAST(N'2012-11-16' AS Date), CAST(273.62516 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (961, CAST(N'2012-11-17' AS Date), CAST(263.56430 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (962, CAST(N'2012-11-18' AS Date), CAST(263.39599 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (963, CAST(N'2012-11-19' AS Date), CAST(270.80843 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (964, CAST(N'2012-11-20' AS Date), CAST(267.86160 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (965, CAST(N'2012-11-21' AS Date), CAST(267.24410 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (966, CAST(N'2012-11-22' AS Date), CAST(259.17378 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (967, CAST(N'2012-11-23' AS Date), CAST(251.76187 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (968, CAST(N'2012-11-24' AS Date), CAST(252.67461 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (969, CAST(N'2012-11-25' AS Date), CAST(263.97941 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (970, CAST(N'2012-11-26' AS Date), CAST(257.92648 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (971, CAST(N'2012-11-27' AS Date), CAST(265.16277 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (972, CAST(N'2012-11-28' AS Date), CAST(261.45858 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (973, CAST(N'2012-11-29' AS Date), CAST(262.05369 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (974, CAST(N'2012-11-30' AS Date), CAST(262.58958 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (975, CAST(N'2012-12-01' AS Date), CAST(261.57356 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (976, CAST(N'2012-12-02' AS Date), CAST(255.11798 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (977, CAST(N'2012-12-03' AS Date), CAST(249.77426 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (978, CAST(N'2012-12-04' AS Date), CAST(260.24027 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (979, CAST(N'2012-12-05' AS Date), CAST(260.41315 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (980, CAST(N'2012-12-06' AS Date), CAST(266.40353 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (981, CAST(N'2012-12-07' AS Date), CAST(258.19506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (982, CAST(N'2012-12-08' AS Date), CAST(249.61641 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (983, CAST(N'2012-12-09' AS Date), CAST(255.24170 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (984, CAST(N'2012-12-10' AS Date), CAST(250.74265 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (985, CAST(N'2012-12-11' AS Date), CAST(256.62734 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (986, CAST(N'2012-12-12' AS Date), CAST(270.80409 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (987, CAST(N'2012-12-16' AS Date), CAST(270.14468 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (988, CAST(N'2012-12-17' AS Date), CAST(363.37951 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (989, CAST(N'2012-12-18' AS Date), CAST(290.10251 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (990, CAST(N'2012-12-21' AS Date), CAST(306.08571 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (991, CAST(N'2012-12-22' AS Date), CAST(307.32561 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (992, CAST(N'2012-12-23' AS Date), CAST(304.56753 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (993, CAST(N'2012-12-24' AS Date), CAST(314.73808 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (994, CAST(N'2012-12-25' AS Date), CAST(316.33530 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (995, CAST(N'2012-12-26' AS Date), CAST(329.31467 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (996, CAST(N'2012-12-27' AS Date), CAST(311.89736 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (997, CAST(N'2012-12-28' AS Date), CAST(317.22956 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (998, CAST(N'2012-12-29' AS Date), CAST(338.67606 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (999, CAST(N'2012-12-30' AS Date), CAST(320.54506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1000, CAST(N'2012-12-31' AS Date), CAST(505.31354 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1001, CAST(N'2013-01-01' AS Date), CAST(280.59705 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1002, CAST(N'2013-01-02' AS Date), CAST(274.42109 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1003, CAST(N'2013-01-03' AS Date), CAST(277.96203 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1004, CAST(N'2013-01-04' AS Date), CAST(269.62381 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1005, CAST(N'2013-01-05' AS Date), CAST(277.08949 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1006, CAST(N'2013-01-06' AS Date), CAST(263.77774 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1007, CAST(N'2013-01-07' AS Date), CAST(260.86453 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1008, CAST(N'2013-01-08' AS Date), CAST(250.83198 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1009, CAST(N'2013-01-09' AS Date), CAST(249.52744 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1010, CAST(N'2013-01-10' AS Date), CAST(259.14667 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1011, CAST(N'2013-01-11' AS Date), CAST(261.92378 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1012, CAST(N'2013-01-12' AS Date), CAST(258.68575 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1013, CAST(N'2013-01-13' AS Date), CAST(259.40160 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1014, CAST(N'2013-01-14' AS Date), CAST(256.85352 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1015, CAST(N'2013-01-15' AS Date), CAST(263.86829 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1016, CAST(N'2013-01-16' AS Date), CAST(272.45649 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1017, CAST(N'2013-01-17' AS Date), CAST(268.49718 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1018, CAST(N'2013-01-18' AS Date), CAST(274.90961 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1019, CAST(N'2013-01-19' AS Date), CAST(256.92615 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1020, CAST(N'2013-01-20' AS Date), CAST(254.47423 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1021, CAST(N'2013-01-21' AS Date), CAST(267.94540 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1022, CAST(N'2013-01-22' AS Date), CAST(272.03670 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1023, CAST(N'2013-01-23' AS Date), CAST(270.70091 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1024, CAST(N'2013-01-24' AS Date), CAST(266.47873 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1025, CAST(N'2013-01-25' AS Date), CAST(260.08000 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1026, CAST(N'2013-01-26' AS Date), CAST(263.00217 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1027, CAST(N'2013-01-27' AS Date), CAST(260.68486 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1028, CAST(N'2013-02-02' AS Date), CAST(260.65373 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1029, CAST(N'2013-02-03' AS Date), CAST(262.94215 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1030, CAST(N'2013-02-04' AS Date), CAST(261.67793 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1031, CAST(N'2013-02-06' AS Date), CAST(250.09243 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1032, CAST(N'2013-02-07' AS Date), CAST(258.82503 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1033, CAST(N'2013-02-09' AS Date), CAST(315.87892 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1034, CAST(N'2013-02-10' AS Date), CAST(311.46717 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1035, CAST(N'2013-02-11' AS Date), CAST(297.41830 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1036, CAST(N'2013-02-12' AS Date), CAST(289.43462 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1037, CAST(N'2013-02-13' AS Date), CAST(295.62097 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1038, CAST(N'2013-02-14' AS Date), CAST(292.75309 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1039, CAST(N'2013-02-15' AS Date), CAST(292.38033 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1040, CAST(N'2013-02-16' AS Date), CAST(300.56280 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1041, CAST(N'2013-02-17' AS Date), CAST(364.39024 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1042, CAST(N'2013-02-18' AS Date), CAST(276.37669 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1043, CAST(N'2013-02-19' AS Date), CAST(266.69009 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1044, CAST(N'2013-02-20' AS Date), CAST(271.59575 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1045, CAST(N'2013-02-21' AS Date), CAST(267.76821 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1046, CAST(N'2013-02-22' AS Date), CAST(267.57256 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1047, CAST(N'2013-02-23' AS Date), CAST(263.13809 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1048, CAST(N'2013-02-24' AS Date), CAST(264.21742 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1049, CAST(N'2013-02-25' AS Date), CAST(263.24951 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1050, CAST(N'2013-02-26' AS Date), CAST(268.07483 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1051, CAST(N'2013-02-27' AS Date), CAST(154.55175 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1052, CAST(N'2013-02-28' AS Date), CAST(274.97967 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1053, CAST(N'2013-03-01' AS Date), CAST(272.62194 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1054, CAST(N'2013-03-02' AS Date), CAST(270.17290 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1055, CAST(N'2013-03-03' AS Date), CAST(276.37257 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1056, CAST(N'2013-03-04' AS Date), CAST(270.01735 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1057, CAST(N'2013-03-05' AS Date), CAST(263.48872 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1058, CAST(N'2013-03-06' AS Date), CAST(268.77281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1059, CAST(N'2013-03-07' AS Date), CAST(292.35530 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1060, CAST(N'2013-03-08' AS Date), CAST(266.02896 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1061, CAST(N'2013-03-09' AS Date), CAST(267.29613 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1062, CAST(N'2013-03-10' AS Date), CAST(264.40617 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1063, CAST(N'2013-03-11' AS Date), CAST(259.91081 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1064, CAST(N'2013-03-12' AS Date), CAST(261.26735 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1065, CAST(N'2013-04-02' AS Date), CAST(304.17390 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1066, CAST(N'2013-04-03' AS Date), CAST(263.36997 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1067, CAST(N'2013-04-04' AS Date), CAST(264.84105 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1068, CAST(N'2013-04-05' AS Date), CAST(262.96375 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1069, CAST(N'2013-04-06' AS Date), CAST(270.60632 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1070, CAST(N'2013-04-07' AS Date), CAST(270.22500 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1071, CAST(N'2013-04-08' AS Date), CAST(261.06425 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1072, CAST(N'2013-04-09' AS Date), CAST(284.55398 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1073, CAST(N'2013-04-10' AS Date), CAST(278.78333 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1074, CAST(N'2013-04-11' AS Date), CAST(269.57159 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1075, CAST(N'2013-04-12' AS Date), CAST(310.65438 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1076, CAST(N'2013-04-13' AS Date), CAST(284.03794 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1077, CAST(N'2013-04-14' AS Date), CAST(279.33421 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1078, CAST(N'2013-04-15' AS Date), CAST(273.50596 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1079, CAST(N'2013-04-16' AS Date), CAST(261.85828 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1080, CAST(N'2013-04-18' AS Date), CAST(316.38170 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1081, CAST(N'2013-04-19' AS Date), CAST(291.05693 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1082, CAST(N'2013-04-20' AS Date), CAST(301.92698 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1083, CAST(N'2013-04-21' AS Date), CAST(318.90952 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1084, CAST(N'2013-04-22' AS Date), CAST(313.16194 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1085, CAST(N'2013-04-23' AS Date), CAST(302.88348 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1086, CAST(N'2013-04-24' AS Date), CAST(305.36444 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1087, CAST(N'2013-04-25' AS Date), CAST(312.00843 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1088, CAST(N'2013-04-26' AS Date), CAST(308.56658 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1089, CAST(N'2013-04-27' AS Date), CAST(297.30111 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1090, CAST(N'2013-04-28' AS Date), CAST(299.98329 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1091, CAST(N'2013-04-29' AS Date), CAST(306.63154 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1092, CAST(N'2013-04-30' AS Date), CAST(303.89996 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1093, CAST(N'2013-05-01' AS Date), CAST(304.31987 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1094, CAST(N'2013-05-02' AS Date), CAST(300.64151 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1095, CAST(N'2013-05-04' AS Date), CAST(278.00162 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1096, CAST(N'2013-05-05' AS Date), CAST(270.72555 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1097, CAST(N'2013-05-06' AS Date), CAST(270.18911 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1098, CAST(N'2013-05-07' AS Date), CAST(264.24960 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1099, CAST(N'2013-05-08' AS Date), CAST(257.34270 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1100, CAST(N'2013-05-09' AS Date), CAST(258.20815 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1101, CAST(N'2013-05-10' AS Date), CAST(259.32981 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1102, CAST(N'2013-05-11' AS Date), CAST(264.23307 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1103, CAST(N'2013-05-17' AS Date), CAST(277.43399 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1104, CAST(N'2013-05-18' AS Date), CAST(286.38756 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1105, CAST(N'2013-05-19' AS Date), CAST(277.48432 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1106, CAST(N'2013-05-20' AS Date), CAST(256.69298 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1107, CAST(N'2013-05-21' AS Date), CAST(263.69983 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1108, CAST(N'2013-05-22' AS Date), CAST(268.66015 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1109, CAST(N'2013-05-23' AS Date), CAST(278.09387 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1110, CAST(N'2013-05-24' AS Date), CAST(298.30416 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1111, CAST(N'2013-05-25' AS Date), CAST(284.15411 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1112, CAST(N'2013-05-26' AS Date), CAST(280.19636 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1113, CAST(N'2013-05-27' AS Date), CAST(295.52080 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1114, CAST(N'2013-05-29' AS Date), CAST(306.67168 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1115, CAST(N'2013-05-30' AS Date), CAST(303.00346 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1116, CAST(N'2013-05-31' AS Date), CAST(314.17049 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1117, CAST(N'2013-06-01' AS Date), CAST(293.39561 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1118, CAST(N'2013-06-02' AS Date), CAST(289.27009 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1119, CAST(N'2013-06-03' AS Date), CAST(298.56720 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1120, CAST(N'2013-06-04' AS Date), CAST(292.26096 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1121, CAST(N'2013-06-05' AS Date), CAST(280.93010 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1122, CAST(N'2013-06-06' AS Date), CAST(279.89130 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1123, CAST(N'2013-06-07' AS Date), CAST(277.12506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1124, CAST(N'2013-06-08' AS Date), CAST(255.38697 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1125, CAST(N'2013-06-09' AS Date), CAST(245.72245 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1126, CAST(N'2013-06-14' AS Date), CAST(277.54366 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1127, CAST(N'2013-06-15' AS Date), CAST(283.07335 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1128, CAST(N'2013-06-16' AS Date), CAST(277.41629 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1129, CAST(N'2013-06-17' AS Date), CAST(254.85088 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1130, CAST(N'2013-06-18' AS Date), CAST(280.54299 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1131, CAST(N'2013-06-20' AS Date), CAST(257.26021 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1132, CAST(N'2013-06-21' AS Date), CAST(264.62071 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1133, CAST(N'2013-06-22' AS Date), CAST(249.74385 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1134, CAST(N'2013-06-23' AS Date), CAST(251.11158 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1135, CAST(N'2013-06-24' AS Date), CAST(270.89786 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1136, CAST(N'2013-06-25' AS Date), CAST(261.62445 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1137, CAST(N'2013-06-26' AS Date), CAST(264.75033 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1138, CAST(N'2013-06-27' AS Date), CAST(263.24035 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1139, CAST(N'2013-06-28' AS Date), CAST(299.25637 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1140, CAST(N'2013-06-29' AS Date), CAST(291.23618 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1141, CAST(N'2013-06-30' AS Date), CAST(297.68955 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1142, CAST(N'2013-07-01' AS Date), CAST(292.54187 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1143, CAST(N'2013-07-02' AS Date), CAST(290.89625 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1144, CAST(N'2013-07-03' AS Date), CAST(285.00245 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1145, CAST(N'2013-07-04' AS Date), CAST(285.15889 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1146, CAST(N'2013-07-05' AS Date), CAST(293.54252 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1147, CAST(N'2013-07-06' AS Date), CAST(297.55623 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1148, CAST(N'2013-07-07' AS Date), CAST(293.09882 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1149, CAST(N'2013-07-08' AS Date), CAST(256.70666 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1150, CAST(N'2013-07-09' AS Date), CAST(235.71606 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1151, CAST(N'2013-07-10' AS Date), CAST(241.96884 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1152, CAST(N'2013-07-11' AS Date), CAST(242.75942 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1153, CAST(N'2013-07-12' AS Date), CAST(245.92864 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1154, CAST(N'2013-07-13' AS Date), CAST(240.08790 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1155, CAST(N'2013-07-14' AS Date), CAST(254.44957 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1156, CAST(N'2013-07-15' AS Date), CAST(254.20344 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1157, CAST(N'2013-07-16' AS Date), CAST(255.45844 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1158, CAST(N'2013-07-17' AS Date), CAST(256.90801 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1159, CAST(N'2013-07-18' AS Date), CAST(251.84943 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1160, CAST(N'2013-07-19' AS Date), CAST(257.33422 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1161, CAST(N'2013-07-20' AS Date), CAST(256.57985 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1162, CAST(N'2013-07-21' AS Date), CAST(259.38709 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1163, CAST(N'2013-07-22' AS Date), CAST(269.23351 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1164, CAST(N'2013-07-23' AS Date), CAST(277.76786 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1165, CAST(N'2013-07-24' AS Date), CAST(280.63099 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1166, CAST(N'2013-07-25' AS Date), CAST(290.26182 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1167, CAST(N'2013-08-23' AS Date), CAST(269.23245 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1168, CAST(N'2013-08-25' AS Date), CAST(259.51675 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1169, CAST(N'2013-08-26' AS Date), CAST(257.87005 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1170, CAST(N'2013-08-27' AS Date), CAST(242.19566 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1171, CAST(N'2013-08-28' AS Date), CAST(262.29348 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1172, CAST(N'2013-08-29' AS Date), CAST(269.39041 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1173, CAST(N'2013-08-30' AS Date), CAST(250.06371 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1174, CAST(N'2013-08-31' AS Date), CAST(248.58734 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1175, CAST(N'2013-09-01' AS Date), CAST(238.89942 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1176, CAST(N'2013-09-02' AS Date), CAST(257.95024 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1177, CAST(N'2013-09-03' AS Date), CAST(256.17918 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1178, CAST(N'2013-09-04' AS Date), CAST(252.27304 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1179, CAST(N'2013-09-05' AS Date), CAST(258.60509 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1180, CAST(N'2013-09-06' AS Date), CAST(256.20062 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1181, CAST(N'2013-09-07' AS Date), CAST(249.84088 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1182, CAST(N'2013-09-08' AS Date), CAST(259.76753 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1183, CAST(N'2013-09-10' AS Date), CAST(286.13973 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1184, CAST(N'2013-09-11' AS Date), CAST(281.31790 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1185, CAST(N'2013-09-12' AS Date), CAST(283.36234 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1186, CAST(N'2013-09-13' AS Date), CAST(305.92309 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1187, CAST(N'2013-09-14' AS Date), CAST(310.47117 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1188, CAST(N'2013-09-15' AS Date), CAST(304.86810 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1189, CAST(N'2013-09-16' AS Date), CAST(311.04831 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1190, CAST(N'2013-09-17' AS Date), CAST(309.53397 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1191, CAST(N'2013-09-20' AS Date), CAST(265.68175 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1192, CAST(N'2013-09-21' AS Date), CAST(266.26262 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1193, CAST(N'2013-09-22' AS Date), CAST(266.87231 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1194, CAST(N'2013-09-23' AS Date), CAST(270.20891 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1195, CAST(N'2013-09-24' AS Date), CAST(270.98770 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1196, CAST(N'2013-09-25' AS Date), CAST(272.23883 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1197, CAST(N'2013-09-26' AS Date), CAST(266.96769 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1198, CAST(N'2013-09-27' AS Date), CAST(269.68775 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1199, CAST(N'2013-09-28' AS Date), CAST(267.23744 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1200, CAST(N'2013-09-29' AS Date), CAST(255.74479 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1201, CAST(N'2013-10-04' AS Date), CAST(261.47322 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1202, CAST(N'2013-10-05' AS Date), CAST(250.61401 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1203, CAST(N'2013-10-06' AS Date), CAST(258.42680 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1204, CAST(N'2013-10-07' AS Date), CAST(251.06526 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1205, CAST(N'2013-10-08' AS Date), CAST(290.90424 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1206, CAST(N'2013-10-09' AS Date), CAST(266.82839 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1207, CAST(N'2013-10-10' AS Date), CAST(256.21228 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1208, CAST(N'2013-10-11' AS Date), CAST(257.26761 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1209, CAST(N'2013-10-12' AS Date), CAST(265.15659 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1210, CAST(N'2013-10-13' AS Date), CAST(273.03446 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1211, CAST(N'2013-10-15' AS Date), CAST(304.29222 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1212, CAST(N'2013-10-16' AS Date), CAST(314.52415 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1213, CAST(N'2013-10-17' AS Date), CAST(297.36747 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1214, CAST(N'2013-10-18' AS Date), CAST(300.93164 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1215, CAST(N'2013-10-26' AS Date), CAST(261.47036 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1216, CAST(N'2013-10-27' AS Date), CAST(271.70722 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1217, CAST(N'2013-10-28' AS Date), CAST(270.83865 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1218, CAST(N'2013-10-29' AS Date), CAST(276.61657 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1219, CAST(N'2013-10-30' AS Date), CAST(280.42018 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1220, CAST(N'2013-10-31' AS Date), CAST(265.30131 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1221, CAST(N'2013-11-01' AS Date), CAST(263.45476 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1222, CAST(N'2013-11-02' AS Date), CAST(263.27551 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1223, CAST(N'2013-11-03' AS Date), CAST(273.74699 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1224, CAST(N'2013-11-04' AS Date), CAST(282.39487 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1225, CAST(N'2013-11-05' AS Date), CAST(274.67171 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1226, CAST(N'2013-11-06' AS Date), CAST(269.55592 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1227, CAST(N'2013-11-07' AS Date), CAST(275.87804 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1228, CAST(N'2013-11-08' AS Date), CAST(277.32198 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1229, CAST(N'2013-11-09' AS Date), CAST(275.29593 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1230, CAST(N'2013-11-10' AS Date), CAST(271.78847 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1231, CAST(N'2013-11-13' AS Date), CAST(281.53315 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1232, CAST(N'2013-11-14' AS Date), CAST(281.29195 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1233, CAST(N'2013-11-15' AS Date), CAST(279.78967 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1234, CAST(N'2013-11-16' AS Date), CAST(274.93628 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1235, CAST(N'2013-11-17' AS Date), CAST(269.62394 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1236, CAST(N'2013-11-18' AS Date), CAST(264.02845 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1237, CAST(N'2013-11-19' AS Date), CAST(275.14713 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1238, CAST(N'2013-11-20' AS Date), CAST(275.42001 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1239, CAST(N'2013-11-21' AS Date), CAST(280.25528 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1240, CAST(N'2013-11-22' AS Date), CAST(254.32818 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1241, CAST(N'2013-11-23' AS Date), CAST(268.78863 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1242, CAST(N'2013-11-24' AS Date), CAST(275.15320 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1243, CAST(N'2013-11-25' AS Date), CAST(270.78422 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1244, CAST(N'2013-11-26' AS Date), CAST(323.23543 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1245, CAST(N'2013-11-27' AS Date), CAST(325.84845 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1246, CAST(N'2013-11-28' AS Date), CAST(313.74041 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1247, CAST(N'2013-11-29' AS Date), CAST(312.12182 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1248, CAST(N'2013-11-30' AS Date), CAST(320.15684 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1249, CAST(N'2013-12-01' AS Date), CAST(313.37941 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1250, CAST(N'2013-12-02' AS Date), CAST(310.95014 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1251, CAST(N'2013-12-03' AS Date), CAST(25.30319 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1252, CAST(N'2013-12-04' AS Date), CAST(290.99214 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1253, CAST(N'2013-12-05' AS Date), CAST(283.64705 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1254, CAST(N'2013-12-06' AS Date), CAST(286.03696 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1255, CAST(N'2013-12-07' AS Date), CAST(290.64727 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1256, CAST(N'2013-12-08' AS Date), CAST(299.07199 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1257, CAST(N'2013-12-10' AS Date), CAST(291.03370 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1258, CAST(N'2013-12-11' AS Date), CAST(284.33975 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1259, CAST(N'2013-12-12' AS Date), CAST(291.83042 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1260, CAST(N'2013-12-13' AS Date), CAST(283.23913 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1261, CAST(N'2013-12-14' AS Date), CAST(285.15040 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1262, CAST(N'2013-12-15' AS Date), CAST(293.81815 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1263, CAST(N'2013-12-16' AS Date), CAST(303.35569 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1264, CAST(N'2013-12-17' AS Date), CAST(300.30992 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1265, CAST(N'2013-12-18' AS Date), CAST(299.57137 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1266, CAST(N'2013-12-19' AS Date), CAST(293.01110 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1267, CAST(N'2013-12-20' AS Date), CAST(281.53762 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1268, CAST(N'2013-12-21' AS Date), CAST(279.05267 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1269, CAST(N'2013-12-22' AS Date), CAST(284.03473 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1270, CAST(N'2013-12-23' AS Date), CAST(294.98553 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1271, CAST(N'2013-12-24' AS Date), CAST(297.98320 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1272, CAST(N'2013-12-25' AS Date), CAST(302.51250 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1273, CAST(N'2013-12-26' AS Date), CAST(416.46306 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1274, CAST(N'2013-12-27' AS Date), CAST(298.25372 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1275, CAST(N'2013-12-28' AS Date), CAST(290.24923 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1276, CAST(N'2013-12-29' AS Date), CAST(291.53316 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1277, CAST(N'2013-12-30' AS Date), CAST(305.49509 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1278, CAST(N'2013-12-31' AS Date), CAST(289.27973 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1279, CAST(N'2014-01-01' AS Date), CAST(296.38497 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1280, CAST(N'2014-01-02' AS Date), CAST(299.94248 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1281, CAST(N'2014-01-10' AS Date), CAST(329.80388 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1282, CAST(N'2014-01-11' AS Date), CAST(290.29489 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1283, CAST(N'2014-01-12' AS Date), CAST(291.42488 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1284, CAST(N'2014-01-13' AS Date), CAST(280.70820 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1285, CAST(N'2014-01-14' AS Date), CAST(289.59459 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1286, CAST(N'2014-01-15' AS Date), CAST(290.48207 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1287, CAST(N'2014-01-16' AS Date), CAST(298.80442 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1288, CAST(N'2014-01-17' AS Date), CAST(293.01567 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1289, CAST(N'2014-01-18' AS Date), CAST(296.01876 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1290, CAST(N'2014-01-19' AS Date), CAST(291.54187 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1291, CAST(N'2014-01-21' AS Date), CAST(372.27581 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1292, CAST(N'2014-01-22' AS Date), CAST(371.18656 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1293, CAST(N'2014-01-23' AS Date), CAST(366.96438 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1294, CAST(N'2014-01-25' AS Date), CAST(349.25035 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1295, CAST(N'2014-01-26' AS Date), CAST(344.42071 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1296, CAST(N'2014-01-27' AS Date), CAST(353.95777 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1297, CAST(N'2014-01-28' AS Date), CAST(362.10023 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1298, CAST(N'2014-01-29' AS Date), CAST(366.01765 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1299, CAST(N'2014-01-30' AS Date), CAST(350.23005 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1300, CAST(N'2014-01-31' AS Date), CAST(351.00145 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1301, CAST(N'2014-02-01' AS Date), CAST(343.23091 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1302, CAST(N'2014-02-02' AS Date), CAST(336.20920 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1303, CAST(N'2014-02-03' AS Date), CAST(293.48492 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1304, CAST(N'2014-02-04' AS Date), CAST(301.38745 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1305, CAST(N'2014-02-06' AS Date), CAST(387.19315 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1306, CAST(N'2014-02-07' AS Date), CAST(369.82675 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1307, CAST(N'2014-02-08' AS Date), CAST(357.51767 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1308, CAST(N'2014-02-09' AS Date), CAST(347.00110 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1309, CAST(N'2014-02-10' AS Date), CAST(363.18478 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1310, CAST(N'2014-02-13' AS Date), CAST(304.45377 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1311, CAST(N'2014-02-14' AS Date), CAST(303.44578 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1312, CAST(N'2014-02-15' AS Date), CAST(283.18547 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1313, CAST(N'2014-02-16' AS Date), CAST(466.29044 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1314, CAST(N'2014-02-17' AS Date), CAST(308.38121 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1315, CAST(N'2014-02-18' AS Date), CAST(312.94146 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1316, CAST(N'2014-02-20' AS Date), CAST(295.58164 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1317, CAST(N'2014-02-21' AS Date), CAST(287.83514 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1318, CAST(N'2014-02-22' AS Date), CAST(289.29477 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1319, CAST(N'2014-02-23' AS Date), CAST(301.14380 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1320, CAST(N'2014-02-24' AS Date), CAST(290.84323 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1321, CAST(N'2014-02-25' AS Date), CAST(293.25755 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1322, CAST(N'2014-02-26' AS Date), CAST(286.86078 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1323, CAST(N'2014-02-27' AS Date), CAST(294.70277 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1324, CAST(N'2014-02-28' AS Date), CAST(310.82782 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1325, CAST(N'2014-03-01' AS Date), CAST(291.25833 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1326, CAST(N'2014-03-04' AS Date), CAST(323.72672 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1327, CAST(N'2014-03-05' AS Date), CAST(309.19540 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1328, CAST(N'2014-03-06' AS Date), CAST(316.06183 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1329, CAST(N'2014-03-07' AS Date), CAST(292.19209 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1330, CAST(N'2014-03-08' AS Date), CAST(284.41252 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1331, CAST(N'2014-03-09' AS Date), CAST(290.55897 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1332, CAST(N'2014-03-10' AS Date), CAST(302.00020 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1333, CAST(N'2014-03-11' AS Date), CAST(277.45207 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1334, CAST(N'2014-03-12' AS Date), CAST(274.93103 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1335, CAST(N'2014-03-13' AS Date), CAST(289.36644 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1336, CAST(N'2014-03-14' AS Date), CAST(284.19879 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1337, CAST(N'2014-03-15' AS Date), CAST(275.73529 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1338, CAST(N'2014-03-25' AS Date), CAST(301.28619 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1339, CAST(N'2014-03-26' AS Date), CAST(315.02061 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1340, CAST(N'2014-03-27' AS Date), CAST(296.29716 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1341, CAST(N'2014-03-28' AS Date), CAST(284.62238 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1342, CAST(N'2014-03-29' AS Date), CAST(295.67413 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1343, CAST(N'2014-03-30' AS Date), CAST(289.28836 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1344, CAST(N'2014-03-31' AS Date), CAST(378.87334 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1345, CAST(N'2014-04-01' AS Date), CAST(324.10818 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1346, CAST(N'2014-04-02' AS Date), CAST(324.65475 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1347, CAST(N'2014-04-03' AS Date), CAST(315.61541 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1348, CAST(N'2014-04-04' AS Date), CAST(324.18253 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1349, CAST(N'2014-04-05' AS Date), CAST(313.54813 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1350, CAST(N'2014-04-06' AS Date), CAST(324.20860 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1351, CAST(N'2014-04-07' AS Date), CAST(317.22859 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1352, CAST(N'2014-04-08' AS Date), CAST(309.66691 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1353, CAST(N'2014-04-10' AS Date), CAST(321.70803 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1354, CAST(N'2014-04-11' AS Date), CAST(318.57845 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1355, CAST(N'2014-04-12' AS Date), CAST(326.50024 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1356, CAST(N'2014-04-13' AS Date), CAST(317.80537 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1357, CAST(N'2014-04-14' AS Date), CAST(314.64136 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1358, CAST(N'2014-04-16' AS Date), CAST(303.60061 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1359, CAST(N'2014-04-17' AS Date), CAST(298.09682 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1360, CAST(N'2014-04-19' AS Date), CAST(285.07361 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1361, CAST(N'2014-04-20' AS Date), CAST(285.64461 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1362, CAST(N'2014-04-21' AS Date), CAST(284.07604 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1363, CAST(N'2014-04-22' AS Date), CAST(277.98063 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1364, CAST(N'2014-04-23' AS Date), CAST(288.99019 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1365, CAST(N'2014-04-24' AS Date), CAST(286.25641 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1366, CAST(N'2014-04-25' AS Date), CAST(289.46723 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1367, CAST(N'2014-04-26' AS Date), CAST(286.28331 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1368, CAST(N'2014-04-27' AS Date), CAST(303.25499 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1369, CAST(N'2014-04-28' AS Date), CAST(270.69613 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1370, CAST(N'2014-04-29' AS Date), CAST(293.72036 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1371, CAST(N'2014-04-30' AS Date), CAST(297.27462 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1372, CAST(N'2014-05-01' AS Date), CAST(260.83186 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1373, CAST(N'2014-05-02' AS Date), CAST(261.76565 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1374, CAST(N'2014-05-03' AS Date), CAST(269.18397 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1375, CAST(N'2014-05-04' AS Date), CAST(295.78752 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1376, CAST(N'2014-05-05' AS Date), CAST(292.00362 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1377, CAST(N'2014-05-06' AS Date), CAST(285.61214 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1378, CAST(N'2014-05-07' AS Date), CAST(284.59444 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1379, CAST(N'2014-05-08' AS Date), CAST(289.63891 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1380, CAST(N'2014-05-09' AS Date), CAST(296.32960 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1381, CAST(N'2014-05-10' AS Date), CAST(287.14760 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1382, CAST(N'2014-05-11' AS Date), CAST(290.35175 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1383, CAST(N'2014-05-12' AS Date), CAST(276.76901 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1384, CAST(N'2014-05-13' AS Date), CAST(284.24543 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1385, CAST(N'2014-05-14' AS Date), CAST(293.54242 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1386, CAST(N'2014-05-15' AS Date), CAST(283.82803 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1387, CAST(N'2014-05-16' AS Date), CAST(293.12506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1388, CAST(N'2014-05-17' AS Date), CAST(299.29790 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1389, CAST(N'2014-05-18' AS Date), CAST(291.90444 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1390, CAST(N'2014-05-19' AS Date), CAST(290.54332 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1391, CAST(N'2014-05-20' AS Date), CAST(286.00165 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1392, CAST(N'2014-05-21' AS Date), CAST(286.62792 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1393, CAST(N'2014-05-22' AS Date), CAST(283.45261 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1394, CAST(N'2014-05-23' AS Date), CAST(283.91191 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1395, CAST(N'2014-05-24' AS Date), CAST(288.45972 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1396, CAST(N'2014-06-06' AS Date), CAST(269.08867 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1397, CAST(N'2014-06-07' AS Date), CAST(276.54131 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1398, CAST(N'2014-06-08' AS Date), CAST(274.73007 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1399, CAST(N'2014-06-09' AS Date), CAST(277.73246 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1400, CAST(N'2014-06-11' AS Date), CAST(312.86272 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1401, CAST(N'2014-06-12' AS Date), CAST(307.11621 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1402, CAST(N'2014-06-13' AS Date), CAST(291.82666 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1403, CAST(N'2014-06-14' AS Date), CAST(294.33222 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1404, CAST(N'2014-06-15' AS Date), CAST(292.23617 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1405, CAST(N'2014-06-16' AS Date), CAST(280.17095 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1406, CAST(N'2014-06-17' AS Date), CAST(279.76420 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1407, CAST(N'2014-06-19' AS Date), CAST(315.23562 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1408, CAST(N'2014-06-20' AS Date), CAST(275.24953 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1409, CAST(N'2014-06-21' AS Date), CAST(238.96907 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1410, CAST(N'2014-06-22' AS Date), CAST(327.93277 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1411, CAST(N'2014-06-23' AS Date), CAST(341.16088 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1412, CAST(N'2014-06-24' AS Date), CAST(328.74354 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1413, CAST(N'2014-06-25' AS Date), CAST(334.70452 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1414, CAST(N'2014-06-26' AS Date), CAST(333.74425 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1415, CAST(N'2014-06-27' AS Date), CAST(334.29830 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1416, CAST(N'2014-06-28' AS Date), CAST(323.31643 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1417, CAST(N'2014-06-29' AS Date), CAST(322.30395 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1418, CAST(N'2014-06-30' AS Date), CAST(313.06229 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1419, CAST(N'2014-07-01' AS Date), CAST(309.32474 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1420, CAST(N'2014-07-02' AS Date), CAST(295.83758 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1421, CAST(N'2014-07-03' AS Date), CAST(317.28671 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1422, CAST(N'2014-07-04' AS Date), CAST(334.31211 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1423, CAST(N'2014-07-05' AS Date), CAST(336.40906 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1424, CAST(N'2014-07-06' AS Date), CAST(328.73688 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1425, CAST(N'2014-07-07' AS Date), CAST(320.87483 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1426, CAST(N'2014-07-09' AS Date), CAST(256.69066 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1427, CAST(N'2014-07-10' AS Date), CAST(270.10041 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1428, CAST(N'2014-07-11' AS Date), CAST(261.72978 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1429, CAST(N'2014-07-12' AS Date), CAST(246.51571 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1430, CAST(N'2014-07-13' AS Date), CAST(248.11470 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1431, CAST(N'2014-07-14' AS Date), CAST(250.71413 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1432, CAST(N'2014-07-15' AS Date), CAST(271.73242 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1433, CAST(N'2014-07-16' AS Date), CAST(275.97190 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1434, CAST(N'2014-07-17' AS Date), CAST(271.68517 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1435, CAST(N'2014-07-18' AS Date), CAST(269.36258 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1436, CAST(N'2014-07-19' AS Date), CAST(271.75812 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1437, CAST(N'2014-07-20' AS Date), CAST(271.03620 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1438, CAST(N'2014-07-21' AS Date), CAST(269.97853 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1439, CAST(N'2014-07-22' AS Date), CAST(266.88672 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1440, CAST(N'2014-07-23' AS Date), CAST(265.81505 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1441, CAST(N'2014-07-24' AS Date), CAST(269.32431 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1442, CAST(N'2014-07-25' AS Date), CAST(265.46324 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1443, CAST(N'2014-07-26' AS Date), CAST(268.98924 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1444, CAST(N'2014-07-27' AS Date), CAST(264.65195 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1445, CAST(N'2014-07-28' AS Date), CAST(269.46715 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1446, CAST(N'2014-07-29' AS Date), CAST(272.80329 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1447, CAST(N'2014-07-30' AS Date), CAST(265.89142 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1448, CAST(N'2014-07-31' AS Date), CAST(264.68758 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1449, CAST(N'2014-08-01' AS Date), CAST(266.84902 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1450, CAST(N'2014-08-02' AS Date), CAST(265.50037 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1451, CAST(N'2014-08-03' AS Date), CAST(264.08073 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1452, CAST(N'2014-08-04' AS Date), CAST(265.04954 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1453, CAST(N'2014-08-05' AS Date), CAST(263.00730 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1454, CAST(N'2014-08-06' AS Date), CAST(267.19071 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1455, CAST(N'2014-08-07' AS Date), CAST(262.69586 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1456, CAST(N'2014-08-08' AS Date), CAST(261.41435 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1457, CAST(N'2014-08-09' AS Date), CAST(257.39294 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1458, CAST(N'2014-08-10' AS Date), CAST(252.70213 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1459, CAST(N'2014-08-12' AS Date), CAST(300.40318 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1460, CAST(N'2014-08-13' AS Date), CAST(293.08524 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1461, CAST(N'2014-08-14' AS Date), CAST(289.47907 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1462, CAST(N'2014-08-15' AS Date), CAST(281.09538 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1463, CAST(N'2014-08-16' AS Date), CAST(287.32558 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1464, CAST(N'2014-08-17' AS Date), CAST(290.45681 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1465, CAST(N'2014-08-18' AS Date), CAST(291.42350 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1466, CAST(N'2014-08-19' AS Date), CAST(291.54307 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1467, CAST(N'2014-08-20' AS Date), CAST(294.07931 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1468, CAST(N'2014-08-21' AS Date), CAST(288.94668 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1469, CAST(N'2014-08-22' AS Date), CAST(290.12227 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1470, CAST(N'2014-08-23' AS Date), CAST(291.33945 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1471, CAST(N'2014-08-24' AS Date), CAST(294.14383 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1472, CAST(N'2014-08-25' AS Date), CAST(287.83114 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1473, CAST(N'2014-08-26' AS Date), CAST(287.72970 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1474, CAST(N'2014-09-04' AS Date), CAST(236.44479 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1475, CAST(N'2014-09-05' AS Date), CAST(259.42657 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1476, CAST(N'2014-09-06' AS Date), CAST(248.82682 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1477, CAST(N'2014-09-07' AS Date), CAST(258.03740 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1478, CAST(N'2014-09-08' AS Date), CAST(261.37546 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1479, CAST(N'2014-09-09' AS Date), CAST(263.07714 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1480, CAST(N'2014-09-10' AS Date), CAST(255.92853 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1481, CAST(N'2014-09-11' AS Date), CAST(252.55980 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1482, CAST(N'2014-09-12' AS Date), CAST(259.03627 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1483, CAST(N'2014-09-13' AS Date), CAST(256.39062 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1484, CAST(N'2014-09-14' AS Date), CAST(257.72285 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1485, CAST(N'2014-09-15' AS Date), CAST(256.83537 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1486, CAST(N'2014-09-16' AS Date), CAST(259.45707 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1487, CAST(N'2014-09-17' AS Date), CAST(254.78343 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1488, CAST(N'2014-09-18' AS Date), CAST(257.35889 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1489, CAST(N'2014-09-19' AS Date), CAST(267.46023 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1490, CAST(N'2014-09-20' AS Date), CAST(265.14717 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1491, CAST(N'2014-09-21' AS Date), CAST(262.45307 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1492, CAST(N'2014-09-22' AS Date), CAST(253.82725 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1493, CAST(N'2014-09-23' AS Date), CAST(254.63153 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1494, CAST(N'2014-09-24' AS Date), CAST(257.84139 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1495, CAST(N'2014-09-26' AS Date), CAST(267.49870 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1496, CAST(N'2014-09-27' AS Date), CAST(253.36026 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1497, CAST(N'2014-09-28' AS Date), CAST(249.22813 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1498, CAST(N'2014-09-29' AS Date), CAST(248.71451 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1499, CAST(N'2014-09-30' AS Date), CAST(249.09406 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1500, CAST(N'2014-10-01' AS Date), CAST(252.20237 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1501, CAST(N'2014-10-02' AS Date), CAST(252.39771 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1502, CAST(N'2014-10-03' AS Date), CAST(252.42076 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1503, CAST(N'2014-10-04' AS Date), CAST(257.54191 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1504, CAST(N'2014-10-05' AS Date), CAST(255.63878 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1505, CAST(N'2014-10-06' AS Date), CAST(250.76504 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1506, CAST(N'2014-10-07' AS Date), CAST(247.07690 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1507, CAST(N'2014-10-08' AS Date), CAST(242.33106 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1508, CAST(N'2014-10-09' AS Date), CAST(241.01566 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1509, CAST(N'2014-10-10' AS Date), CAST(250.42703 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1510, CAST(N'2014-10-11' AS Date), CAST(252.95904 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1511, CAST(N'2014-10-12' AS Date), CAST(255.28815 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1512, CAST(N'2014-10-13' AS Date), CAST(255.06586 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1513, CAST(N'2014-10-15' AS Date), CAST(295.76200 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1514, CAST(N'2014-10-16' AS Date), CAST(299.66503 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1515, CAST(N'2014-10-17' AS Date), CAST(292.78595 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1516, CAST(N'2014-10-18' AS Date), CAST(303.75273 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1517, CAST(N'2014-10-19' AS Date), CAST(296.74942 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1518, CAST(N'2014-10-20' AS Date), CAST(299.43660 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1519, CAST(N'2014-10-21' AS Date), CAST(293.69368 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1520, CAST(N'2014-10-22' AS Date), CAST(299.76923 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1521, CAST(N'2014-10-23' AS Date), CAST(294.88121 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1522, CAST(N'2014-10-24' AS Date), CAST(293.75065 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1523, CAST(N'2014-10-25' AS Date), CAST(292.64129 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1524, CAST(N'2014-10-26' AS Date), CAST(291.55283 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1525, CAST(N'2014-10-27' AS Date), CAST(290.48498 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1526, CAST(N'2014-10-28' AS Date), CAST(291.01923 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1527, CAST(N'2014-10-29' AS Date), CAST(291.56971 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1528, CAST(N'2014-11-04' AS Date), CAST(310.50574 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1529, CAST(N'2014-11-05' AS Date), CAST(294.60091 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1530, CAST(N'2014-11-06' AS Date), CAST(302.76370 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1531, CAST(N'2014-11-07' AS Date), CAST(302.08666 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1532, CAST(N'2014-11-08' AS Date), CAST(298.86255 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1533, CAST(N'2014-11-09' AS Date), CAST(310.67905 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1534, CAST(N'2014-11-10' AS Date), CAST(291.64488 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1535, CAST(N'2014-11-11' AS Date), CAST(294.87525 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1536, CAST(N'2014-11-12' AS Date), CAST(289.84928 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1537, CAST(N'2014-11-13' AS Date), CAST(295.34167 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1538, CAST(N'2014-11-14' AS Date), CAST(302.51699 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1539, CAST(N'2014-11-15' AS Date), CAST(352.71691 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1540, CAST(N'2014-11-16' AS Date), CAST(303.31145 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1541, CAST(N'2014-11-19' AS Date), CAST(273.70126 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1542, CAST(N'2014-11-21' AS Date), CAST(271.98310 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1543, CAST(N'2014-11-22' AS Date), CAST(253.01108 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1544, CAST(N'2014-11-23' AS Date), CAST(254.21140 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1545, CAST(N'2014-11-24' AS Date), CAST(245.55726 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1546, CAST(N'2014-11-25' AS Date), CAST(254.12909 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1547, CAST(N'2014-11-26' AS Date), CAST(257.68321 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1548, CAST(N'2014-11-27' AS Date), CAST(254.16796 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1549, CAST(N'2014-11-28' AS Date), CAST(254.66104 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1550, CAST(N'2014-11-29' AS Date), CAST(252.80685 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1551, CAST(N'2014-11-30' AS Date), CAST(242.17687 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1552, CAST(N'2014-12-03' AS Date), CAST(265.20720 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1553, CAST(N'2014-12-04' AS Date), CAST(261.92379 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1554, CAST(N'2014-12-05' AS Date), CAST(260.32480 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1555, CAST(N'2014-12-06' AS Date), CAST(261.45613 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1556, CAST(N'2014-12-07' AS Date), CAST(278.08477 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1557, CAST(N'2014-12-08' AS Date), CAST(279.03440 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1558, CAST(N'2014-12-09' AS Date), CAST(256.74728 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1559, CAST(N'2014-12-10' AS Date), CAST(255.80017 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1560, CAST(N'2014-12-11' AS Date), CAST(258.59685 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1561, CAST(N'2014-12-12' AS Date), CAST(260.20673 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1562, CAST(N'2014-12-13' AS Date), CAST(258.27099 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1563, CAST(N'2014-12-14' AS Date), CAST(251.92133 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1564, CAST(N'2014-12-15' AS Date), CAST(257.74753 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1565, CAST(N'2014-12-16' AS Date), CAST(260.04101 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1566, CAST(N'2014-12-17' AS Date), CAST(248.26051 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1567, CAST(N'2014-12-18' AS Date), CAST(254.91586 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1568, CAST(N'2014-12-19' AS Date), CAST(258.79256 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1569, CAST(N'2014-12-20' AS Date), CAST(259.35937 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1570, CAST(N'2014-12-21' AS Date), CAST(257.23729 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1571, CAST(N'2014-12-22' AS Date), CAST(254.36036 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1572, CAST(N'2014-12-24' AS Date), CAST(257.53094 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1573, CAST(N'2014-12-25' AS Date), CAST(247.16784 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1574, CAST(N'2014-12-26' AS Date), CAST(255.44905 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1575, CAST(N'2014-12-27' AS Date), CAST(250.61999 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1576, CAST(N'2014-12-28' AS Date), CAST(252.49300 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1577, CAST(N'2014-12-29' AS Date), CAST(256.44376 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1578, CAST(N'2014-12-30' AS Date), CAST(256.71515 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1579, CAST(N'2014-12-31' AS Date), CAST(254.43088 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1580, CAST(N'2015-01-01' AS Date), CAST(247.88078 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1581, CAST(N'2015-01-02' AS Date), CAST(307.94300 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1582, CAST(N'2015-01-03' AS Date), CAST(257.24732 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1583, CAST(N'2015-01-09' AS Date), CAST(298.90009 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1584, CAST(N'2015-01-10' AS Date), CAST(288.97011 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1585, CAST(N'2015-01-11' AS Date), CAST(302.44775 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1586, CAST(N'2015-01-12' AS Date), CAST(302.76032 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1587, CAST(N'2015-01-13' AS Date), CAST(301.63477 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1588, CAST(N'2015-01-14' AS Date), CAST(296.70337 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1589, CAST(N'2015-01-15' AS Date), CAST(299.07176 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1590, CAST(N'2015-01-16' AS Date), CAST(283.52428 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1591, CAST(N'2015-01-17' AS Date), CAST(276.98597 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1592, CAST(N'2015-01-18' AS Date), CAST(276.49599 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1593, CAST(N'2015-01-19' AS Date), CAST(261.24455 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1594, CAST(N'2015-01-20' AS Date), CAST(262.12135 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1595, CAST(N'2015-01-21' AS Date), CAST(268.27979 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1596, CAST(N'2015-01-22' AS Date), CAST(265.24714 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1597, CAST(N'2015-01-23' AS Date), CAST(270.83378 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1598, CAST(N'2015-01-24' AS Date), CAST(274.83354 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1599, CAST(N'2015-01-27' AS Date), CAST(265.50396 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1600, CAST(N'2015-01-28' AS Date), CAST(263.63201 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1601, CAST(N'2015-01-29' AS Date), CAST(260.54640 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1602, CAST(N'2015-01-30' AS Date), CAST(260.82665 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1603, CAST(N'2015-01-31' AS Date), CAST(262.96808 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1604, CAST(N'2015-02-01' AS Date), CAST(264.58644 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1605, CAST(N'2015-02-02' AS Date), CAST(266.52237 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1606, CAST(N'2015-02-03' AS Date), CAST(264.24247 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1607, CAST(N'2015-02-04' AS Date), CAST(259.94668 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1608, CAST(N'2015-02-05' AS Date), CAST(260.30008 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1609, CAST(N'2015-02-06' AS Date), CAST(255.88973 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1610, CAST(N'2015-02-07' AS Date), CAST(255.40590 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1611, CAST(N'2015-02-08' AS Date), CAST(256.04950 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1612, CAST(N'2015-02-09' AS Date), CAST(264.46916 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1613, CAST(N'2015-02-10' AS Date), CAST(264.60225 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1614, CAST(N'2015-02-11' AS Date), CAST(274.38095 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1615, CAST(N'2015-02-12' AS Date), CAST(273.36949 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1616, CAST(N'2015-02-13' AS Date), CAST(264.75182 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1617, CAST(N'2015-02-14' AS Date), CAST(264.55998 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1618, CAST(N'2015-02-15' AS Date), CAST(269.90687 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1619, CAST(N'2015-02-17' AS Date), CAST(275.54458 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1620, CAST(N'2015-02-20' AS Date), CAST(259.20653 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1621, CAST(N'2015-02-21' AS Date), CAST(267.96132 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1622, CAST(N'2015-02-22' AS Date), CAST(262.23142 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1623, CAST(N'2015-03-19' AS Date), CAST(247.17831 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1624, CAST(N'2015-03-20' AS Date), CAST(247.90015 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1625, CAST(N'2015-03-21' AS Date), CAST(238.14846 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1626, CAST(N'2015-03-22' AS Date), CAST(235.92546 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1627, CAST(N'2015-03-23' AS Date), CAST(244.94543 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1628, CAST(N'2015-03-24' AS Date), CAST(233.11504 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1629, CAST(N'2015-03-26' AS Date), CAST(243.25509 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1630, CAST(N'2015-03-27' AS Date), CAST(240.47252 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1631, CAST(N'2015-03-28' AS Date), CAST(240.90110 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1632, CAST(N'2015-03-29' AS Date), CAST(238.07127 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1633, CAST(N'2015-03-30' AS Date), CAST(239.02117 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1634, CAST(N'2015-03-31' AS Date), CAST(229.34721 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1635, CAST(N'2015-04-01' AS Date), CAST(238.07547 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1636, CAST(N'2015-04-02' AS Date), CAST(237.82671 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1637, CAST(N'2015-04-03' AS Date), CAST(244.11094 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1638, CAST(N'2015-04-04' AS Date), CAST(235.12539 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1639, CAST(N'2015-04-05' AS Date), CAST(240.46364 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1640, CAST(N'2015-04-06' AS Date), CAST(245.16389 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1641, CAST(N'2015-04-07' AS Date), CAST(241.33266 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1642, CAST(N'2015-04-08' AS Date), CAST(243.11699 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1643, CAST(N'2015-04-09' AS Date), CAST(259.25467 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1644, CAST(N'2015-04-10' AS Date), CAST(241.38535 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1645, CAST(N'2015-04-11' AS Date), CAST(235.28756 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1646, CAST(N'2015-04-12' AS Date), CAST(232.22008 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1647, CAST(N'2015-04-13' AS Date), CAST(233.90268 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1648, CAST(N'2015-04-14' AS Date), CAST(239.21810 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1649, CAST(N'2015-04-15' AS Date), CAST(236.05381 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1650, CAST(N'2015-04-16' AS Date), CAST(238.46583 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1651, CAST(N'2015-04-17' AS Date), CAST(239.93571 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1652, CAST(N'2015-04-18' AS Date), CAST(233.07013 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1653, CAST(N'2015-04-19' AS Date), CAST(232.93145 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1654, CAST(N'2015-04-20' AS Date), CAST(234.57272 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1655, CAST(N'2015-04-21' AS Date), CAST(238.43320 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1656, CAST(N'2015-04-22' AS Date), CAST(235.23045 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1657, CAST(N'2015-04-23' AS Date), CAST(234.77339 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1658, CAST(N'2015-04-25' AS Date), CAST(265.94195 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1659, CAST(N'2015-04-26' AS Date), CAST(266.08921 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1660, CAST(N'2015-04-27' AS Date), CAST(261.32444 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1661, CAST(N'2015-04-28' AS Date), CAST(258.02104 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1662, CAST(N'2015-04-29' AS Date), CAST(258.14529 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1663, CAST(N'2015-04-30' AS Date), CAST(252.37464 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1664, CAST(N'2015-05-01' AS Date), CAST(257.32407 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1665, CAST(N'2015-05-02' AS Date), CAST(251.50284 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1666, CAST(N'2015-05-03' AS Date), CAST(253.60100 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1667, CAST(N'2015-05-04' AS Date), CAST(247.91804 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1668, CAST(N'2015-05-05' AS Date), CAST(257.27775 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1669, CAST(N'2015-05-06' AS Date), CAST(247.46424 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1670, CAST(N'2015-05-07' AS Date), CAST(255.54233 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1671, CAST(N'2015-05-08' AS Date), CAST(254.73722 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1672, CAST(N'2015-05-09' AS Date), CAST(249.35529 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1673, CAST(N'2015-05-10' AS Date), CAST(252.88265 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1674, CAST(N'2015-05-11' AS Date), CAST(243.20054 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1675, CAST(N'2015-05-12' AS Date), CAST(247.70052 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1676, CAST(N'2015-05-13' AS Date), CAST(247.56370 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1677, CAST(N'2015-05-14' AS Date), CAST(254.13596 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1678, CAST(N'2015-05-15' AS Date), CAST(256.78179 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1679, CAST(N'2015-05-16' AS Date), CAST(257.77038 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1680, CAST(N'2015-05-17' AS Date), CAST(255.66570 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1681, CAST(N'2015-05-18' AS Date), CAST(251.31323 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1682, CAST(N'2015-05-19' AS Date), CAST(253.22184 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1683, CAST(N'2015-05-20' AS Date), CAST(251.87926 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1684, CAST(N'2015-05-21' AS Date), CAST(261.55707 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1685, CAST(N'2015-05-22' AS Date), CAST(243.80513 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1686, CAST(N'2015-05-23' AS Date), CAST(249.08569 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1687, CAST(N'2015-05-24' AS Date), CAST(250.78656 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1688, CAST(N'2015-05-25' AS Date), CAST(250.11758 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1689, CAST(N'2015-05-28' AS Date), CAST(253.99222 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1690, CAST(N'2015-05-29' AS Date), CAST(253.32429 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1691, CAST(N'2015-05-30' AS Date), CAST(256.34748 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1692, CAST(N'2015-05-31' AS Date), CAST(251.29390 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1693, CAST(N'2015-06-01' AS Date), CAST(249.82313 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1694, CAST(N'2015-06-02' AS Date), CAST(260.34282 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1695, CAST(N'2015-06-03' AS Date), CAST(248.10340 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1696, CAST(N'2015-06-04' AS Date), CAST(254.62773 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1697, CAST(N'2015-06-05' AS Date), CAST(256.80927 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1698, CAST(N'2015-06-06' AS Date), CAST(247.27282 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1699, CAST(N'2015-06-07' AS Date), CAST(248.15106 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1700, CAST(N'2015-06-09' AS Date), CAST(235.81769 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1701, CAST(N'2015-06-11' AS Date), CAST(229.03823 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1702, CAST(N'2015-06-12' AS Date), CAST(226.05592 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1703, CAST(N'2015-06-13' AS Date), CAST(228.52327 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1704, CAST(N'2015-06-14' AS Date), CAST(226.39155 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1705, CAST(N'2015-06-15' AS Date), CAST(223.09008 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1706, CAST(N'2015-06-16' AS Date), CAST(219.83604 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1707, CAST(N'2015-06-17' AS Date), CAST(217.54735 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1708, CAST(N'2015-06-18' AS Date), CAST(222.18233 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1709, CAST(N'2015-06-19' AS Date), CAST(215.18611 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1710, CAST(N'2015-06-20' AS Date), CAST(216.31987 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1711, CAST(N'2015-06-21' AS Date), CAST(216.27946 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1712, CAST(N'2015-06-22' AS Date), CAST(215.62859 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1713, CAST(N'2015-06-23' AS Date), CAST(213.70289 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1714, CAST(N'2015-06-24' AS Date), CAST(215.17711 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1715, CAST(N'2015-06-25' AS Date), CAST(212.24510 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1716, CAST(N'2015-06-26' AS Date), CAST(214.19075 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1717, CAST(N'2015-06-27' AS Date), CAST(220.55139 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1718, CAST(N'2015-06-28' AS Date), CAST(218.93683 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1719, CAST(N'2015-06-29' AS Date), CAST(186.23473 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1720, CAST(N'2015-06-30' AS Date), CAST(214.78171 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1721, CAST(N'2015-07-01' AS Date), CAST(170.62023 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1722, CAST(N'2015-07-02' AS Date), CAST(221.82848 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1723, CAST(N'2015-07-03' AS Date), CAST(236.14102 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1724, CAST(N'2015-07-04' AS Date), CAST(237.35389 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1725, CAST(N'2015-07-05' AS Date), CAST(241.58114 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1726, CAST(N'2015-07-06' AS Date), CAST(251.91856 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1727, CAST(N'2015-07-07' AS Date), CAST(242.13437 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1728, CAST(N'2015-07-08' AS Date), CAST(243.53886 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1729, CAST(N'2015-07-09' AS Date), CAST(244.05436 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1730, CAST(N'2015-07-10' AS Date), CAST(244.79026 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1731, CAST(N'2015-07-11' AS Date), CAST(239.71134 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1732, CAST(N'2015-07-12' AS Date), CAST(237.66001 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1733, CAST(N'2015-07-13' AS Date), CAST(235.04566 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1734, CAST(N'2015-07-14' AS Date), CAST(236.30815 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1735, CAST(N'2015-07-15' AS Date), CAST(242.01064 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1736, CAST(N'2015-07-16' AS Date), CAST(242.41452 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1737, CAST(N'2015-07-17' AS Date), CAST(241.76992 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1738, CAST(N'2015-07-18' AS Date), CAST(238.76375 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1739, CAST(N'2015-07-19' AS Date), CAST(233.56228 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1740, CAST(N'2015-07-20' AS Date), CAST(226.26173 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1741, CAST(N'2015-07-21' AS Date), CAST(232.42683 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1742, CAST(N'2015-07-22' AS Date), CAST(230.92389 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1743, CAST(N'2015-07-23' AS Date), CAST(237.33380 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1744, CAST(N'2015-07-24' AS Date), CAST(229.76033 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1745, CAST(N'2015-07-25' AS Date), CAST(228.87537 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1746, CAST(N'2015-07-26' AS Date), CAST(229.53181 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1747, CAST(N'2015-07-27' AS Date), CAST(230.78281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1748, CAST(N'2015-07-28' AS Date), CAST(232.04720 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1749, CAST(N'2015-07-29' AS Date), CAST(230.96917 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1750, CAST(N'2015-07-30' AS Date), CAST(232.43372 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1751, CAST(N'2015-07-31' AS Date), CAST(233.88620 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1752, CAST(N'2015-08-01' AS Date), CAST(234.33489 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1753, CAST(N'2015-08-02' AS Date), CAST(215.46281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1754, CAST(N'2015-08-03' AS Date), CAST(222.52136 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1755, CAST(N'2015-08-04' AS Date), CAST(148.99266 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1756, CAST(N'2015-08-05' AS Date), CAST(165.72359 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1757, CAST(N'2015-08-06' AS Date), CAST(228.90503 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1758, CAST(N'2015-08-07' AS Date), CAST(232.15950 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1759, CAST(N'2015-08-08' AS Date), CAST(230.92283 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1760, CAST(N'2015-08-09' AS Date), CAST(229.51747 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1761, CAST(N'2015-08-10' AS Date), CAST(230.44927 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1762, CAST(N'2015-08-11' AS Date), CAST(229.79041 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1763, CAST(N'2015-08-12' AS Date), CAST(232.37284 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1764, CAST(N'2015-08-13' AS Date), CAST(232.34454 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1765, CAST(N'2015-08-14' AS Date), CAST(231.59977 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1766, CAST(N'2015-08-15' AS Date), CAST(225.08063 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1767, CAST(N'2015-08-16' AS Date), CAST(225.31372 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1768, CAST(N'2015-08-17' AS Date), CAST(217.65786 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1769, CAST(N'2015-08-18' AS Date), CAST(224.33415 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1770, CAST(N'2015-08-19' AS Date), CAST(226.87543 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1771, CAST(N'2015-08-20' AS Date), CAST(226.52056 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1772, CAST(N'2015-08-21' AS Date), CAST(230.84791 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1773, CAST(N'2015-08-22' AS Date), CAST(222.63732 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1774, CAST(N'2015-08-23' AS Date), CAST(225.24582 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1775, CAST(N'2015-08-24' AS Date), CAST(218.02298 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1776, CAST(N'2015-08-25' AS Date), CAST(219.88835 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1777, CAST(N'2015-08-26' AS Date), CAST(221.05435 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1778, CAST(N'2015-08-27' AS Date), CAST(223.89083 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1779, CAST(N'2015-08-30' AS Date), CAST(221.51465 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1780, CAST(N'2015-08-31' AS Date), CAST(217.42527 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1781, CAST(N'2015-09-01' AS Date), CAST(214.42155 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1782, CAST(N'2015-09-02' AS Date), CAST(217.50421 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1783, CAST(N'2015-09-03' AS Date), CAST(217.37953 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1784, CAST(N'2015-09-04' AS Date), CAST(134.32163 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1785, CAST(N'2015-09-05' AS Date), CAST(202.12620 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1786, CAST(N'2015-09-06' AS Date), CAST(215.18766 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1787, CAST(N'2015-09-07' AS Date), CAST(213.99567 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1788, CAST(N'2015-09-08' AS Date), CAST(212.44373 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1789, CAST(N'2015-09-09' AS Date), CAST(211.34137 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1790, CAST(N'2015-09-10' AS Date), CAST(214.46180 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1791, CAST(N'2015-09-11' AS Date), CAST(232.52596 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1792, CAST(N'2015-09-12' AS Date), CAST(209.40605 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1793, CAST(N'2015-09-13' AS Date), CAST(211.80606 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1794, CAST(N'2015-09-14' AS Date), CAST(214.13054 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1795, CAST(N'2015-09-15' AS Date), CAST(211.46927 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1796, CAST(N'2015-09-16' AS Date), CAST(210.01610 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1797, CAST(N'2015-09-17' AS Date), CAST(208.64710 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1798, CAST(N'2015-09-18' AS Date), CAST(220.82447 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1799, CAST(N'2015-09-19' AS Date), CAST(216.75883 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1800, CAST(N'2015-09-20' AS Date), CAST(212.03776 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1801, CAST(N'2015-09-21' AS Date), CAST(206.97666 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1802, CAST(N'2015-09-22' AS Date), CAST(207.91856 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1803, CAST(N'2015-09-23' AS Date), CAST(207.44423 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1804, CAST(N'2015-09-24' AS Date), CAST(209.14462 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1805, CAST(N'2015-09-25' AS Date), CAST(212.21549 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1806, CAST(N'2015-09-26' AS Date), CAST(212.39665 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1807, CAST(N'2015-09-27' AS Date), CAST(210.54460 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1808, CAST(N'2015-09-28' AS Date), CAST(213.71406 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1809, CAST(N'2015-09-29' AS Date), CAST(208.36201 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1810, CAST(N'2015-09-30' AS Date), CAST(209.86066 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1811, CAST(N'2015-10-03' AS Date), CAST(199.70920 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1812, CAST(N'2015-10-04' AS Date), CAST(208.83927 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1813, CAST(N'2015-10-05' AS Date), CAST(209.51683 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1814, CAST(N'2015-10-06' AS Date), CAST(208.98281 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1815, CAST(N'2015-10-07' AS Date), CAST(208.61778 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1816, CAST(N'2015-10-08' AS Date), CAST(192.53943 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1817, CAST(N'2015-10-09' AS Date), CAST(207.08532 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1818, CAST(N'2015-10-10' AS Date), CAST(207.12781 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1819, CAST(N'2015-10-11' AS Date), CAST(208.87447 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1820, CAST(N'2015-10-12' AS Date), CAST(207.72117 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1821, CAST(N'2015-10-13' AS Date), CAST(205.26853 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1822, CAST(N'2015-10-14' AS Date), CAST(213.32560 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1823, CAST(N'2015-10-15' AS Date), CAST(211.96256 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1824, CAST(N'2015-10-16' AS Date), CAST(208.08284 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1825, CAST(N'2015-10-17' AS Date), CAST(213.13304 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1826, CAST(N'2015-10-18' AS Date), CAST(211.10633 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1827, CAST(N'2015-10-19' AS Date), CAST(211.05155 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1828, CAST(N'2015-10-21' AS Date), CAST(191.42334 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1829, CAST(N'2015-10-22' AS Date), CAST(202.95828 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1830, CAST(N'2015-10-23' AS Date), CAST(207.19514 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1831, CAST(N'2015-10-24' AS Date), CAST(201.10304 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1832, CAST(N'2015-10-25' AS Date), CAST(202.29911 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1833, CAST(N'2015-10-26' AS Date), CAST(202.89831 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1834, CAST(N'2015-10-27' AS Date), CAST(203.06012 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1835, CAST(N'2015-10-28' AS Date), CAST(203.59298 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1836, CAST(N'2015-10-29' AS Date), CAST(198.58542 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1837, CAST(N'2015-10-30' AS Date), CAST(201.09844 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1838, CAST(N'2015-10-31' AS Date), CAST(196.86972 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1839, CAST(N'2015-11-01' AS Date), CAST(194.63034 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1840, CAST(N'2015-11-02' AS Date), CAST(196.74195 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1841, CAST(N'2015-11-03' AS Date), CAST(184.75396 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1842, CAST(N'2015-11-04' AS Date), CAST(186.25730 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1843, CAST(N'2015-11-05' AS Date), CAST(186.66442 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1844, CAST(N'2015-11-06' AS Date), CAST(188.31596 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1845, CAST(N'2015-11-07' AS Date), CAST(188.49339 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1846, CAST(N'2015-11-08' AS Date), CAST(188.49778 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1847, CAST(N'2015-11-09' AS Date), CAST(184.12904 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1848, CAST(N'2015-11-10' AS Date), CAST(186.25237 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1849, CAST(N'2015-11-11' AS Date), CAST(187.95215 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1850, CAST(N'2015-11-12' AS Date), CAST(187.05585 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1851, CAST(N'2015-11-13' AS Date), CAST(191.60437 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1852, CAST(N'2015-11-14' AS Date), CAST(192.56775 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1853, CAST(N'2015-11-15' AS Date), CAST(192.79407 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1854, CAST(N'2015-11-17' AS Date), CAST(193.83764 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1855, CAST(N'2015-11-18' AS Date), CAST(193.48362 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1856, CAST(N'2015-11-19' AS Date), CAST(196.15452 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1857, CAST(N'2015-11-20' AS Date), CAST(194.18205 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1858, CAST(N'2015-11-21' AS Date), CAST(192.53778 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1859, CAST(N'2015-11-22' AS Date), CAST(198.11650 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1860, CAST(N'2015-11-23' AS Date), CAST(195.01189 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1861, CAST(N'2015-11-24' AS Date), CAST(193.05532 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1862, CAST(N'2015-11-25' AS Date), CAST(194.50882 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1863, CAST(N'2015-11-26' AS Date), CAST(194.87473 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1864, CAST(N'2015-11-27' AS Date), CAST(194.33166 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1865, CAST(N'2015-11-28' AS Date), CAST(192.35944 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1866, CAST(N'2015-11-29' AS Date), CAST(197.16060 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1867, CAST(N'2015-11-30' AS Date), CAST(198.92086 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1868, CAST(N'2015-12-01' AS Date), CAST(196.44996 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1869, CAST(N'2015-12-02' AS Date), CAST(197.50823 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1870, CAST(N'2015-12-03' AS Date), CAST(196.86946 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1871, CAST(N'2015-12-04' AS Date), CAST(195.90003 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1872, CAST(N'2015-12-05' AS Date), CAST(188.23109 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1873, CAST(N'2015-12-06' AS Date), CAST(192.21895 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1874, CAST(N'2015-12-07' AS Date), CAST(189.15221 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1875, CAST(N'2015-12-08' AS Date), CAST(190.08261 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1876, CAST(N'2015-12-12' AS Date), CAST(190.87905 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1877, CAST(N'2015-12-13' AS Date), CAST(194.58024 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1878, CAST(N'2015-12-14' AS Date), CAST(195.56709 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1879, CAST(N'2015-12-15' AS Date), CAST(197.53198 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1880, CAST(N'2015-12-16' AS Date), CAST(196.38999 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1881, CAST(N'2015-12-17' AS Date), CAST(198.02021 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1882, CAST(N'2015-12-18' AS Date), CAST(199.29232 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1883, CAST(N'2015-12-19' AS Date), CAST(197.37210 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1884, CAST(N'2015-12-20' AS Date), CAST(198.84066 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1885, CAST(N'2015-12-21' AS Date), CAST(196.58502 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1886, CAST(N'2015-12-22' AS Date), CAST(195.59610 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1887, CAST(N'2015-12-23' AS Date), CAST(196.00517 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1888, CAST(N'2015-12-24' AS Date), CAST(192.98647 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1889, CAST(N'2015-12-25' AS Date), CAST(193.73856 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1890, CAST(N'2015-12-26' AS Date), CAST(194.01165 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1891, CAST(N'2015-12-27' AS Date), CAST(194.03185 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1892, CAST(N'2015-12-28' AS Date), CAST(196.69086 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1893, CAST(N'2015-12-29' AS Date), CAST(197.91590 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1894, CAST(N'2016-01-03' AS Date), CAST(195.92192 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1895, CAST(N'2016-01-04' AS Date), CAST(204.50358 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1896, CAST(N'2016-01-05' AS Date), CAST(196.69504 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1897, CAST(N'2016-01-06' AS Date), CAST(190.53315 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1898, CAST(N'2016-01-08' AS Date), CAST(190.08935 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1899, CAST(N'2016-01-09' AS Date), CAST(189.18623 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1900, CAST(N'2016-01-10' AS Date), CAST(189.62099 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1901, CAST(N'2016-01-11' AS Date), CAST(191.92145 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1902, CAST(N'2016-01-12' AS Date), CAST(192.79894 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1903, CAST(N'2016-01-13' AS Date), CAST(198.68399 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1904, CAST(N'2016-01-15' AS Date), CAST(187.91110 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1905, CAST(N'2016-01-16' AS Date), CAST(191.43560 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1906, CAST(N'2016-01-18' AS Date), CAST(198.65524 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1907, CAST(N'2016-01-19' AS Date), CAST(200.56283 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1908, CAST(N'2016-01-20' AS Date), CAST(200.79466 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1909, CAST(N'2016-01-21' AS Date), CAST(202.55306 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1910, CAST(N'2016-01-22' AS Date), CAST(197.95181 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1911, CAST(N'2016-01-23' AS Date), CAST(197.68542 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1912, CAST(N'2016-01-24' AS Date), CAST(205.27631 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1913, CAST(N'2016-01-25' AS Date), CAST(197.54048 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1914, CAST(N'2016-01-26' AS Date), CAST(193.96065 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1915, CAST(N'2016-01-27' AS Date), CAST(196.40312 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1916, CAST(N'2016-01-28' AS Date), CAST(195.09452 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1917, CAST(N'2016-01-29' AS Date), CAST(194.86492 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1918, CAST(N'2016-01-30' AS Date), CAST(193.46391 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1919, CAST(N'2016-01-31' AS Date), CAST(192.80473 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1920, CAST(N'2016-02-01' AS Date), CAST(194.36906 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1921, CAST(N'2016-02-02' AS Date), CAST(195.59374 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1922, CAST(N'2016-02-03' AS Date), CAST(197.51253 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1923, CAST(N'2016-02-04' AS Date), CAST(188.41881 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1924, CAST(N'2016-02-05' AS Date), CAST(191.07831 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1925, CAST(N'2016-02-06' AS Date), CAST(191.48625 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1926, CAST(N'2016-02-07' AS Date), CAST(192.06012 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1927, CAST(N'2016-02-08' AS Date), CAST(193.41466 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1928, CAST(N'2016-02-09' AS Date), CAST(193.92425 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1929, CAST(N'2016-02-10' AS Date), CAST(194.47087 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1930, CAST(N'2016-02-11' AS Date), CAST(194.76387 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1931, CAST(N'2016-02-12' AS Date), CAST(197.70311 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1932, CAST(N'2016-02-13' AS Date), CAST(199.68180 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1933, CAST(N'2016-02-14' AS Date), CAST(202.10522 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1934, CAST(N'2016-02-15' AS Date), CAST(192.83794 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1935, CAST(N'2016-02-27' AS Date), CAST(189.51482 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1936, CAST(N'2016-02-28' AS Date), CAST(193.50847 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1937, CAST(N'2016-02-29' AS Date), CAST(197.87850 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1938, CAST(N'2016-03-01' AS Date), CAST(189.34804 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1939, CAST(N'2016-03-02' AS Date), CAST(191.15037 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1940, CAST(N'2016-03-03' AS Date), CAST(192.31949 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1941, CAST(N'2016-03-04' AS Date), CAST(191.25113 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1942, CAST(N'2016-03-05' AS Date), CAST(189.56721 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1943, CAST(N'2016-03-06' AS Date), CAST(187.45394 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1944, CAST(N'2016-03-07' AS Date), CAST(187.48352 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1945, CAST(N'2016-03-08' AS Date), CAST(188.50852 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1946, CAST(N'2016-03-09' AS Date), CAST(194.06215 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1947, CAST(N'2016-03-10' AS Date), CAST(184.47808 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1948, CAST(N'2016-03-11' AS Date), CAST(183.86985 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1949, CAST(N'2016-03-12' AS Date), CAST(184.61114 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1950, CAST(N'2016-03-13' AS Date), CAST(188.88891 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1951, CAST(N'2016-03-14' AS Date), CAST(190.06960 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1952, CAST(N'2016-03-15' AS Date), CAST(192.46489 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1953, CAST(N'2016-03-16' AS Date), CAST(191.19650 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1954, CAST(N'2016-03-17' AS Date), CAST(190.17049 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1955, CAST(N'2016-03-18' AS Date), CAST(189.52110 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1956, CAST(N'2016-03-19' AS Date), CAST(190.47264 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1957, CAST(N'2016-03-20' AS Date), CAST(203.19195 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1958, CAST(N'2016-03-21' AS Date), CAST(192.94140 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1959, CAST(N'2016-03-22' AS Date), CAST(190.37268 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1960, CAST(N'2016-03-23' AS Date), CAST(192.43947 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1961, CAST(N'2016-03-24' AS Date), CAST(192.40011 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1962, CAST(N'2016-03-25' AS Date), CAST(196.60636 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1963, CAST(N'2016-03-26' AS Date), CAST(190.92906 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1964, CAST(N'2016-03-27' AS Date), CAST(191.12307 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1965, CAST(N'2016-03-28' AS Date), CAST(194.85960 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1966, CAST(N'2016-03-29' AS Date), CAST(197.47461 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1967, CAST(N'2016-03-30' AS Date), CAST(188.58005 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1968, CAST(N'2016-03-31' AS Date), CAST(189.67355 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1969, CAST(N'2016-04-01' AS Date), CAST(185.53408 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1970, CAST(N'2016-04-02' AS Date), CAST(189.44436 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1971, CAST(N'2016-04-03' AS Date), CAST(194.26960 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1972, CAST(N'2016-04-04' AS Date), CAST(195.75072 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1973, CAST(N'2016-04-05' AS Date), CAST(192.56983 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1974, CAST(N'2016-04-06' AS Date), CAST(190.92682 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1975, CAST(N'2016-04-07' AS Date), CAST(189.66868 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1976, CAST(N'2016-04-08' AS Date), CAST(189.80852 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1977, CAST(N'2016-04-09' AS Date), CAST(194.06666 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1978, CAST(N'2016-04-10' AS Date), CAST(188.97346 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1979, CAST(N'2016-04-11' AS Date), CAST(188.96154 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1980, CAST(N'2016-04-14' AS Date), CAST(191.06369 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1981, CAST(N'2016-04-15' AS Date), CAST(197.14379 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1982, CAST(N'2016-04-16' AS Date), CAST(191.69544 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1983, CAST(N'2016-04-17' AS Date), CAST(194.89460 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1984, CAST(N'2016-04-18' AS Date), CAST(185.87408 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1985, CAST(N'2016-04-19' AS Date), CAST(185.87727 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1986, CAST(N'2016-04-20' AS Date), CAST(187.55530 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1987, CAST(N'2016-04-21' AS Date), CAST(186.14131 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1988, CAST(N'2016-04-22' AS Date), CAST(188.41393 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1989, CAST(N'2016-04-23' AS Date), CAST(187.02594 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1990, CAST(N'2016-04-24' AS Date), CAST(182.47986 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1991, CAST(N'2016-04-25' AS Date), CAST(181.44190 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1992, CAST(N'2016-04-26' AS Date), CAST(180.80311 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1993, CAST(N'2016-04-27' AS Date), CAST(182.38118 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1994, CAST(N'2016-04-28' AS Date), CAST(182.61673 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1995, CAST(N'2016-04-29' AS Date), CAST(180.33547 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1996, CAST(N'2016-04-30' AS Date), CAST(178.43833 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1997, CAST(N'2016-05-01' AS Date), CAST(235.70395 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1998, CAST(N'2016-05-02' AS Date), CAST(179.79596 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (1999, CAST(N'2016-05-03' AS Date), CAST(180.94280 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2000, CAST(N'2016-05-04' AS Date), CAST(175.66868 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2001, CAST(N'2016-05-05' AS Date), CAST(168.59343 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2002, CAST(N'2016-05-06' AS Date), CAST(172.07698 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2003, CAST(N'2016-05-07' AS Date), CAST(162.67386 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2004, CAST(N'2016-05-08' AS Date), CAST(160.55781 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2005, CAST(N'2016-05-17' AS Date), CAST(182.24488 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2006, CAST(N'2016-05-18' AS Date), CAST(181.53370 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2007, CAST(N'2016-05-19' AS Date), CAST(177.81448 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2008, CAST(N'2016-05-20' AS Date), CAST(173.90383 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2009, CAST(N'2016-05-21' AS Date), CAST(179.02856 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2010, CAST(N'2016-05-22' AS Date), CAST(180.75407 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2011, CAST(N'2016-05-23' AS Date), CAST(182.39549 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2012, CAST(N'2016-05-24' AS Date), CAST(186.04773 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2013, CAST(N'2016-05-25' AS Date), CAST(179.06794 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2014, CAST(N'2016-05-26' AS Date), CAST(176.49004 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2015, CAST(N'2016-05-27' AS Date), CAST(174.24927 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2016, CAST(N'2016-05-28' AS Date), CAST(173.62833 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2017, CAST(N'2016-05-29' AS Date), CAST(176.08898 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2018, CAST(N'2016-05-30' AS Date), CAST(176.37962 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2019, CAST(N'2016-05-31' AS Date), CAST(177.49476 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2020, CAST(N'2016-06-01' AS Date), CAST(177.35221 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2021, CAST(N'2016-06-02' AS Date), CAST(173.53995 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2022, CAST(N'2016-06-03' AS Date), CAST(178.95932 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2023, CAST(N'2016-06-04' AS Date), CAST(177.13838 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2024, CAST(N'2016-06-05' AS Date), CAST(173.52531 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2025, CAST(N'2016-06-06' AS Date), CAST(177.67608 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2026, CAST(N'2016-06-07' AS Date), CAST(178.59679 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2027, CAST(N'2016-06-08' AS Date), CAST(186.94843 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2028, CAST(N'2016-06-09' AS Date), CAST(185.34736 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2029, CAST(N'2016-06-10' AS Date), CAST(184.05104 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2030, CAST(N'2016-06-11' AS Date), CAST(184.52801 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2031, CAST(N'2016-06-12' AS Date), CAST(179.01568 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2032, CAST(N'2016-06-13' AS Date), CAST(184.24094 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2033, CAST(N'2016-06-14' AS Date), CAST(182.43502 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2034, CAST(N'2016-06-15' AS Date), CAST(180.36194 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2035, CAST(N'2016-06-16' AS Date), CAST(184.37779 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2036, CAST(N'2016-06-17' AS Date), CAST(183.38671 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2037, CAST(N'2016-06-18' AS Date), CAST(181.36647 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2038, CAST(N'2016-06-19' AS Date), CAST(181.26495 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2039, CAST(N'2016-06-20' AS Date), CAST(180.14458 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2040, CAST(N'2016-06-21' AS Date), CAST(179.98506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2041, CAST(N'2016-06-22' AS Date), CAST(182.84432 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2042, CAST(N'2016-06-23' AS Date), CAST(187.48208 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2043, CAST(N'2016-06-24' AS Date), CAST(192.71568 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2044, CAST(N'2016-06-25' AS Date), CAST(187.97465 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2045, CAST(N'2016-06-26' AS Date), CAST(190.10228 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2046, CAST(N'2016-06-27' AS Date), CAST(179.57086 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2047, CAST(N'2016-06-28' AS Date), CAST(184.34540 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2048, CAST(N'2016-06-29' AS Date), CAST(186.86399 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2049, CAST(N'2016-06-30' AS Date), CAST(185.23081 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2050, CAST(N'2016-07-01' AS Date), CAST(181.19070 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2051, CAST(N'2016-07-02' AS Date), CAST(178.81461 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2052, CAST(N'2016-07-03' AS Date), CAST(182.53535 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2053, CAST(N'2016-07-04' AS Date), CAST(184.34120 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2054, CAST(N'2016-07-05' AS Date), CAST(182.54775 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2055, CAST(N'2016-07-06' AS Date), CAST(152.37757 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2056, CAST(N'2016-07-07' AS Date), CAST(180.07177 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2057, CAST(N'2016-07-08' AS Date), CAST(180.13491 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2058, CAST(N'2016-07-09' AS Date), CAST(181.98815 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2059, CAST(N'2016-07-10' AS Date), CAST(181.53345 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2060, CAST(N'2016-07-11' AS Date), CAST(185.19707 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2061, CAST(N'2016-07-12' AS Date), CAST(184.93117 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2062, CAST(N'2016-07-13' AS Date), CAST(183.48268 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2063, CAST(N'2016-07-14' AS Date), CAST(185.17204 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2064, CAST(N'2016-07-15' AS Date), CAST(183.76117 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2065, CAST(N'2016-07-16' AS Date), CAST(186.06796 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2066, CAST(N'2016-07-17' AS Date), CAST(185.56410 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2067, CAST(N'2016-07-21' AS Date), CAST(159.86625 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2068, CAST(N'2016-07-22' AS Date), CAST(186.34408 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2069, CAST(N'2016-07-23' AS Date), CAST(185.32306 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2070, CAST(N'2016-07-24' AS Date), CAST(182.89461 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2071, CAST(N'2016-07-25' AS Date), CAST(181.94311 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2072, CAST(N'2016-07-26' AS Date), CAST(183.14622 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2073, CAST(N'2016-07-27' AS Date), CAST(184.43273 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2074, CAST(N'2016-07-28' AS Date), CAST(178.39232 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2075, CAST(N'2016-07-29' AS Date), CAST(183.92736 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2076, CAST(N'2016-07-30' AS Date), CAST(181.70521 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2077, CAST(N'2016-07-31' AS Date), CAST(164.16504 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2078, CAST(N'2016-08-01' AS Date), CAST(187.77274 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2079, CAST(N'2016-08-02' AS Date), CAST(189.94269 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2080, CAST(N'2016-08-03' AS Date), CAST(170.07189 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2081, CAST(N'2016-08-04' AS Date), CAST(178.06410 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2082, CAST(N'2016-08-05' AS Date), CAST(177.53463 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2083, CAST(N'2016-08-06' AS Date), CAST(177.43979 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2084, CAST(N'2016-08-07' AS Date), CAST(168.20443 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2085, CAST(N'2016-08-08' AS Date), CAST(176.99608 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2086, CAST(N'2016-08-09' AS Date), CAST(172.97282 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2087, CAST(N'2016-08-10' AS Date), CAST(177.99710 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2088, CAST(N'2016-08-11' AS Date), CAST(181.67286 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2089, CAST(N'2016-08-12' AS Date), CAST(137.93278 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2090, CAST(N'2016-08-13' AS Date), CAST(183.58791 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2091, CAST(N'2016-08-14' AS Date), CAST(177.34513 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2092, CAST(N'2016-08-15' AS Date), CAST(176.52983 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2093, CAST(N'2016-08-16' AS Date), CAST(177.91831 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2094, CAST(N'2016-08-17' AS Date), CAST(178.96509 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2095, CAST(N'2016-08-18' AS Date), CAST(176.16962 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2096, CAST(N'2016-08-19' AS Date), CAST(181.65768 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2097, CAST(N'2016-08-20' AS Date), CAST(179.87956 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2098, CAST(N'2016-08-21' AS Date), CAST(179.60089 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2099, CAST(N'2016-08-23' AS Date), CAST(181.72461 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2100, CAST(N'2016-08-24' AS Date), CAST(175.70835 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2101, CAST(N'2016-08-25' AS Date), CAST(175.25506 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2102, CAST(N'2016-08-26' AS Date), CAST(175.02131 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2103, CAST(N'2016-08-27' AS Date), CAST(173.31453 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2104, CAST(N'2016-08-28' AS Date), CAST(172.22155 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2105, CAST(N'2016-08-29' AS Date), CAST(172.65650 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2106, CAST(N'2016-08-30' AS Date), CAST(172.87406 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2107, CAST(N'2016-08-31' AS Date), CAST(174.40696 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2108, CAST(N'2016-09-01' AS Date), CAST(174.15964 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2109, CAST(N'2016-09-02' AS Date), CAST(176.76306 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2110, CAST(N'2016-09-03' AS Date), CAST(174.70578 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2111, CAST(N'2016-09-04' AS Date), CAST(178.30982 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2112, CAST(N'2016-09-05' AS Date), CAST(175.69773 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2113, CAST(N'2016-09-06' AS Date), CAST(171.29945 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2114, CAST(N'2016-09-07' AS Date), CAST(172.23643 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2115, CAST(N'2016-09-08' AS Date), CAST(171.81265 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2116, CAST(N'2016-09-09' AS Date), CAST(174.52147 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2117, CAST(N'2016-09-10' AS Date), CAST(176.15084 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2118, CAST(N'2016-09-11' AS Date), CAST(176.71124 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2119, CAST(N'2016-09-12' AS Date), CAST(178.29841 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2120, CAST(N'2016-09-13' AS Date), CAST(177.29248 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2121, CAST(N'2016-09-14' AS Date), CAST(177.85787 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2122, CAST(N'2016-09-15' AS Date), CAST(177.16054 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2123, CAST(N'2016-09-17' AS Date), CAST(178.56206 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2124, CAST(N'2016-09-18' AS Date), CAST(179.81206 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2125, CAST(N'2016-09-19' AS Date), CAST(182.60411 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2126, CAST(N'2016-09-20' AS Date), CAST(178.78734 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2127, CAST(N'2016-09-21' AS Date), CAST(178.49499 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2128, CAST(N'2016-09-22' AS Date), CAST(179.63383 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2129, CAST(N'2016-09-23' AS Date), CAST(152.31846 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2130, CAST(N'2016-09-24' AS Date), CAST(177.46947 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2131, CAST(N'2016-09-25' AS Date), CAST(181.90537 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2132, CAST(N'2016-09-26' AS Date), CAST(181.19973 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2133, CAST(N'2016-09-27' AS Date), CAST(181.89482 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2134, CAST(N'2016-09-28' AS Date), CAST(179.54542 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2135, CAST(N'2016-09-29' AS Date), CAST(177.99645 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2136, CAST(N'2016-09-30' AS Date), CAST(178.57842 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2137, CAST(N'2016-10-01' AS Date), CAST(178.60164 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2138, CAST(N'2016-10-02' AS Date), CAST(179.55383 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2139, CAST(N'2016-10-04' AS Date), CAST(174.82380 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2140, CAST(N'2016-10-05' AS Date), CAST(178.86376 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2141, CAST(N'2016-10-06' AS Date), CAST(181.88782 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2142, CAST(N'2016-10-08' AS Date), CAST(174.51076 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2143, CAST(N'2016-10-09' AS Date), CAST(175.91993 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2144, CAST(N'2016-10-11' AS Date), CAST(182.64384 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2145, CAST(N'2016-10-12' AS Date), CAST(181.08198 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2146, CAST(N'2016-10-13' AS Date), CAST(190.16124 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2147, CAST(N'2016-11-15' AS Date), CAST(375.35523 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2148, CAST(N'2016-11-16' AS Date), CAST(301.30074 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2149, CAST(N'2016-11-22' AS Date), CAST(374.26061 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2150, CAST(N'2016-11-23' AS Date), CAST(372.48543 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2151, CAST(N'2016-11-24' AS Date), CAST(359.34714 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2152, CAST(N'2016-11-25' AS Date), CAST(354.07270 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2153, CAST(N'2016-11-26' AS Date), CAST(359.02433 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2154, CAST(N'2016-11-27' AS Date), CAST(356.91630 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2155, CAST(N'2016-11-28' AS Date), CAST(350.08860 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2156, CAST(N'2016-11-29' AS Date), CAST(337.29706 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2157, CAST(N'2016-12-01' AS Date), CAST(338.73543 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2158, CAST(N'2016-12-02' AS Date), CAST(367.45219 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2159, CAST(N'2016-12-03' AS Date), CAST(351.45314 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2160, CAST(N'2016-12-04' AS Date), CAST(353.07498 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2161, CAST(N'2016-12-05' AS Date), CAST(371.33231 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2162, CAST(N'2016-12-06' AS Date), CAST(358.17752 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2163, CAST(N'2016-12-07' AS Date), CAST(359.17701 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2164, CAST(N'2016-12-10' AS Date), CAST(366.21218 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2165, CAST(N'2016-12-11' AS Date), CAST(377.99628 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2166, CAST(N'2016-12-12' AS Date), CAST(363.11544 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2167, CAST(N'2016-12-13' AS Date), CAST(345.99717 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2168, CAST(N'2016-12-14' AS Date), CAST(345.25805 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2169, CAST(N'2016-12-15' AS Date), CAST(366.88909 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2170, CAST(N'2016-12-16' AS Date), CAST(393.65026 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2171, CAST(N'2016-12-17' AS Date), CAST(368.41145 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2172, CAST(N'2016-12-18' AS Date), CAST(362.96571 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2173, CAST(N'2016-12-19' AS Date), CAST(367.27200 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2174, CAST(N'2016-12-20' AS Date), CAST(350.48545 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2175, CAST(N'2016-12-21' AS Date), CAST(360.11444 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2176, CAST(N'2016-12-22' AS Date), CAST(342.77280 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2177, CAST(N'2016-12-23' AS Date), CAST(332.18256 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2178, CAST(N'2016-12-24' AS Date), CAST(341.49421 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2179, CAST(N'2016-12-25' AS Date), CAST(333.55511 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2180, CAST(N'2016-12-28' AS Date), CAST(354.80979 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2181, CAST(N'2016-12-29' AS Date), CAST(369.24042 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2182, CAST(N'2016-12-30' AS Date), CAST(361.72604 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2183, CAST(N'2016-12-31' AS Date), CAST(360.84003 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2184, CAST(N'2017-01-01' AS Date), CAST(366.69635 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2185, CAST(N'2017-01-02' AS Date), CAST(377.18422 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2186, CAST(N'2017-01-03' AS Date), CAST(351.96050 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2187, CAST(N'2017-01-04' AS Date), CAST(357.50573 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2188, CAST(N'2017-01-05' AS Date), CAST(364.95160 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2189, CAST(N'2017-01-06' AS Date), CAST(357.96078 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2190, CAST(N'2017-01-07' AS Date), CAST(350.53595 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2191, CAST(N'2017-01-08' AS Date), CAST(613.43824 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2192, CAST(N'2017-01-09' AS Date), CAST(362.08822 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2193, CAST(N'2017-01-11' AS Date), CAST(338.10086 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2194, CAST(N'2017-01-12' AS Date), CAST(330.13101 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2195, CAST(N'2017-01-13' AS Date), CAST(333.50486 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2196, CAST(N'2017-01-14' AS Date), CAST(351.22848 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2197, CAST(N'2017-01-16' AS Date), CAST(346.09984 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2198, CAST(N'2017-01-17' AS Date), CAST(341.98664 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2199, CAST(N'2017-01-18' AS Date), CAST(338.44591 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2200, CAST(N'2017-01-19' AS Date), CAST(347.34272 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2201, CAST(N'2017-01-20' AS Date), CAST(333.27863 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2202, CAST(N'2017-01-21' AS Date), CAST(319.20896 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2203, CAST(N'2017-01-22' AS Date), CAST(324.28141 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2204, CAST(N'2017-01-23' AS Date), CAST(334.42935 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2205, CAST(N'2017-01-25' AS Date), CAST(403.06679 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2206, CAST(N'2017-01-26' AS Date), CAST(333.87223 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2207, CAST(N'2017-01-27' AS Date), CAST(335.43576 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2208, CAST(N'2017-01-28' AS Date), CAST(349.69168 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2209, CAST(N'2017-01-29' AS Date), CAST(337.09807 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2210, CAST(N'2017-01-30' AS Date), CAST(356.61549 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2211, CAST(N'2017-01-31' AS Date), CAST(354.82140 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2212, CAST(N'2017-02-01' AS Date), CAST(341.37793 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2213, CAST(N'2017-02-03' AS Date), CAST(337.81997 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2214, CAST(N'2017-02-04' AS Date), CAST(368.18157 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2215, CAST(N'2017-02-06' AS Date), CAST(345.03032 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2216, CAST(N'2017-02-07' AS Date), CAST(342.52237 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2217, CAST(N'2017-02-08' AS Date), CAST(340.96307 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2218, CAST(N'2017-02-09' AS Date), CAST(355.81471 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2219, CAST(N'2017-02-10' AS Date), CAST(360.80779 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2220, CAST(N'2017-02-11' AS Date), CAST(359.64308 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2221, CAST(N'2017-02-12' AS Date), CAST(363.24537 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2222, CAST(N'2017-02-13' AS Date), CAST(350.62996 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2223, CAST(N'2017-02-14' AS Date), CAST(347.97986 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2224, CAST(N'2017-02-15' AS Date), CAST(351.52368 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2225, CAST(N'2017-02-16' AS Date), CAST(365.44627 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2226, CAST(N'2017-02-17' AS Date), CAST(342.05716 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2227, CAST(N'2017-02-18' AS Date), CAST(350.29905 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2228, CAST(N'2017-02-19' AS Date), CAST(323.90221 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2229, CAST(N'2017-02-20' AS Date), CAST(351.75142 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2230, CAST(N'2017-02-21' AS Date), CAST(351.57383 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2231, CAST(N'2017-02-22' AS Date), CAST(341.45017 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2232, CAST(N'2017-02-24' AS Date), CAST(316.17627 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2233, CAST(N'2017-02-25' AS Date), CAST(310.54371 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2234, CAST(N'2017-02-26' AS Date), CAST(330.42916 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2235, CAST(N'2017-02-27' AS Date), CAST(307.96719 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2236, CAST(N'2017-02-28' AS Date), CAST(294.95201 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2237, CAST(N'2017-03-01' AS Date), CAST(336.66554 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2238, CAST(N'2017-03-02' AS Date), CAST(356.09988 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2239, CAST(N'2017-03-03' AS Date), CAST(313.75527 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2240, CAST(N'2017-03-04' AS Date), CAST(354.15009 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2241, CAST(N'2017-03-05' AS Date), CAST(372.73638 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2242, CAST(N'2017-03-06' AS Date), CAST(378.22843 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2243, CAST(N'2017-03-07' AS Date), CAST(343.89018 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2244, CAST(N'2017-03-08' AS Date), CAST(338.24570 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2245, CAST(N'2017-03-09' AS Date), CAST(332.14387 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2246, CAST(N'2017-03-10' AS Date), CAST(344.77760 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2247, CAST(N'2017-03-11' AS Date), CAST(407.10364 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2248, CAST(N'2017-03-12' AS Date), CAST(365.42476 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2249, CAST(N'2017-03-13' AS Date), CAST(361.04631 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2250, CAST(N'2017-03-14' AS Date), CAST(402.47900 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2251, CAST(N'2017-03-16' AS Date), CAST(357.50751 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2252, CAST(N'2017-03-17' AS Date), CAST(336.18351 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2253, CAST(N'2017-03-18' AS Date), CAST(338.00930 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2254, CAST(N'2017-03-19' AS Date), CAST(337.53718 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2255, CAST(N'2017-03-20' AS Date), CAST(338.80559 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2256, CAST(N'2017-03-21' AS Date), CAST(364.19244 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2257, CAST(N'2017-03-22' AS Date), CAST(365.11802 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2258, CAST(N'2017-03-23' AS Date), CAST(363.39835 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2259, CAST(N'2017-03-24' AS Date), CAST(352.24308 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2260, CAST(N'2017-03-25' AS Date), CAST(329.30048 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2261, CAST(N'2017-03-26' AS Date), CAST(332.32575 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2262, CAST(N'2017-03-28' AS Date), CAST(323.88851 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2263, CAST(N'2017-03-29' AS Date), CAST(330.37000 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2264, CAST(N'2017-03-31' AS Date), CAST(340.15702 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2265, CAST(N'2017-04-02' AS Date), CAST(317.46118 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2266, CAST(N'2017-04-03' AS Date), CAST(310.73052 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2267, CAST(N'2017-04-04' AS Date), CAST(313.65456 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2268, CAST(N'2017-04-05' AS Date), CAST(307.03171 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2269, CAST(N'2017-04-06' AS Date), CAST(341.21508 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2270, CAST(N'2017-04-07' AS Date), CAST(329.83138 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2271, CAST(N'2017-04-08' AS Date), CAST(335.03014 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2272, CAST(N'2017-04-10' AS Date), CAST(317.63683 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2273, CAST(N'2017-04-11' AS Date), CAST(326.82966 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2274, CAST(N'2017-04-12' AS Date), CAST(316.65003 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2275, CAST(N'2017-04-13' AS Date), CAST(322.45770 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2276, CAST(N'2017-04-14' AS Date), CAST(322.32516 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2277, CAST(N'2017-04-15' AS Date), CAST(314.17331 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2278, CAST(N'2017-04-16' AS Date), CAST(304.02318 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2279, CAST(N'2017-04-17' AS Date), CAST(311.67611 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2280, CAST(N'2017-04-18' AS Date), CAST(310.26810 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2281, CAST(N'2017-04-19' AS Date), CAST(316.32222 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2282, CAST(N'2017-04-20' AS Date), CAST(309.24172 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2283, CAST(N'2017-04-21' AS Date), CAST(321.55683 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2284, CAST(N'2017-04-22' AS Date), CAST(316.89933 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2285, CAST(N'2017-04-23' AS Date), CAST(316.37168 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2286, CAST(N'2017-04-24' AS Date), CAST(325.49893 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2287, CAST(N'2017-04-25' AS Date), CAST(325.66507 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2288, CAST(N'2017-04-26' AS Date), CAST(309.06786 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2289, CAST(N'2017-04-27' AS Date), CAST(309.48730 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2290, CAST(N'2017-04-28' AS Date), CAST(312.68555 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2291, CAST(N'2017-04-29' AS Date), CAST(313.58457 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2292, CAST(N'2017-04-30' AS Date), CAST(309.61186 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2293, CAST(N'2017-05-01' AS Date), CAST(309.86692 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2294, CAST(N'2017-05-02' AS Date), CAST(315.63649 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2295, CAST(N'2017-05-03' AS Date), CAST(308.12304 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2296, CAST(N'2017-05-05' AS Date), CAST(306.57728 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2297, CAST(N'2017-05-06' AS Date), CAST(311.79440 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2298, CAST(N'2017-05-07' AS Date), CAST(330.60366 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2299, CAST(N'2017-05-08' AS Date), CAST(320.09313 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2300, CAST(N'2017-05-09' AS Date), CAST(345.06027 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2301, CAST(N'2017-05-10' AS Date), CAST(337.06604 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2302, CAST(N'2017-05-11' AS Date), CAST(335.78282 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2303, CAST(N'2017-05-12' AS Date), CAST(338.62064 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2304, CAST(N'2017-05-13' AS Date), CAST(343.83015 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2305, CAST(N'2017-05-14' AS Date), CAST(338.85569 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2306, CAST(N'2017-05-15' AS Date), CAST(332.27158 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2307, CAST(N'2017-05-16' AS Date), CAST(315.77201 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2308, CAST(N'2017-05-18' AS Date), CAST(307.72250 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2309, CAST(N'2017-05-19' AS Date), CAST(303.57869 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2310, CAST(N'2017-05-20' AS Date), CAST(315.24557 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2311, CAST(N'2017-05-21' AS Date), CAST(313.09983 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2312, CAST(N'2017-05-22' AS Date), CAST(342.78531 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2313, CAST(N'2017-05-23' AS Date), CAST(328.86363 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2314, CAST(N'2017-05-24' AS Date), CAST(347.89787 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2315, CAST(N'2017-05-25' AS Date), CAST(346.29501 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2316, CAST(N'2017-05-26' AS Date), CAST(319.80555 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2317, CAST(N'2017-05-27' AS Date), CAST(324.09368 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2318, CAST(N'2017-05-30' AS Date), CAST(338.60027 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2319, CAST(N'2017-05-31' AS Date), CAST(331.50947 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2320, CAST(N'2017-06-01' AS Date), CAST(322.41547 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2321, CAST(N'2017-06-02' AS Date), CAST(316.24054 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2322, CAST(N'2017-06-03' AS Date), CAST(319.63860 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2323, CAST(N'2017-06-06' AS Date), CAST(345.02945 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2324, CAST(N'2017-06-07' AS Date), CAST(351.14079 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2325, CAST(N'2017-06-08' AS Date), CAST(323.07327 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2326, CAST(N'2017-06-09' AS Date), CAST(330.54627 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2327, CAST(N'2017-06-10' AS Date), CAST(319.33335 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2328, CAST(N'2017-06-11' AS Date), CAST(323.92619 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2329, CAST(N'2017-06-12' AS Date), CAST(337.80471 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2330, CAST(N'2017-06-13' AS Date), CAST(330.40850 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2331, CAST(N'2017-06-14' AS Date), CAST(345.07724 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2332, CAST(N'2017-06-15' AS Date), CAST(344.06293 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2333, CAST(N'2017-06-16' AS Date), CAST(331.37812 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2334, CAST(N'2017-06-17' AS Date), CAST(332.42124 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2335, CAST(N'2017-06-18' AS Date), CAST(323.58991 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2336, CAST(N'2017-06-19' AS Date), CAST(331.79175 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2337, CAST(N'2017-06-20' AS Date), CAST(321.26791 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2338, CAST(N'2017-06-21' AS Date), CAST(326.99559 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2339, CAST(N'2017-06-22' AS Date), CAST(324.13057 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2340, CAST(N'2017-06-23' AS Date), CAST(319.72328 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2341, CAST(N'2017-06-24' AS Date), CAST(324.59520 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2342, CAST(N'2017-06-25' AS Date), CAST(333.25737 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2343, CAST(N'2017-06-26' AS Date), CAST(332.75473 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2344, CAST(N'2017-06-27' AS Date), CAST(315.93817 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2345, CAST(N'2017-06-28' AS Date), CAST(330.84412 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2346, CAST(N'2017-06-29' AS Date), CAST(326.85454 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2347, CAST(N'2017-06-30' AS Date), CAST(321.89533 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2348, CAST(N'2017-07-01' AS Date), CAST(321.89238 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2349, CAST(N'2017-07-02' AS Date), CAST(330.11896 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2350, CAST(N'2017-07-03' AS Date), CAST(306.46058 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2351, CAST(N'2017-07-04' AS Date), CAST(311.47856 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2352, CAST(N'2017-07-05' AS Date), CAST(371.51787 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2353, CAST(N'2017-07-06' AS Date), CAST(336.32869 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2354, CAST(N'2017-07-07' AS Date), CAST(337.69458 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2355, CAST(N'2017-07-08' AS Date), CAST(333.65165 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2356, CAST(N'2017-07-09' AS Date), CAST(326.62914 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2357, CAST(N'2017-07-11' AS Date), CAST(326.51272 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2358, CAST(N'2017-07-12' AS Date), CAST(319.14788 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2359, CAST(N'2017-07-13' AS Date), CAST(318.29357 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2360, CAST(N'2017-07-14' AS Date), CAST(335.83370 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2361, CAST(N'2017-07-15' AS Date), CAST(330.26788 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2362, CAST(N'2017-07-16' AS Date), CAST(328.29715 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2363, CAST(N'2017-07-18' AS Date), CAST(321.09883 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2364, CAST(N'2017-07-19' AS Date), CAST(322.62334 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2365, CAST(N'2017-07-20' AS Date), CAST(317.70873 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2366, CAST(N'2017-07-21' AS Date), CAST(336.59276 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2367, CAST(N'2017-07-22' AS Date), CAST(322.01370 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2368, CAST(N'2017-07-23' AS Date), CAST(322.76301 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2369, CAST(N'2017-07-24' AS Date), CAST(341.66436 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2370, CAST(N'2017-07-25' AS Date), CAST(338.98919 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2371, CAST(N'2017-07-26' AS Date), CAST(339.92262 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2372, CAST(N'2017-07-27' AS Date), CAST(319.40191 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2373, CAST(N'2017-07-28' AS Date), CAST(329.53215 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2374, CAST(N'2017-07-29' AS Date), CAST(344.89383 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2375, CAST(N'2017-07-30' AS Date), CAST(322.34530 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2376, CAST(N'2017-07-31' AS Date), CAST(318.95673 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2377, CAST(N'2017-08-01' AS Date), CAST(313.71825 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2378, CAST(N'2017-08-03' AS Date), CAST(318.16391 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2379, CAST(N'2017-08-04' AS Date), CAST(339.88694 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2380, CAST(N'2017-08-05' AS Date), CAST(350.68871 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2381, CAST(N'2017-08-06' AS Date), CAST(362.32658 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2382, CAST(N'2017-08-07' AS Date), CAST(345.54148 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2383, CAST(N'2017-08-08' AS Date), CAST(341.10641 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2384, CAST(N'2017-08-09' AS Date), CAST(330.20582 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2385, CAST(N'2017-08-10' AS Date), CAST(332.75414 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2386, CAST(N'2017-08-11' AS Date), CAST(324.86743 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2387, CAST(N'2017-08-12' AS Date), CAST(335.44936 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2388, CAST(N'2017-08-13' AS Date), CAST(323.88236 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2389, CAST(N'2017-08-14' AS Date), CAST(365.00276 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2390, CAST(N'2017-08-15' AS Date), CAST(330.09005 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2391, CAST(N'2017-08-16' AS Date), CAST(331.98063 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2392, CAST(N'2017-08-17' AS Date), CAST(325.27653 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2393, CAST(N'2017-08-18' AS Date), CAST(323.22493 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2394, CAST(N'2017-08-19' AS Date), CAST(324.70176 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2395, CAST(N'2017-08-20' AS Date), CAST(328.08661 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2396, CAST(N'2017-08-21' AS Date), CAST(320.89494 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2397, CAST(N'2017-08-22' AS Date), CAST(317.73194 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2398, CAST(N'2017-08-23' AS Date), CAST(320.69954 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2399, CAST(N'2017-08-24' AS Date), CAST(321.53003 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2400, CAST(N'2017-08-25' AS Date), CAST(308.11159 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2401, CAST(N'2017-08-26' AS Date), CAST(312.23884 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2402, CAST(N'2017-08-27' AS Date), CAST(320.75287 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2403, CAST(N'2017-08-28' AS Date), CAST(319.37978 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2404, CAST(N'2017-09-01' AS Date), CAST(319.12512 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2405, CAST(N'2017-09-02' AS Date), CAST(336.72148 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2406, CAST(N'2017-09-03' AS Date), CAST(328.80675 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2407, CAST(N'2017-09-04' AS Date), CAST(317.03919 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2408, CAST(N'2017-09-05' AS Date), CAST(320.79266 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2409, CAST(N'2017-09-06' AS Date), CAST(322.22267 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2410, CAST(N'2017-09-07' AS Date), CAST(330.21321 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2411, CAST(N'2017-09-08' AS Date), CAST(324.53757 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2412, CAST(N'2017-09-09' AS Date), CAST(327.06455 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2413, CAST(N'2017-09-10' AS Date), CAST(318.90946 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2414, CAST(N'2017-09-11' AS Date), CAST(331.58242 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2415, CAST(N'2017-09-12' AS Date), CAST(318.79386 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2416, CAST(N'2017-09-13' AS Date), CAST(313.47624 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2417, CAST(N'2017-09-14' AS Date), CAST(320.84297 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2418, CAST(N'2017-09-15' AS Date), CAST(313.96813 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2419, CAST(N'2017-09-16' AS Date), CAST(313.34523 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2420, CAST(N'2017-09-17' AS Date), CAST(316.13311 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2421, CAST(N'2017-09-18' AS Date), CAST(327.93983 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2422, CAST(N'2017-09-19' AS Date), CAST(328.52764 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2423, CAST(N'2017-09-20' AS Date), CAST(321.80064 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2424, CAST(N'2017-09-21' AS Date), CAST(309.85801 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2425, CAST(N'2017-09-22' AS Date), CAST(348.24585 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2426, CAST(N'2017-09-25' AS Date), CAST(307.43942 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2427, CAST(N'2017-09-26' AS Date), CAST(310.30075 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2428, CAST(N'2017-09-27' AS Date), CAST(298.11373 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2429, CAST(N'2017-09-28' AS Date), CAST(320.73952 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2430, CAST(N'2017-09-29' AS Date), CAST(321.88020 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2431, CAST(N'2017-09-30' AS Date), CAST(314.51075 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2432, CAST(N'2017-10-02' AS Date), CAST(329.63004 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2433, CAST(N'2017-10-03' AS Date), CAST(330.91080 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2434, CAST(N'2017-10-04' AS Date), CAST(333.21325 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2435, CAST(N'2017-10-05' AS Date), CAST(327.10503 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2436, CAST(N'2017-10-06' AS Date), CAST(314.46926 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2437, CAST(N'2017-10-07' AS Date), CAST(316.48413 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2438, CAST(N'2017-10-08' AS Date), CAST(320.55398 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2439, CAST(N'2017-10-10' AS Date), CAST(329.10939 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2440, CAST(N'2017-10-11' AS Date), CAST(322.80179 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2441, CAST(N'2017-10-12' AS Date), CAST(332.30767 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2442, CAST(N'2017-10-13' AS Date), CAST(332.64885 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2443, CAST(N'2017-10-14' AS Date), CAST(321.71017 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2444, CAST(N'2017-10-15' AS Date), CAST(319.39489 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2445, CAST(N'2017-10-16' AS Date), CAST(335.28414 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2446, CAST(N'2017-10-17' AS Date), CAST(337.59879 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2447, CAST(N'2017-10-18' AS Date), CAST(331.96694 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2448, CAST(N'2017-10-19' AS Date), CAST(329.11714 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2449, CAST(N'2017-10-20' AS Date), CAST(325.58745 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2450, CAST(N'2017-10-22' AS Date), CAST(327.65330 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2451, CAST(N'2017-10-23' AS Date), CAST(332.38791 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2452, CAST(N'2017-10-24' AS Date), CAST(321.19755 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2453, CAST(N'2017-10-25' AS Date), CAST(585.18270 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2454, CAST(N'2017-10-26' AS Date), CAST(348.27383 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2455, CAST(N'2017-10-27' AS Date), CAST(323.16667 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2456, CAST(N'2017-10-28' AS Date), CAST(315.79009 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2457, CAST(N'2017-10-29' AS Date), CAST(313.24788 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2458, CAST(N'2017-10-30' AS Date), CAST(334.46429 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2459, CAST(N'2017-10-31' AS Date), CAST(329.72298 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2460, CAST(N'2017-11-01' AS Date), CAST(333.09422 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2461, CAST(N'2017-11-02' AS Date), CAST(317.75020 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2462, CAST(N'2017-11-03' AS Date), CAST(316.97259 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2463, CAST(N'2017-11-04' AS Date), CAST(328.23727 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2464, CAST(N'2017-11-05' AS Date), CAST(329.01054 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2465, CAST(N'2017-11-06' AS Date), CAST(327.10402 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2466, CAST(N'2017-11-07' AS Date), CAST(348.81168 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2467, CAST(N'2017-11-09' AS Date), CAST(361.74531 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2468, CAST(N'2017-11-10' AS Date), CAST(353.97177 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2469, CAST(N'2017-11-11' AS Date), CAST(361.71856 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2470, CAST(N'2017-11-12' AS Date), CAST(336.94505 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2471, CAST(N'2017-11-13' AS Date), CAST(341.84192 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2472, CAST(N'2017-11-14' AS Date), CAST(338.25006 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2473, CAST(N'2017-11-15' AS Date), CAST(332.06097 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2474, CAST(N'2017-11-16' AS Date), CAST(325.47164 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2475, CAST(N'2017-11-17' AS Date), CAST(328.71247 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2476, CAST(N'2017-11-18' AS Date), CAST(328.18697 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2477, CAST(N'2017-11-19' AS Date), CAST(325.53604 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2478, CAST(N'2017-11-20' AS Date), CAST(325.16427 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2479, CAST(N'2017-11-21' AS Date), CAST(323.84659 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2480, CAST(N'2017-11-22' AS Date), CAST(329.51648 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2481, CAST(N'2017-11-23' AS Date), CAST(345.47079 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2482, CAST(N'2017-11-24' AS Date), CAST(323.19313 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2483, CAST(N'2017-11-25' AS Date), CAST(403.15290 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2484, CAST(N'2017-11-26' AS Date), CAST(322.03029 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2485, CAST(N'2017-11-27' AS Date), CAST(345.58774 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2486, CAST(N'2017-11-28' AS Date), CAST(340.64665 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2487, CAST(N'2017-11-29' AS Date), CAST(331.80979 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2488, CAST(N'2017-11-30' AS Date), CAST(340.43082 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2489, CAST(N'2017-12-01' AS Date), CAST(335.81525 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2490, CAST(N'2017-12-02' AS Date), CAST(320.89223 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2491, CAST(N'2017-12-03' AS Date), CAST(318.84718 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2492, CAST(N'2017-12-04' AS Date), CAST(317.25670 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2493, CAST(N'2017-12-09' AS Date), CAST(364.72866 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2494, CAST(N'2017-12-10' AS Date), CAST(345.81392 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2495, CAST(N'2017-12-11' AS Date), CAST(338.04441 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2496, CAST(N'2017-12-12' AS Date), CAST(352.21463 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2497, CAST(N'2017-12-13' AS Date), CAST(348.61472 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2498, CAST(N'2017-12-14' AS Date), CAST(343.68637 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2499, CAST(N'2017-12-15' AS Date), CAST(339.66239 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2500, CAST(N'2017-12-16' AS Date), CAST(333.30414 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2501, CAST(N'2017-12-17' AS Date), CAST(340.47063 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2502, CAST(N'2017-12-18' AS Date), CAST(337.18015 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2503, CAST(N'2017-12-19' AS Date), CAST(325.08214 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2504, CAST(N'2017-12-20' AS Date), CAST(347.85844 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2505, CAST(N'2017-12-21' AS Date), CAST(325.18092 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2506, CAST(N'2017-12-22' AS Date), CAST(344.62600 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2507, CAST(N'2017-12-23' AS Date), CAST(331.97041 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2508, CAST(N'2017-12-24' AS Date), CAST(342.08893 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2509, CAST(N'2017-12-25' AS Date), CAST(350.82032 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2510, CAST(N'2017-12-26' AS Date), CAST(363.16471 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2511, CAST(N'2017-12-27' AS Date), CAST(359.56161 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2512, CAST(N'2017-12-28' AS Date), CAST(361.92659 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2513, CAST(N'2017-12-29' AS Date), CAST(359.93564 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2514, CAST(N'2017-12-30' AS Date), CAST(362.16484 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2515, CAST(N'2017-12-31' AS Date), CAST(505.64731 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2516, CAST(N'2018-01-01' AS Date), CAST(364.57606 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2517, CAST(N'2018-01-03' AS Date), CAST(333.56096 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2518, CAST(N'2018-01-04' AS Date), CAST(338.66177 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2519, CAST(N'2018-01-05' AS Date), CAST(339.95457 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2520, CAST(N'2018-01-09' AS Date), CAST(466.90322 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2521, CAST(N'2018-01-10' AS Date), CAST(342.99822 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2522, CAST(N'2018-01-11' AS Date), CAST(335.18678 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2523, CAST(N'2018-01-12' AS Date), CAST(317.02258 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2524, CAST(N'2018-01-13' AS Date), CAST(332.93384 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2525, CAST(N'2018-01-14' AS Date), CAST(360.80208 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2526, CAST(N'2018-01-15' AS Date), CAST(354.28576 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2527, CAST(N'2018-01-16' AS Date), CAST(348.26903 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2528, CAST(N'2018-01-17' AS Date), CAST(363.37918 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2529, CAST(N'2018-01-18' AS Date), CAST(362.12262 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2530, CAST(N'2018-01-19' AS Date), CAST(346.35985 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2531, CAST(N'2018-01-20' AS Date), CAST(342.61181 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2532, CAST(N'2018-01-21' AS Date), CAST(329.82957 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2533, CAST(N'2018-01-22' AS Date), CAST(327.74582 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2534, CAST(N'2018-01-23' AS Date), CAST(329.34873 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2535, CAST(N'2018-01-24' AS Date), CAST(326.82404 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2536, CAST(N'2018-01-25' AS Date), CAST(339.34422 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2537, CAST(N'2018-01-26' AS Date), CAST(335.78681 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2538, CAST(N'2018-01-27' AS Date), CAST(332.10288 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2539, CAST(N'2018-01-28' AS Date), CAST(340.87280 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2540, CAST(N'2018-01-29' AS Date), CAST(332.74532 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2541, CAST(N'2018-01-30' AS Date), CAST(339.15088 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2542, CAST(N'2018-01-31' AS Date), CAST(350.53634 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2543, CAST(N'2018-02-01' AS Date), CAST(341.58196 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2544, CAST(N'2018-02-02' AS Date), CAST(352.87299 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2545, CAST(N'2018-02-03' AS Date), CAST(340.34105 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2546, CAST(N'2018-02-04' AS Date), CAST(331.87010 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2547, CAST(N'2018-02-05' AS Date), CAST(341.95144 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2548, CAST(N'2018-02-06' AS Date), CAST(354.30829 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2549, CAST(N'2018-02-07' AS Date), CAST(345.87491 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2550, CAST(N'2018-02-08' AS Date), CAST(349.36645 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2551, CAST(N'2018-02-09' AS Date), CAST(431.48615 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2552, CAST(N'2018-02-10' AS Date), CAST(351.24827 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2553, CAST(N'2018-02-11' AS Date), CAST(348.78345 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2554, CAST(N'2018-02-12' AS Date), CAST(334.78293 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2555, CAST(N'2018-02-13' AS Date), CAST(423.12541 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2556, CAST(N'2018-02-14' AS Date), CAST(340.12782 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2557, CAST(N'2018-02-16' AS Date), CAST(340.98112 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2558, CAST(N'2018-02-17' AS Date), CAST(347.96365 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2559, CAST(N'2018-02-18' AS Date), CAST(345.98415 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2560, CAST(N'2018-02-21' AS Date), CAST(341.35065 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2561, CAST(N'2018-02-22' AS Date), CAST(338.16171 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2562, CAST(N'2018-02-23' AS Date), CAST(339.47703 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2563, CAST(N'2018-02-24' AS Date), CAST(337.86172 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2564, CAST(N'2018-02-25' AS Date), CAST(343.32109 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2565, CAST(N'2018-02-27' AS Date), CAST(338.56646 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2566, CAST(N'2018-02-28' AS Date), CAST(332.26082 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2567, CAST(N'2018-03-01' AS Date), CAST(325.26577 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2568, CAST(N'2018-03-02' AS Date), CAST(347.04063 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2569, CAST(N'2018-03-03' AS Date), CAST(332.78416 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2570, CAST(N'2018-03-04' AS Date), CAST(338.05335 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2571, CAST(N'2018-03-05' AS Date), CAST(333.49808 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2572, CAST(N'2018-03-06' AS Date), CAST(555.82782 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2573, CAST(N'2018-03-08' AS Date), CAST(350.40393 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2574, CAST(N'2018-03-09' AS Date), CAST(344.07402 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2575, CAST(N'2018-03-10' AS Date), CAST(340.79037 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2576, CAST(N'2018-03-11' AS Date), CAST(353.95043 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2577, CAST(N'2018-03-12' AS Date), CAST(335.73779 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2578, CAST(N'2018-03-13' AS Date), CAST(353.26216 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2579, CAST(N'2018-03-14' AS Date), CAST(356.29554 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2580, CAST(N'2018-03-16' AS Date), CAST(339.20218 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2581, CAST(N'2018-03-17' AS Date), CAST(332.30576 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2582, CAST(N'2018-03-18' AS Date), CAST(333.50358 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2583, CAST(N'2018-03-19' AS Date), CAST(335.65298 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2584, CAST(N'2018-03-20' AS Date), CAST(346.97049 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2585, CAST(N'2018-03-21' AS Date), CAST(350.67419 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2586, CAST(N'2018-03-23' AS Date), CAST(357.41128 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2587, CAST(N'2018-03-24' AS Date), CAST(361.45239 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2588, CAST(N'2018-03-25' AS Date), CAST(357.45455 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2589, CAST(N'2018-03-26' AS Date), CAST(348.10085 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2590, CAST(N'2018-03-27' AS Date), CAST(354.09413 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2591, CAST(N'2018-03-28' AS Date), CAST(350.19318 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2592, CAST(N'2018-03-29' AS Date), CAST(346.16115 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2593, CAST(N'2018-03-30' AS Date), CAST(338.91470 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2594, CAST(N'2018-03-31' AS Date), CAST(342.33873 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2595, CAST(N'2018-04-01' AS Date), CAST(345.42985 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2596, CAST(N'2018-04-02' AS Date), CAST(354.14308 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2597, CAST(N'2018-04-03' AS Date), CAST(340.95376 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2598, CAST(N'2018-04-04' AS Date), CAST(339.42701 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2599, CAST(N'2018-04-07' AS Date), CAST(343.72930 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2600, CAST(N'2018-04-08' AS Date), CAST(345.90779 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2601, CAST(N'2018-04-22' AS Date), CAST(333.38411 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2602, CAST(N'2018-04-23' AS Date), CAST(351.79679 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2603, CAST(N'2018-04-24' AS Date), CAST(339.22850 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2604, CAST(N'2018-04-25' AS Date), CAST(333.65453 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2605, CAST(N'2018-04-27' AS Date), CAST(326.49482 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2606, CAST(N'2018-04-28' AS Date), CAST(309.95701 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2607, CAST(N'2018-04-29' AS Date), CAST(317.54115 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2608, CAST(N'2018-05-01' AS Date), CAST(295.55735 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2609, CAST(N'2018-05-02' AS Date), CAST(312.43740 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2610, CAST(N'2018-05-03' AS Date), CAST(286.76126 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2611, CAST(N'2018-05-04' AS Date), CAST(297.70159 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2612, CAST(N'2018-05-05' AS Date), CAST(295.35846 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2613, CAST(N'2018-05-06' AS Date), CAST(293.14265 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2614, CAST(N'2018-05-07' AS Date), CAST(277.67772 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2615, CAST(N'2018-05-08' AS Date), CAST(276.04522 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2616, CAST(N'2018-05-09' AS Date), CAST(274.11020 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2617, CAST(N'2018-05-10' AS Date), CAST(281.32624 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2618, CAST(N'2018-05-11' AS Date), CAST(272.35191 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2619, CAST(N'2018-05-12' AS Date), CAST(281.27408 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2620, CAST(N'2018-05-13' AS Date), CAST(283.74256 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2621, CAST(N'2018-05-14' AS Date), CAST(296.70057 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2622, CAST(N'2018-05-15' AS Date), CAST(274.29898 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2623, CAST(N'2018-05-16' AS Date), CAST(275.28030 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2624, CAST(N'2018-05-17' AS Date), CAST(282.39578 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2625, CAST(N'2018-05-19' AS Date), CAST(277.99348 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2626, CAST(N'2018-05-20' AS Date), CAST(271.39178 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2627, CAST(N'2018-05-21' AS Date), CAST(254.51992 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2628, CAST(N'2018-05-22' AS Date), CAST(262.45676 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2629, CAST(N'2018-05-23' AS Date), CAST(265.98277 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2630, CAST(N'2018-05-24' AS Date), CAST(249.18907 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2631, CAST(N'2018-05-25' AS Date), CAST(255.11930 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2632, CAST(N'2018-05-26' AS Date), CAST(243.54459 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2633, CAST(N'2018-05-27' AS Date), CAST(253.53607 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2634, CAST(N'2018-05-28' AS Date), CAST(358.72732 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2635, CAST(N'2018-05-29' AS Date), CAST(268.44062 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2636, CAST(N'2018-05-30' AS Date), CAST(264.56513 AS Numeric(18, 5)))
GO
INSERT [dbo].[DemoHeatExchangerUCoefficient] ([ID], [Date], [UCoefficient]) VALUES (2637, CAST(N'2018-05-31' AS Date), CAST(254.49972 AS Numeric(18, 5)))
GO
SET IDENTITY_INSERT [dbo].[DemoHeatExchangerUCoefficient] OFF
GO

```
</details>

## Data Stream
An example of how to contextualize simulated data, run recommendations and output the data to the Application Designer.

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Configured Data Stream](Images/DataStream.png)
</details>

The data stream is configured using: 

* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Event Simulator</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - Simulates data for the data stream
* <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Adding asset Ids to the data
* <a href="https://xmpro.gitbook.io/broadcast/" target="_blank"><i>Broadcast</i></a> - Broadcast data to other agents
* <a href="https://xmpro.gitbook.io/rounding/" target="_blank"><i>Rounding</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Rounding all values
* <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank"><i>XMPro App</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agent</a> - View data in the App Designer
* <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank"><i>Run Recommendation</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agent</a> - Run Recommendation

## Recommendation

The recommendation is configured using one rule: 

<details>
<summary markdown="span">Heat Exchanger Fouling (Validate if the asset has a high fouling anomaly)</summary>

![Reccommendation_01](Images/Recommendation_01.png)
</details>

##
## Application
A live-data application for a heat exchanger asset, displaying metrics, usage profile, operational safety intelligence, historical data and recommendations.


### Heat Exchanger View
<details>
	<summary markdown="span">Expand to view screenshot</summary>

![Application_01](Images/Application_01.png)
</details>

The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/text" target="_blank"><i>Text</i></a> to display the live data on a schematic
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge"><i>Circular Gauge</i></a> showing the effective utilization percentage
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart"><i>Charts</i></a> :
  * to visualize the historical count of equipment requiring maintenance
  * to view the usage time profile
* <a href="https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations" target="_blank"><i>Recommendations</i></a> to view current open recommendations for the asset
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/indicator" target="_blank"><i>Indicator</i></a> a visual status of the safety indication

##
# How to Import

Import Password: 
```
Dem0nstr@t1on
```
For instructions on how to import <a href="https://documentation.xmpro.com/how-tos/import-export-and-clone#importing">click here</a>.


Create/confirm the following variables:
  * App Designer URL
  * App Designer Integration Key (Encrypted)
  * SQL Server
  * SQL Username
  * SQL Password (Encrypted)

## 1. Run SQL Script

	* Execute the script in SQL Server
	* Ensure the data is successfully loaded into the database


## 2. Import the Data Stream

    * Select highest agent version number on import if prompted. 

    * Assign Access to others as required
	
	* Edit the XMPro agents and ensure the URL and Integration Key are selected  
	* Edit the Recommendation agent and ensure the URL and Integration Key are selected

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the Post telemetry agents

<details>
  <summary markdown="span">Expand to view a screenshot of a successfully running data stream with live data</summary>

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

 When importing the application, make sure to map the data source 
 on the import wizard to the above data stream that was imported.
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
    	* Select recommendation elements and tick "Heat Exchanger Fouling" in Block Properties > Behavior:
        	* Landing Page (center-right)
  
	* Save the Application
	* Publish the application
	* Ensure there is data in the application by checking each graph, status and gauge.

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)