---
title: "Asset Monitoring Using Binary Classification"
permalink: /patterns/Asset-Monitoring-Binary-Classification/
#excerpt: "Instructions on how to customize the main navigation and enabling breadcrumb links."
toc: true
toc_label: "Guide"
sidebar:
  - title: ""
    image: /assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png
    image_alt: "Data Stream"
  - title: "Type"
    text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
  - title: "Import Password"
    text: "Dem0nstr@t1on"

gallery:
  - url: /assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png
    image_path: assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png
    alt: "Data Stream"
  - url: /assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png
    image_path: assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png
    alt: "Data Stream Running"

---

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

{% include gallery caption="Data Stream." %}

## Description
### Data Stream

An example of binary classification using smart meter data.

The data stream is configured using: 

* <a href="https://xmpro.gitbook.io/csv/" target="_blank"><i>CSV</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - Simulate data from CSV file
* <a href="https://xmpro.gitbook.io/azure-sql/" target="_blank"><i>SQL</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - read consumer reference data from SQL
* <a href="https://xmpro.gitbook.io/broadcast/" target="_blank"><i>Broadcast</i></a> - Broadcast data to other agents
* <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank"><i>XMPro App</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agent</a> - View data in the App Designer
* <a href="https://xmpro.gitbook.io/join/" target="_blank"><i>Join</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Contextualize data with data from SQL
* <a href="https://xmpro.gitbook.io/binary-classification/" target="_blank"><i>Binary Classification</i></a> <a href="https://documentation.xmpro.com/concepts/agent#ai-and-machine-learning" target="_blank">AI and machine learning agent</a> - Execute binary classification on data
* <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank"><i>Run Recommendation</i></a> <a href="https://documentation.xmpro.com/concepts/agent#recommendation" target="_blank">agent</a> - Run Recommendation Rules

## How to Import
For instructions on how to import <a href="https://documentation.xmpro.com/how-tos/import-export-and-clone#importing" target="_blank">click here</a>.

Create/confirm the following variables
  * App Designer URL
  * App Designer Integration Key (Encrypted)
  * SQL Server
  * SQL Username
  * SQL Password (Encrypted)

### 1. Run SQL Scripts

	* Execute the scripts in SQL Server
	* Ensure the data is successfully loaded into the database

### 2. Import the Data Stream

    * Select highest agent version number on import if prompted. 

    * Assign Access to others as required
	
	* Edit the XMPro agents and ensure the URL and Integration Key are selected
	* Edit the Recommendation agent and ensure the URL and Integration Key are selected
	* Edit the Azure SQL agent and ensure the Server Instance, Username and Password fields are filled in correctly

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the Post telemetry agents

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)