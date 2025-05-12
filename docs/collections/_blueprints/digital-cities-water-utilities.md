---
layout: project-top
date: 2023-12-22
title: "Digital Cities - Water Utilities"
description: "<strong>Digital Cities - Water Utilities</strong>"
extract: "A digital twin application employing a leveled approach to monitoring and optimization. A comprehensive overview of the city's water infrastructure, including flood prediction analytics. The focus then shifts to individual pump stations, integrating efficiency monitoring at each site. The app drills down to detailed insights into the performance of each pump, ensuring thorough and efficient management of the city's water systems."
weight: 2
thumbnail: "/assets/images/blueprints/digital-cities-water-utilities/ad02b.png"
image: "/assets/images/blueprints/digital-cities-water-utilities/ad02b.png"
categories: ["AI ML", "Digital Cities", "Dark Theme", "Asset Monitoring", "Condition Monitoring", "Unity", "Recommendations"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ad02b.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ds01.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ad01.png"
    caption: "<strong>Above:</strong> Application View 01"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ad02a.png"
    caption: "<strong>Above:</strong> Application View 02a"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ad02b.png"
    caption: "<strong>Above:</strong> Application View 02b"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ad03a.png"
    caption: "<strong>Above:</strong> Application View 03a Upper"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ad03aLower.png"
    caption: "<strong>Above:</strong> Application View 03a Lower"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ad03b.png"
    caption: "<strong>Above:</strong> Application View 03b"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ds01.png"
    caption: "<strong>Above:</strong> Published Data Stream - Flood Prediction"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ds02.png"
    caption: "<strong>Above:</strong> Published Data Stream - Water Facilities"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ds03.png"
    caption: "<strong>Above:</strong> Published Data Stream - Pump Station"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ds04.png"
    caption: "<strong>Above:</strong> Published Data Stream - Water Pumps"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ds05.png"
    caption: "<strong>Above:</strong> Published Data Stream - Flow Control"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ds06.png"
    caption: "<strong>Above:</strong> Published Data Stream - Flow Control Telemetry"
  - image: "/assets/images/blueprints/digital-cities-water-utilities/ds07.png"
    caption: "<strong>Above:</strong> Published Data Stream - Pumps"
  
files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/digital-cities-water-utilities/application/"
    image: "/assets/images/icons/AD.png"
  - title: "Unity Files"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/digital-cities-water-utilities/application/Unity"
    image: "/assets/images/icons/AD.png"  
  - title: "Application Template"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/digital-cities-water-utilities/template/"
    image: "/assets/images/icons/AD.png"    
  - title: "Recommendations"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/digital-cities-water-utilities/recommendation/"
    image: "/assets/images/icons/RM.png"
  - title: "Data Streams"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/digital-cities-water-utilities/datastream/"
    image: "/assets/images/icons/DS.png"
  - title: "SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/digital-cities-water-utilities/sql/"
    image: "/assets/images/icons/sql.webp"
  - title: "Notebook - Flood Prediction"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/digital-cities-water-utilities/notebook/Flood%20Prediction.ipynb"
    image: "/assets/images/icons/AI.png"
  - title: "CSV - Weather Data Singapore"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/digital-cities-water-utilities/notebook/"
    image: "/assets/images/icons/csv.svg"
  
---

## Application
Three level of a digital city water utilities. Starting with an overview where the live data and status of reservoirs, pump station and treatment plants can be viewed in whole on an interactive map. Flood prediction is actively displayed for the whole area. The next level is the facility level, specifically a pump station for this demonstration, which focuses on aggregate asset performance and energy efficiency. Finally a drilldown of the pump assets for a refined condition monitoring insights and preventative actions. The application is configured using: 

### 1.0 Landing Page

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization) | A visualization for interactive facilities on a map |
| [Circular Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge) | Display the flood prediction status |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | View current open recommendations for *__all__* items |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | Indicate the rate of change for live data |
| [Image](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | Showing the weather icons for the forecast |
| [Select Box](https://documentation.xmpro.com/blocks-toolbox/basic/select-box) | Select a facility |

### 2.0 Pump Station Overview

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Circular Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge) | Display the energy consumption percentage |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | Indicate the rate of change for live data |
| [Image Map](https://documentation.xmpro.com/blocks-toolbox/visualizations/image-map) | View the plant schematic and live data |
| [Radio Buttons](https://documentation.xmpro.com/blocks-toolbox/basic/radio-buttons) | Toggle between 2D and 3D views |
| [Unity](https://documentation.xmpro.com/blocks-toolbox/visualizations/unity) | Visualize the 3D unity model |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization) | Live camera view |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for the plant |

### 3.0 Pump Drilldown

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display the live operational data |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | Indicate the rate of change for live data |
| [Button](https://documentation.xmpro.com/blocks-toolbox/actions/button) | Display running status |
| [Unity](https://documentation.xmpro.com/blocks-toolbox/visualizations/unity) | Visualize the 3D unity model |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization) | Live camera view |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization) | XMPro Co-pilot |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for the pump |

## Recommendations

### Flood Prediction
Proactive detection of potential flood events for timely preventive action.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm03a.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm03b.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm03c.png" %}</div>

### Condition Monitoring Overview
Comprehensive surveillance of water utility infrastructure for operational health.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm02a.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm02b.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm02c.png" %}</div>

### Condition Monitoring Asset
Detailed monitoring of each pump's performance and condition within the system
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm01a.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm01b.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rm01c.png" %}</div>


## Data Streams

### [1] Flood Prediction

An example of how to contextualize simulated data, predict flooding, receive intelligent suggestions, run recommendations and output the data and results to the Application Designer. The data stream is configured using: 

| Agent                                                              | Description                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------ |
| [CSV Listener](https://xmpro.gitbook.io/csv/)                      | Simulate Weather Data                                  |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/)     | Model Path                                             |
| [JSON Serializer](https://xmpro.gitbook.io/json/)                  | Pack Result                                            |
| [Python](https://xmpro.gitbook.io/python/)                         | Flood Prediction Model                                 |
| [Broadcast](https://xmpro.gitbook.io/broadcast/)                   | Broadcast                                              |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                   | Send Data to XMPro App [Single]                        |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                   | Send Data to XMPro App [Chart]                         |
| [Alter Attributes](https://xmpro.gitbook.io/alter-attributes/)     | Alter Attributes                                       |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/) | Run Recommendation                                     |


### [2] Water Facilities

An example of how to stream facility data to the Application Designer. The data stream is configured using: 

| Agent                                                              | Description                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------ |
| [CSV Listener](https://xmpro.gitbook.io/csv/)                      | Simulate Facility Data                                 |
| [Broadcast](https://xmpro.gitbook.io/broadcast/)                   | Broadcast                                              |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                   | City Water Facilities [Single]                         |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/) | Run Recommendation                                     |


### [3] Pump Station

Data related to the pump station assets.

| Agent                                                              | Description                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------ |
| [CSV Listener](https://xmpro.gitbook.io/csv/)                      | Simulate Pump Station Asset Data                       |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/)        | Positions                                              |
| [Join transformation](https://xmpro.gitbook.io/join/)              | Join Positions                                         |
| [Read Recommendations](https://xmpro.gitbook.io/read-recommendation/) | Read Recommendation                                 |
| [Join transformation](https://xmpro.gitbook.io/join/)              | Join Recommendations                                   |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/)     | Low & High Indicators                                  |
| [Alter Attributes](https://xmpro.gitbook.io/alter-attributes/)     | Alter Attributes                                       |
| [Group & Merge](https://xmpro.gitbook.io/group-and-merge)          | Merge Together                                         |
| [Broadcast](https://xmpro.gitbook.io/broadcast/)                   | Broadcast                                              |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                   | Pump Station [Single]                                  |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/) | Run Recommendation                                     |


### [4] Water Pumps

Monitor multiple pump data in real-time for pumps in a water pump station.

| Agent                                                              | Description                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------ |
| [MQTT Listener](https://xmpro.gitbook.io/mqtt)                        | Pumps Data                                            |
| [Read Recommendations](https://xmpro.gitbook.io/read-recommendation/) | Read Recommendation                                   |
| [Join transformation](https://xmpro.gitbook.io/join/)                 | Join                                                  |
| [Round](https://xmpro.gitbook.io/rounding/)                           | Rounding                                              |
| [Broadcast](https://xmpro.gitbook.io/broadcast/)                      | Broadcast                                             |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/)        | Unity Pump [1] Model Variables                        |
| [Group & Merge](https://xmpro.gitbook.io/group-and-merge)             | Group & Merge                                         |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/)           | Map Positioning                                       |
| [Join transformation](https://xmpro.gitbook.io/join/)                 | Join Map Positions                                    |
| [Broadcast](https://xmpro.gitbook.io/broadcast/)                      | Broadcast                                             |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                      | Pump [Single]                                         |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                      | Pump [Chart]                                          |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/)    | Run Recommendation                                    |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/)        | Unity Pumps [3] Model Variables                       |
| [Group & Merge](https://xmpro.gitbook.io/group-and-merge)             | Group & Merge to Asset                                |
| [Window](https://xmpro.gitbook.io/window/)                            | Window                                                |
| [Group & Merge](https://xmpro.gitbook.io/group-and-merge)             | Group & Merge to Station                              |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                      | Pumps [Single]                                        |


### [5] Flow Control

Monitor flow data in real-time for a water pump station.

| Agent                                                              | Description                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------ |
| [MQTT Listener](https://xmpro.gitbook.io/mqtt)                        | Flow Control Telemetry                                |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                      | Flow Control                                          |


### [6] Flow Control Telemetry

Simulate flow data in real-time for a water pump station.

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [CSV Listener](https://xmpro.gitbook.io/csv/)  | Simulate Intake & Discharge                       |
| [MQTT Action Agent](https://xmpro.gitbook.io/mqtt) | Emit Data |


### [7] Pumps

Simulate multiple pump data in real-time for pumps in a water pump station.

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [CSV Listener](https://xmpro.gitbook.io/csv/)  | Data PMP01                       |
| [CSV Listener](https://xmpro.gitbook.io/csv/)  | Data PMP02                       |
| [CSV Listener](https://xmpro.gitbook.io/csv/)  | Data PMP03                       |
| [union](https://xmpro.gitbook.io/union/)  | Union                       |
| [MQTT Action Agent](https://xmpro.gitbook.io/mqtt) | Emit Data |



## Notebook

The Notebook `Flood Prediction.ipynb` can re-run to generate the model file for the Python agent.
The datasets used with this model development are in the same folder as the notebook file, you can find them by clicking on the `CSV - Weather Data SIngapore`item in the links list.
This process involves training a model and saving the weights - be sure to place the resulting file in a location that the Stream Host can access.
Also update the path in the Calculated Field agent for `[1] Flood Prediction` so that the correct file is used to supply the weights.
*Ensure to use the same version Python libraries in the Stream Host as what is ran in the notebooks to generate the models - for this example `scikit-learn 1.6.1` was used.*

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:
- App Designer URL
- App Designer Integration Key <strong>(Encrypted)</strong>


### 2. Import SQL Tables
- Execute SQL files so that the `DemoWorkManagementPump` and `DemoMaintenanceHistory` tables are present and contain data.

### 3. Save the Python Model 
- Download and save the <code>svr_pipeline_model.joblib</code> Joblib file to a chosen directory that is accessible by the [Stream Host](https://documentation.xmpro.com/concepts/collection).
- Note this directory as it needs to be updated in the [1] Flood Prediction Data Stream.
- Ensure `scikit-learn`, `pandas` and `joblib` are installed in the same Python environment.
  - example: `pip install pandas` in terminal.


### 4. Import the Data Streams
Follow the guide for applicable parts:
- Select the highest agent version number on import, if prompted
- Assign Access to others as required
- <strong>XMPro agents</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/xmpro_app.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Recommendation agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Read Recommendation</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - Do not configure yet, this will be configured once the recommendation is imported
- <strong>Calculated Field</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/calculated_field.svg" %}) - ensure the correct model file paths are configured (path chosen in __step 2__)
- <strong>Python agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/python.png" %}) - ensure the correct Python version is selected, a stream host has access to a Python runtime, the paths are set and the script is applied.
- <strong>SQL Context Provider</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/SQL.png" %}) - ensure the correct SQL credentials are entered.
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents


### 5. Import the Recommendations

Map the data stream to import

  | Recommendation Name               | Category                      | Data Stream                |
  | --------------------------------- | ----------------------------- | -------------------------- |
  | Condition Monitoring Asset        | Utilities (or own choice)     | City Water Condition Monitoring  |
  | Condition Monitoring Overview     | Utilities (or own choice)     | City Water Overview              |
  | Flood Prediction                  | Utilities (or own choice)     | City Flood Prediction            |

Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/rmAccess.png" %}


### 6. Set Read Recommendation Agents

Configure the following Read Recommendation agents along with the URL and Key fields:

#### 6.1 Pump Unity & Pumps Unity
**Recommendation:** Condition Monitoring Asset<br>
**Rules:** *All*


### 7. Import the Application


**1.0 Landing Page**

Map the data source on import:

  | Data Source Name          | Data Stream                                  | Agent Option                          |
  | ------------------------- | -------------------------------------------- | ------------------------------------- |
  | City Water Facilities [Single]            | [2] Water Facilities         | City Water Facilities [Single]       |
  | City Flood Prediction [Single]            | [1] Flood Prediction         | City Flood Prediction [Single]       |
  | City Flood Prediction [Chart]             | [1] Flood Prediction         | City Flood Prediction [Chart]        |

<br>

**2.0 Pump Station Overview**

Map the data source on import:

  | Data Source Name           | Data Stream                                  | Agent Option                          |
  | -------------------------- | -------------------------------------------- | ------------------------------------- |
  | City Water Facilities [Single]            | [2] Water Facilities         | City Water Facilities [Single]       |
  | Pump [Single]               | [4] Water Pumps                              | Pump [Single]       |
  | Pump Station [Single]              | [3] Pump Station                              | Pump Station [Single]       |
  | Pumps [Single]               | [4] Water Pumps                              | Pumps [Single]       |



<br>
 
**3.0 Pump Drilldown**

Map the data source on import:

  | Data Source Name           | Data Stream                                  | Agent Option                          |
  | -------------------------- | -------------------------------------------- | ------------------------------------- |
  | Pump [Single]               | [4] Water Pumps                              | Pump [Single]       |
  | Pump [Chart]               | [4] Water Pumps                              | Pump [Chart]       |

<br>


- After importing, on the *Landing Page* download <code>Water Utilities Map.html</code> Change the URL in the D3 map to link to the *Pump Station Overview* page and reupload to the D3 element
  - Specifically the lines: <br> <code>"url": "https://xmpro-ad.azurewebsites.net/render;appId=2379;pageId=9890;appVersion=1;categoryId=;categoryName="</code>
- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/digital-cities-water-utilities/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Edit the application to link the recommendations - Select all recommendations mentioned in this guide.

  | Page                        | Location           | Entity ID           |
  | --------------------------- | ------------------ | ------------------- |
  | 1.0 Landing Page            | Bottom Right       | null                |
  | 2.0 Pump Station Overview   | Bottom Right       | null                |
  | 3.0 Pump Drilldown          | Middle Right       | Parameter.AssetId   |


- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values
