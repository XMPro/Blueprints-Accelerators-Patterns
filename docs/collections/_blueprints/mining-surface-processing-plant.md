---
layout: project-top
date: 2023-10-27
title: "Mining Surface Processing Plant"
description: "<strong>Mining Surface Processing Plant</strong>"
extract: "An Image map to show mapped recommendations, drill down enabled to illustrate a specific asset's details."
weight: 2
thumbnail: "/assets/images/blueprints/mining-surface-processing-plant/ad01.png"
image: "/assets/images/blueprints/mining-surface-processing-plant/ad01.png"
categories: ["Asset Monitoring", "Condition Monitoring", "Dark Theme", "Unity", "Mining"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/mining-surface-processing-plant/ad01.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/mining-surface-processing-plant/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/blueprints/mining-surface-processing-plant/ad01.png"
    caption: "<strong>Above:</strong> Application View 01"
  - image: "/assets/images/blueprints/mining-surface-processing-plant/ad02.png"
    caption: "<strong>Above:</strong> Application View 02"
  - image: "/assets/images/blueprints/mining-surface-processing-plant/ad03.png"
    caption: "<strong>Above:</strong> Application View 03"
  - image: "/assets/images/blueprints/mining-surface-processing-plant/ad04.png"
    caption: "<strong>Above:</strong> Application View 04"
  - image: "/assets/images/blueprints/mining-surface-processing-plant/ad05.png"
    caption: "<strong>Above:</strong> Application View 05"
  - image: "/assets/images/blueprints/mining-surface-processing-plant/ds01.png"
    caption: "<strong>Above:</strong> Processing Plant Image Map View"
  - image: "/assets/images/blueprints/mining-surface-processing-plant/ds02.png"
    caption: "<strong>Above:</strong> Simulate Pump Telemetry"

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/mining-surface-processing-plant/application/"
    image: "/assets/images/icons/AD.png"
  - title: "Unity Files"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/mining-surface-processing-plant/unity"
    image: "/assets/images/icons/AD.png"  
  - title: "Application Template"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/mining-surface-processing-plant/template/"
    image: "/assets/images/icons/AD.png"    
  - title: "Recommendation"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/mining-surface-processing-plant/recommendation/"
    image: "/assets/images/icons/RM.png"  
  - title: "Data Streams"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/mining-surface-processing-plant/datastream/"
    image: "/assets/images/icons/DS.png"
  - title: "SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/mining-surface-processing-plant/sql/"
    image: "/assets/images/icons/sql.webp"

---

## Application
An overview of assets that drill down to individual assets providing real-time data and status of the pumps.  The application is configured using: 


### Landing Page

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* assets |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendation-chart) | To view chart for open recommendations for *__all__* assets |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To display the asset status |


### 2.0 Pump Drilldown

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display a window of live data |
| [Circular Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge) | To display the efficiency |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations the specific pump |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | Status indicators |
| [Linear Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/linear-gauge) | To display the health scores |
| [Unity](https://documentation.xmpro.com/blocks-toolbox/visualizations/unity) | Visualize the 3D unity model |
| [Data Grid](https://documentation.xmpro.com/blocks-toolbox/basic/data-grid) | Presenting the data for the work requests |


### 2.1 Pump Drilldown Schematic

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display a window of live data |
| [Circular Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge) | To display the efficiency and degradation loss |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations the specific pump |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | Status indicators |
| [Data Grid](https://documentation.xmpro.com/blocks-toolbox/basic/data-grid) | Presenting the data for the work requests |


### 2.2 Pump Drilldown Timeseries View

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Time series Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/time-series-chart) | Visualize the time series data for the pump |


### 2.2 Pump Timeseries Comparison 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Time series Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/time-series-chart) | Visualize and compare the time series data for the pumps |


## Recommendations
The recommendation is configured using four rules across three recommendations:
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/mining-surface-processing-plant/rm01.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/mining-surface-processing-plant/rm02.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/mining-surface-processing-plant/rm03.png" %}</div>

## Data Stream
An example of how to contextualize simulated data, broadcast the data, run recommendations and output the data to the Application Designer. The data stream is configured using: 

### Processing Plant Image Map View

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/)        | Read asset information           |
| [Join transformation](https://xmpro.gitbook.io/join/)              | Merge assets with generated recommendation  |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | Calculate colors and work assigned |
| [Read Recommendations](https://xmpro.gitbook.io/read-recommendation/) | Read all recommendations  |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | Publish to image map |


### Simulate Pump Telemetry

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
- Azure Digital Twins and Azure Data Explorer
   - `URL`, `Client ID`, `Tenant ID` and `Secret`
   - Select appropriate data to an existing Azure Digital Twins and Azure Data Explorer instance

### 2. Run SQL Scripts
- Execute the scripts in SQL Server
- Ensure the data is successfully loaded into the database 

### 3. Import the Data Stream
- Select the highest agent version number on import, if prompted
- Assign Access to others as required
- <strong>XMPro agents</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/xmpro_app.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Recommendation agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - ensure the URL & Integration Key are selected
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents

### 4. Import the Recommendations
- Mark the included form if it doesn't already exist and map the data stream to import
- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/mining-surface-processing-plant/rmAccess.png" %}

### 5. Import the Application

- Map the data source on import:
  - Landing Page:

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | Live Data | Processing Plan Image Map View | Publish to Image Map |

  - 2.0 Pump Drilldown:

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | LiveTelemetry | Simulate Pump Telemetry | Send to App Designer |

  - 2.1 Pump Drilldown Schematic:

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | LiveTelemetry | Simulate Pump Telemetry | Send to App Designer |


- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/mining-surface-processing-plant/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Edit the application to link the recommendations (Select *__Amp Trip__*, *__Discharge Pressure__* in Block Properties under Behavior)

  | Page | Location | 
  | ----------- | ----------- |
  | Landing Page | Top Right and Chart at Bottom Left |
  | 2.0 Pump Drilldown | Bottom Right |
  | 2.1 Pump Drilldown Schematic | Bottom Right |

- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values

