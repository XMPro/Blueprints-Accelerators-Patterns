---
title: ""
subtitle: "Asset Monitoring using binary classification"
excerpt: "Asset Monitoring using binary classification"
toc: true
toc_label: "Table of Contents"
sidebar:
  - title: ""
    image: /assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png
    image_alt: "Data Stream"
  - title: "Import Password"
    text: "Dem0nstr@t1on"
  - title: "How to Import"
    text: For instructions click the [link](https://documentation.xmpro.com/how-tos/import-export-and-clone#importing "Click Here")

gallery:
  - url: /assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png
    image_path: assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png
    alt: "Data Stream"
  - url: /assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png
    image_path: assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png
    alt: "Data Stream Running"
---
An example of binary classification using smart meter data.

## Files
<table>
<tr><td width="240px"> Type </td><td width="500px"> Name </td></tr>
<tr>
<td>SQL Scripts</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Machine%20Learning/Asset%20Monitoring%20-%20Binary%20Classification/SQL%20Scripts/%5BDemoSmartMeter%5D.sql" target="_blank">DemoSmartMeter</a></td>
</tr>
<tr>
<td>Data Stream</td>
<td><a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Machine%20Learning/Asset%20Monitoring%20-%20Binary%20Classification/Asset%20Monitoring%20Binary%20Classification.xuc" target="_blank">Asset Monitoring Binary Classification</a></td>
</tr>
</table>

{% include gallery %}

## Data Stream
The data stream is configured using: 

| Agent            | Description                                                  |
| --------         | ------------------------------------------------------------ |
| <a href="https://xmpro.gitbook.io/csv/" target="_blank">CSV listener</a>     | Simulate data from CSV file           |
| <a href="https://xmpro.gitbook.io/azure-sql/" target="_blank">SQL listener</a>     | Read consumer reference data from SQL           |
| <a href="https://xmpro.gitbook.io/broadcast/" target="_blank">Broadcast</a>     | Broadcast data to other agents           |
| <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank">XMPro App action agent</a>     | View data in the App Designer file           |
| <a href="https://xmpro.gitbook.io/join/" target="_blank">Join transformation</a>     | Contextualize data with data from SQL           |
| <a href="https://xmpro.gitbook.io/binary-classification/" target="_blank">Binary Classification machine learning agent</a>     | Execute binary classification on data           |
| <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank">Run Recommendation agent</a>     | Run Recommendation Rules file           |

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

&nbsp;&nbsp;&#8226; App Designer URL<br />
&nbsp;&nbsp;&#8226; App Designer Integration Key (Encrypted)<br />
&nbsp;&nbsp;&#8226; SQL Server<br />
&nbsp;&nbsp;&#8226; SQL Username<br />
&nbsp;&nbsp;&#8226; SQL Password (Encrypted)<br />
{: .notice}

### 2. Run SQL Scripts

&nbsp;&nbsp;&#8226; Execute the scripts in SQL Server<br />
&nbsp;&nbsp;&#8226; Ensure the data is successfully loaded into the database 
{: .notice--info}

### 3. Import the Data Stream

&nbsp;&nbsp;&#8226; Select the highest agent version number on import, if prompted<br />
&nbsp;&nbsp;&#8226; Assign Access to others as required<br />

&nbsp;&nbsp;&#8226; Edit the XMPro agents and ensure the URL & Integration Key are selected<br />
&nbsp;&nbsp;&#8226; Edit the Recommendation agent and ensure the URL & Integration Key are selected<br />
&nbsp;&nbsp;&#8226; Edit the Azure SQL agent and ensure the Server Instance, Username & Password fields are filled in correctly<br />

&nbsp;&nbsp;&#8226; Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)<br />

&nbsp;&nbsp;&#8226; Publish the data stream and open the live view<br />
&nbsp;&nbsp;&#8226; Ensure there is data in the live view by monitoring the Post telemetry agents
{: .notice--info}

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. 
For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)