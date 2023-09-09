---
title: "Asset Monitoring Using Binary Classification"
toc: true
toc_label: "Guide"
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

### 1. Create/confirm the following variables
  * App Designer URL
  * App Designer Integration Key (Encrypted)
  * SQL Server
  * SQL Username
  * SQL Password (Encrypted)

### 2. Run SQL Scripts

&nbsp;&nbsp;1. Execute the scripts in SQL Server
&nbsp;&nbsp;2. Ensure the data is successfully loaded into the database 
{: .notice--info}

### 3. Import the Data Stream

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