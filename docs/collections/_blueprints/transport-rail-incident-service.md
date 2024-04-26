---
layout: project-top
date: 2023-10-27
title: "Transport Rail Incident Service"
description: "<strong>Transport Rail Incident Service</strong>"
extract: "A rail system digital twin for analyzing incident trends nationally and by state, with asset-level service and maintenance tracking for trains and equipment."
weight: 2
thumbnail: "/assets/images/blueprints/transport-rail-incident-service/ad01.png"
image: "/assets/images/blueprints/transport-rail-incident-service/ad01.png"
categories: ["Asset Monitoring", "Dark Theme", "Digital Cities", "Transport"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/transport-rail-incident-service/ad01.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/transport-rail-incident-service/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/blueprints/transport-rail-incident-service/ad01.png"
    caption: "<strong>Above:</strong> Application View 01"
  - image: "/assets/images/blueprints/transport-rail-incident-service/ad02.png"
    caption: "<strong>Above:</strong> Application View 02"
  - image: "/assets/images/blueprints/transport-rail-incident-service/ad03.png"
    caption: "<strong>Above:</strong> Application View 03"
  - image: "/assets/images/blueprints/transport-rail-incident-service/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
  - image: "/assets/images/blueprints/transport-rail-incident-service/ds01.png"
    caption: "<strong>Above:</strong> Published Data Stream"

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/transport-rail-incident-service/application/"
    image: "/assets/images/icons/AD.png"
  - title: "Recommendations"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/transport-rail-incident-service/recommendation/"
    image: "/assets/images/icons/RM.png"
  - title: "Data Streams"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/transport-rail-incident-service/datastream/"
    image: "/assets/images/icons/DS.png"

---


## Application
A rail system digital twin for analyzing incident trends nationally and by state, with asset-level service and maintenance tracking for trains and equipment.  The application is configured using: 

### 1.0 Landing Page

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To display the active status of assets |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* assets and states |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | Showing the total number of equipment in maintenance over time |
| [Button](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To select the time period for the heat map |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization) | To display a geographic heat map of events |


### 2.0 State Overview

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To display active state for the asset |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* assets and states |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | Showing the number of assets with open alerts |
| [Pie Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display the work order status proportions |


### 3.0 Drilldown

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the number of days until the next service is due |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display a window of live data |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for the assets |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To display the active state for the asset |
| [Data Grid](https://documentation.xmpro.com/blocks-toolbox/basic/data-grid) | Displaying the latest work orders |



## Recommendations
The recommendation is configured using four rules across three recommendations:
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/transport-rail-incident-service/rm01.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/transport-rail-incident-service/rm02.png" %}</div>


## Data Stream
An example of how to contextualize simulated data, broadcast the data, run recommendations and output the data to the Application Designer. The data stream is configured using: 

### Incident Monitoring

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [SQL Listener](https://xmpro.gitbook.io/azure-sql/)        | Trigger On Update           |
| [Broadcast](https://xmpro.gitbook.io/broadcast/) | Broadcast |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/)        | Clustering           |
| [Join transformation](https://xmpro.gitbook.io/join/)              | Join  |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | EntityId and Type Cluster |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/)        | High Frequency Per Year           |
| [Join transformation](https://xmpro.gitbook.io/join/)              | Join  |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | EntityId and Type Frequency |
| [Union](https://xmpro.gitbook.io/union/) | Union |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/) | Incident Cluster |



### Simulate Pump Telemetry

This is used to simulate some sensor data to generalize the options for live data.

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Event Simulator](https://xmpro.gitbook.io/event-simulator/) | Generate Pump Simulator Data |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | Add Asset Ids |
| [Broadcast](https://xmpro.gitbook.io/broadcast/) | Broadcast |
| [Round](https://xmpro.gitbook.io/rounding/) | Rounding |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | Data [Single] |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | Data [Chart] |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/) | Run Recommendation |


## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

- App Designer URL
- App Designer Integration Key <strong>(Encrypted)</strong>
- SQL Server
- SQL Username
- SQL Password <strong>(Encrypted)</strong>

### 2. Add SQL Data
- SQL Data must be added to this demo 
- The following structure is required:

  #### Rail Incident

  | Column Name | Data Type | Description |
  | ---------------- | ----------- | ------------ |
  | ID | Long | Unique ID |
  | Date | Datetime | Log timestamp |
  | City_Name | String | City of incidents |
  | State | String | State of incidents |
  | State_Name | String | State name of incident |
  | Fatalities | Long | Number for fatalities |
  | Injuries | Long | Number of injuries |
  | lat | Double | Latitude of location |
  | lng | Double | Longitude of location |
  | Rail_Equipment | String | Type of rail equipment |


  #### Rail Assets

  | Column Name | Data Type | Description |
  | ---------------- | ----------- | ------------ |
  | AssetID | String | Unique asset identifier |
  | AssetType | String | Type of the asset: `Train`, `Train Crossing`, `Service Vehicle`, `Safety Device` |
  | ID | Long | Entry identifier |
  | LastService | Datetime | Last service |
  | NextService | Datetime | Next service |
  | State | String | State where asset is located |
  | Status | String | Current status of the asset `In Service`, `Out of Service` |

- Execute the scripts in SQL Server
- Ensure the data is successfully loaded into the database 

### 3. Import the Data Stream
- Select the highest agent version number on import, if prompted
- Assign Access to others as required
- <strong>XMPro agents</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/xmpro_app.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Recommendation agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - ensure the URL & Integration Key are selected
- <strong>SQL Context Provider</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/SQL.png" %}) - ensure the correct SQL credentials are entered.
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents

### 4. Import the Recommendations
Map the data stream to import

  | Recommendation Name               | Category                      | Data Stream                |
  | --------------------------------- | ----------------------------- | -------------------------- |
  | Rail Incident Management        | Transport (or own choice)     | Incident Monitoring  |

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/transport-rail-incident-service/rmAccess.png" %}

### 5. Import the Application

- Map the data source on import:
  
  - 3.0 Drilldown:

  Note: this is a placeholder stream, intentionally left generic and should be replaced with data that is relevant to the assets.

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | Live Telemetry | Simulate Pump Telemetry | Send to App |

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/transport-rail-incident-service/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Edit the application to link the recommendations (Select *__Rail Incident Management__* in Block Properties under Behavior)

  | Page | Location | 
  | ----------- | ----------- |
  | 1.0 Landing Page | Top Right |
  | 2.0 State Overview | Bottom Right |

- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values
