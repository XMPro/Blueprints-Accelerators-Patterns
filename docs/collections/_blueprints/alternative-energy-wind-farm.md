---
layout: project-top
date: 2023-12-22
title: "Alternative Energy - Wind Farm"
description: "<strong>Alternative Energy - Wind Farm</strong>"
extract: "An application for Wind Farm Management. Serves as an advanced hub for real-time monitoring, analytics, and control of multiple wind farms from a centralized location."
weight: 2
thumbnail: "/assets/images/blueprints/alternative-energy-wind-farm/ad01a.png"
image: "/assets/images/blueprints/alternative-energy-wind-farm/ad01a.png"
categories: ["Alternative Energy", "Dark Theme", "Asset Monitoring", "Condition Monitoring", "Unity", "Recommendations"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/alternative-energy-wind-farm/ad01a.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/alternative-energy-wind-farm/ds01.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/blueprints/alternative-energy-wind-farm/ad01a.png"
    caption: "<strong>Above:</strong> Application View 01"
  - image: "/assets/images/blueprints/alternative-energy-wind-farm/ad01b.png"
    caption: "<strong>Above:</strong> Application View 02a"
  - image: "/assets/images/blueprints/alternative-energy-wind-farm/ad02.png"
    caption: "<strong>Above:</strong> Application View 02b"
  - image: "/assets/images/blueprints/alternative-energy-wind-farm/ds01.png"
    caption: "<strong>Above:</strong> Published Data Stream - Flood Prediction"
  - image: "/assets/images/blueprints/alternative-energy-wind-farm/ds02.png"
    caption: "<strong>Above:</strong> Published Data Stream - Overview"
  

files:

  - title: "Maintenance History"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-wind-farm/sql/DemoAlternativeEnergyAIResults.sql"
    image: "/assets/images/icons/SQL.png"
  - title: "Work Orders"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-wind-farm/sql/DemoWorkManagementWindTurbine.sql"
    image: "/assets/images/icons/SQL.png"
  - title: "Wind Farm Management"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-wind-farm/application/Wind%20Farm%20Management.xapp"
    image: "/assets/images/icons/AD.png" 
  - title: "Wind Condition Monitoring"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-wind-farm/recommendation/Wind%20Condition%20Monitoring.xr"
    image: "/assets/images/icons/RM.png"
  - title: "Data for Wind Farm"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-wind-farm/datastream/Data%20for%20Wind%20Farm.xuc"
    image: "/assets/images/icons/DS.png"
  - title: "Wind Turbine Data"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-wind-farm/datastream/Wind%20Turbine%20Data.xuc"
    image: "/assets/images/icons/DS.png"


---

## Application
An overall view of the wind farm with interactive panning between live 3D wind turbine assets. Live and historic energy generation is displayed alongside the real-time wind speed and direction information for contextual energy management. A list of turbine assets showing status allow's users to drilldown to a single turbine view with performance monitoring and maintenance history detail.The application is configured using: 


### 1.0 Landing Page

| Block                                                                                             | Description                                                |
| ------------------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization)              | A visualization for real-time power generation             |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization)              | Wind speed gauge                                           |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization)              | Wind Direction gauge                                       |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart)                      | To display the historical data                             |
| [Unity](https://documentation.xmpro.com/blocks-toolbox/visualizations/unity)                      | Visualize the 3D unity model                               |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | View current open recommendations for *__all__* items      |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator)                       | Indicate the status of the asset                           |
| [Linear Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/linear-gauge)        | Display the performance percentage                         |

### 2.0 Drilldown

| Block                                                                                             | Description                                            |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------ |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization)              | Wind speed gauge                                       |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization)              | Wind Direction gauge                                   |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart)                      | To display the real-time power generation              |
| [Unity](https://documentation.xmpro.com/blocks-toolbox/visualizations/unity)                      | Visualize the 3D unity model                           |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | View current open recommendations for the asset        |
| [Data Grid](https://documentation.xmpro.com/blocks-toolbox/basic/data-grid)                       | Display the maintenance history                        |


## Recommendations

### Wind Condition Monitoring
Proactive detection of potential abnormal events for timely preventive action.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-wind-farm/rm01.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-wind-farm/rm02.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-wind-farm/rm03.png" %}</div>


## Data Streams


### Data for Wind Farm

Create, and listen for data to send to the application for consuming in the Unity block.. The data stream is configured using: 

| Agent                                                                  | Description                                            |
| ---------------------------------------------------------------------- | ------------------------------------------------------ |
| [CSV Listener](https://xmpro.gitbook.io/csv/)                          | Read Data                                              |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/)         | Clean AssetId                                          |
| [Read Recommendations](https://xmpro.gitbook.io/read-recommendation/)  | Read Recommendation                                    |
| [Join transformation](https://xmpro.gitbook.io/join/)                  | Merge Data                                             |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/)         | Work out extra fields                                  |
| [Group and Merge](https://xmpro.gitbook.io/group-and-merge/)           | Group & Merge into one row                             |
| [Data Conversion](https://xmpro.gitbook.io/data-conversion)            | Data Conversion                                        |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                       | Pass data to App                                       |


### Wind Turbine Data

Data Stream to monitor inputs from multiple sources and optimize asset performance. The data stream is configured using: 

| Agent                                                                  | Description                                            |
| ---------------------------------------------------------------------- | ------------------------------------------------------ |
| [CSV Listener](https://xmpro.gitbook.io/csv/)                          | Wind Speed + Direction                                 |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/)         | Add Id                                                 |
| [Round](https://xmpro.gitbook.io/rounding/)                            | Rounding                                               |
| [Alter Attributes](https://xmpro.gitbook.io/alter-attributes/)         | Alter Attributes                                       |
| [Broadcast](https://xmpro.gitbook.io/broadcast/)                       | Broadcast                                              |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                       | XMPro App Chart                                        |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/)                       | SXMPro App Single                                      |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/)     | Run Recommendation                                     |




## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:
- App Designer URL
- App Designer Integration Key <strong>(Encrypted)</strong>


### 2. Import SQL Tables
- Execute SQL files so that the `DemoAlternativeEnergyAIResults` and `DemoWorkManagementWindTurbine` tables are present and contain data.


### 3. Import the Data Streams
Follow the guide for applicable parts:
- Select the highest agent version number on import, if prompted
- Assign Access to others as required
- <strong>XMPro agents</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/xmpro_app.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Recommendation agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Read Recommendation</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - Do not configure yet, this will be configured once the recommendation is imported
- <strong>SQL Context Provider</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/SQL.png" %}) - ensure the correct SQL credentials are entered.
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents


### 4. Import the Recommendations

Map the data stream to import

  | Recommendation Name               | Category                      | Data Stream                |
  | --------------------------------- | ----------------------------- | -------------------------- |
  | Wind Condition Monitoring         | Renewable (or own choice)     | Wind Turbine Data          |

<br>
Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-wind-farm/rmAccess.png" %}


### 5. Set Read Recommendation Agents

Configure the following Read Recommendation agents along with the URL and Key fields:

#### 5.1 Data for Wind Farm
**Recommendation:** Wind Condition Monitoring<br>
**Rules:** *All*


### 6. Import the Application


**Landing Page**

Map the data source on import:

  | Data Source Name          | Data Stream                                  | Agent Option                          |
  | ------------------------- | -------------------------------------------- | ------------------------------------- |
  | Data Chart                | Wind Turbine Data                            | XMPro App Chart                       |
  | Farm Data                 | Data for Wind Farm                           | Pass Data to App                      |

<br>

**Drilldown**

Map the data source on import:

  | Data Source Name           | Data Stream                                  | Agent Option                          |
  | -------------------------- | -------------------------------------------- | ------------------------------------- |
  | Data                       | Wind Turbine Data                            | XMPro App Chart                       |
  | Data Single                | Wind Turbine Data                            | XMPro App Single                      |
  | Turbine Data               | Data for Wind Farm                           | Pass data to App                      |


<br>


- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-wind-farm/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Edit the application to link the recommendations - Select all recommendations mentioned in this guide.

  | Page                        | Location           | Entity ID           |
  | --------------------------- | ------------------ | ------------------- |
  | 1.0 Landing Page            | Bottom Right       | null                |
  | 2.0 Drilldown               | Bottom Right       | Variable.assetId    |



- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values
