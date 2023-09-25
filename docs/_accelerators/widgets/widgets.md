---
title: "Widgets"
subtitle: "Widgets"
excerpt: "Alert Count Rollup - Dynamic (Design Mode)"
toc: true
toc_label: "Table of Contents"
tags:
  - Widgets
sidebar:
  - title: "Widgets"
    text: "Lorem Ipsum"
  - title: ""
    image: /_accelerators/widgets/AlertCountRollupDynamicDesignMode
    image_alt: "Data Stream"
  - title: "Import Password"
    text: "Dem0nstr@t1on"
  - title: "How to Import"
    text: For instructions click the [link](https://documentation.xmpro.com/how-tos/import-export-and-clone#importing "Click Here")
  - title: "Files"
    text: SQL Demo - Smart Meter [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Machine%20Learning/Asset%20Monitoring%20-%20Binary%20Classification/SQL%20Scripts/%5BDemoSmartMeter%5D.sql "Click Here") <br />Data Stream [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Machine%20Learning/Asset%20Monitoring%20-%20Binary%20Classification/Asset%20Monitoring%20Binary%20Classification.xuc "Click Here")

gallery:
  - url: /assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png
    image_path: assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png
    alt: "Data Stream"
  - url: /assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png
    image_path: assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png
    alt: "Data Stream Running"
---
An example of binary classification using smart meter data.

{% include gallery %}

## Data Stream
The data stream is configured using: 

| Agent            | Description                                                  |
| --------         | ------------------------------------------------------------ |
| <a href="https://xmpro.gitbook.io/csv/" target="_blank">CSV listener</a>     | Simulate data from CSV file           |
| <a href="https://xmpro.gitbook.io/azure-sql/" target="_blank">SQL listener</a>     | Read consumer reference data from SQL           |
| <a href="https://xmpro.gitbook.io/broadcast/" target="_blank">Broadcast</a>     | Broadcast data to other agents           |
| <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank">XMPro App action agent</a>     | View data in the App Designer           |
| <a href="https://xmpro.gitbook.io/join/" target="_blank">Join transformation</a>     | Contextualize data with data from SQL           |
| <a href="https://xmpro.gitbook.io/binary-classification/" target="_blank">Binary Classification machine learning agent</a>     | Execute binary classification on data           |
| <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank">Run Recommendation agent</a>     | Run Recommendation Rules file           |

feature_row:
  - image_path: /assets/images/AlertCountRollupDynamicDesignMode.png
    alt: "placeholder image 1"
    title: "Placeholder 1"
    excerpt: "This is some sample content that goes here with **Markdown** formatting."
  - image_path: /assets/images/AlertCountRollupDynamicDesignMode.png
    alt: "placeholder image 2"
    title: "Placeholder 2"
    excerpt: "This is some sample content that goes here with **Markdown** formatting."
    url: "#test-link"
    btn_label: "Read More"
    btn_class: "btn--inverse"

{% include feature_row %}

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

&nbsp;&nbsp;&#8226; App Designer URL<br />
&nbsp;&nbsp;&#8226; App Designer Integration Key (Encrypted)<br />
&nbsp;&nbsp;&#8226; SQL Server<br />
&nbsp;&nbsp;&#8226; SQL Username<br />
&nbsp;&nbsp;&#8226; SQL Password (Encrypted)<br />
{: .notice--warning}

### 2. Run SQL Scripts

&nbsp;&nbsp;&#8226; Execute the scripts in SQL Server<br />
&nbsp;&nbsp;&#8226; Ensure the data is successfully loaded into the database 
{: .notice--info}

### 3. Import the Data Stream

&nbsp;&nbsp;&#8226; Select the highest agent version number on import, if prompted<br />
&nbsp;&nbsp;&#8226; Assign Access to others as required<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; XMPro agents: ensure the URL & Integration Key are selected<br />
&nbsp;&nbsp;&#8226; Recommendation agent: ensure the URL & Integration Key are selected<br />
&nbsp;&nbsp;&#8226; SQL agent: ensure the Instance, Username & Password fields are filled in<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; Click Apply and save the data stream<br />
&nbsp;&nbsp;&#8226; Publish the data stream and open the live view<br />
&nbsp;&nbsp;&#8226; Ensure there is data in the live view by monitoring the Post telemetry agents
{: .notice--info}

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. 
For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
