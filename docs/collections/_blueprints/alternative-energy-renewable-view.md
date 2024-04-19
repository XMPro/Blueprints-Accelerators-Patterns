---
layout: project-top
date: 2023-10-27
title: "Alternative Energy - Renewable View"
description: "<strong>Alternative Energy - Renewable View</strong>"
extract: "A digital twin application offering real-time monitoring of renewable energy assets, providing insights & optimizing operations for peak performance & sustainability."
weight: 2
thumbnail: "/assets/images/blueprints/alternative-energy-renewable-view/ad01.png"
image: "/assets/images/blueprints/alternative-energy-renewable-view/ad01.png"
categories: ["Asset Monitoring","Condition Monitoring","Energy","Dark Theme"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/alternative-energy-renewable-view/ad01.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/alternative-energy-renewable-view/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/blueprints/alternative-energy-renewable-view/ad01.png"
    caption: "<strong>Above:</strong> Application View 01"
  - image: "/assets/images/blueprints/alternative-energy-renewable-view/ad03.png"
    caption: "<strong>Above:</strong> Application View 02"
  - image: "/assets/images/blueprints/alternative-energy-renewable-view/ad02.png"
    caption: "<strong>Above:</strong> Application View 03"
  - image: "/assets/images/blueprints/alternative-energy-renewable-view/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-renewable-view/application/Renewables%20View.xapp"
    image: "/assets/images/icons/AD.png"
  - title: "Application Template"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-renewable-view/template/Renewables%20View.xtml"
    image: "/assets/images/icons/AD.png"    
  - title: "Recommendation - Oil"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-renewable-view/recommendation/Gearbox%20Oil.xr"
    image: "/assets/images/icons/RM.png"
  - title: "Data Stream - Renewable Con Mon"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-renewable-view/datastream/Renewable%20Condition%20Monitoring.xuc"
    image: "/assets/images/icons/DS.png"
  - title: "SQL - Asset"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-renewable-view/sql/%5BDemoAlternativeEnergyAsset%5D.sql"
    image: "/assets/images/icons/sql.webp"
  - title: "SQL - Work order etc"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/alternative-energy-renewable-view/sql/%5BDemoWorkManagementWindTurbine%5D.sql"
    image: "/assets/images/icons/sql.webp"

---

## Application
An overview of sites that drill down to individual assets providing real-time data and status of the wind turbines.  The application is configured using: 

### Landing Page

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [ESRI](https://documentation.xmpro.com/blocks-toolbox/visualizations/esri-map) | To render the 3D map and visualize the assets at their geographic coordinates |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To visualize the historical count of equiment requiring maintenance |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* assets |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |

### Asset View

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | A horizontal bar graph to display assets with open alerts |
| [Pie Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display the current work order status for the assets |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |
| [Accordion](https://documentation.xmpro.com/blocks-toolbox/layout/accordion) | To allow the raw data to be viewed |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* assets |

### Asset Drilldown

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Circular Guage](https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge) | Showing the effective utilization percentage |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | Presenting the status of hazard risk |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for the *__current__* asset |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | {::nomarkdown}<ul><li>to show window of data for Wind Speed</li><li>to show window of data for Gearbox Oil</li><li>to display the time profile for the last 24 hours</li></ul>{:/} |

## Recommendations
The recommendation is configured using two rules across one recommendation:
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-renewable-view/rm01.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-renewable-view/rm02.png" %}</div>

## Data Stream
An example of how to contextualize simulated data, calculate an oil level, run recommendations and output the wind turbine data to the Application Designer. The data stream is configured using: 

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Event Simulator](https://xmpro.gitbook.io/event-simulator/) | Simulates the data within the thresholds configured |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/) | Read the consumer reference data from SQL |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | Adding a boolean column for the join as well as a calculating the oil level as *__"Low"__* or *__"High"__* |
| [Join transformation](https://xmpro.gitbook.io/join/) | Contextualize the data with data from SQL |
| [Broadcast](https://xmpro.gitbook.io/broadcast/) | Broadcast data to other agents |
| [Filter](https://xmpro.gitbook.io/filter/) | Filter for all wind turbine assets |
| [Round](https://xmpro.gitbook.io/rounding/) | Rounding all values |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | View data in the App Designer |
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

### 4. Import the Recommendations
- Mark the included form if it doesn't already exist and map the data stream to import
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-renewable-view/rmImport.png" %}
- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-renewable-view/rmAccess.png" %}

### 5. Import the Application

- Map the data source on import:
  - AssetDrilldown:

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | DrilldownData | Renewable Condition Monitoring | View Data |

  {% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-renewable-view/adImport.png" %}

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/alternative-energy-renewable-view/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Edit the application to link the recommendations (Select *__Oil__* in Block Properties under Behavior)

  | Page | Location | 
  | ----------- | ----------- |
  | Landing Page | Top Right |
  | Asset  View | Bottom Right |
  | Asset Drilldown | Center Left |

- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values
