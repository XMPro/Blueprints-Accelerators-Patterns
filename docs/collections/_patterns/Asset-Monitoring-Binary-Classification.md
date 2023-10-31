---
layout: project-top
title: "Asset Monitoring using binary classification"
description: "<strong>Asset Monitoring using binary classification</strong>"
extract: "Asset monitoring of smart meters through the use of a binary classification model on real-time data."
weight: 3
thumbnail: "/assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png"
image: "/assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png"
categories: ["Asset Monitoring","Condition Monitoring","AI ML"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_Running_01.png"
    caption: "<strong>Above:</strong> Published Data Stream"
  - image: "/assets/images/Patterns/Machine-Learning/Asset-Monitoring-Binary-Classification/DataStream_01.png"
    caption: "<strong>Above:</strong> Configured Data Stream"
gallery_limit: 2

side_gallery:
  - image: 
    caption: 

files:
  - title: "Data Stream - Binary Classification"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Machine%20Learning/Asset%20Monitoring%20-%20Binary%20Classification/Asset%20Monitoring%20Binary%20Classification.xuc"
    image: "/assets/images/icons/DS.png"
  - title: "SQL - Smart Meter"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Machine%20Learning/Asset%20Monitoring%20-%20Binary%20Classification/SQL%20Scripts/%5BDemoSmartMeter%5D.sql"
    image: "/assets/images/icons/sql.webp"
---

## Data Stream
An example of binary classification using smart meter data.  The data stream is configured using: 

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [CSV listener](https://xmpro.gitbook.io/csv/) | Simulate data from a CSV file |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/) | Read the consumer reference data from SQL |
| [Broadcast](https://xmpro.gitbook.io/broadcast/) | Broadcast data to other agents |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | View data in the App Designer |
| [Join transformation](https://xmpro.gitbook.io/join/) | Contextualize the data with data from SQL |
| [Binary Classification](https://xmpro.gitbook.io/binary-classification/) | Execute the binary classification on the data |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/) | Pass the data to the Recommendation engine to evaluate |

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

- App Designer URL
- App Designer Integration Key <strong>(Encrypted)</strong>
- SQL Server
- SQL Username
- SQL Password <strong>(Encrypted)</strong>

### 2. Run SQL Scripts
- Execute the scripts in SQL Server
- Ensure the data is successfully loaded into the database 

### 3. Import the Data Stream

- Select the highest agent version number on import, if prompted
- Assign Access to others as required
- <strong>XMPro agents</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/xmpro_app.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Recommendation agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - ensure the URL & Integration Key are selected
- <strong>SQL agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/sql.webp" %}) - ensure the Instance, Username & Password fields are filled in
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents
