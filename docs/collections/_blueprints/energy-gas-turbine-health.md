---
layout: project-top
date: 2023-10-27
title: "Energy - Gas Turbine Health"
description: "<strong>Energy - Gas Turbine Health</strong>"
extract: "A digital twin application offering real-time monitoring with live data and health scoring for gas turbine assets across multiple sites."
weight: 2
thumbnail: "/assets/images/blueprints/energy-gas-turbine-health/ad01.png"
image: "/assets/images/blueprints/energy-gas-turbine-health/ad01.png"
categories: ["Asset Monitoring","Condition Monitoring","Energy","Light Theme"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/energy-gas-turbine-health/ad01.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/energy-gas-turbine-health/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/blueprints/energy-gas-turbine-health/ad01.png"
    caption: "<strong>Above:</strong> Application View 01"
  - image: "/assets/images/blueprints/energy-gas-turbine-health/ad02.png"
    caption: "<strong>Above:</strong> Application View 02"
  - image: "/assets/images/blueprints/energy-gas-turbine-health/ad03.png"
    caption: "<strong>Above:</strong> Application View 03"
  - image: "/assets/images/blueprints/energy-gas-turbine-health/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/energy-gas-turbine-health/application/Gas%20Turbine%20Health.xapp"
    image: "/assets/images/icons/AD.png"
  - title: "Application Template"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/energy-gas-turbine-health/template/Gas%20Turbine%20Health.xtml"
    image: "/assets/images/icons/AD.png"    
  - title: "Recommendation - Bearing Alerts"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/energy-gas-turbine-health/recommendation/Bearing%20Alerts.xr"
    image: "/assets/images/icons/RM.png"
  - title: "Recommendation - Dry Gas Seal"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/energy-gas-turbine-health/recommendation/Dry%20Gas%20Seal%20System.xr"
    image: "/assets/images/icons/RM.png"
  - title: "Recommendation - Motor Winding"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/energy-gas-turbine-health/recommendation/Motor%20Winding%20Temperature.xr"
    image: "/assets/images/icons/RM.png"  
  - title: "Data Stream - Gas Turbine Telemetry"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/energy-gas-turbine-health/datastream/Gas%20Turbine%20Telemetry.xuc"
    image: "/assets/images/icons/DS.png"
  - title: "SQL - Gas Turbine"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/energy-gas-turbine-health/sql/DemoGasTurbine.sql"
    image: "/assets/images/icons/sql.webp"
  - title: "SQL - Work order etc"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/energy-gas-turbine-health/sql/DemoWorkManagementCompressor.sql"
    image: "/assets/images/icons/sql.webp"

---

## Application
An overview of sites that drill down to individual assets providing real-time data and status of the gas turbines.  The application is configured using: 

### Landing Page

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Pie Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display the failure counts for all sites |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | {::nomarkdown}<ul><li>a bar graph to display flaring events</li><li>a bar graph to display health scores in a histogram</li></ul>{:/} |
| [Circular Guage](https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge) | To display the failure counts for all sites |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* assets |

### Site View

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To display the failure counts for all sites |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | A bar graph to display flaring events |
| [Data Grid](https://documentation.xmpro.com/blocks-toolbox/basic/data-grid) | Presenting the data for each asset |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* assets |

### Gas Turbine

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display a window of live data |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | {::nomarkdown}<ul><li>presenting the status of hazard risk</li><li>presenting the status of component risk</li></ul>{:/} |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for the *__current__* asset |
| [Data Grid](https://documentation.xmpro.com/blocks-toolbox/basic/data-grid) | Displaying the latest work orders |

### Model View

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization) | To display an anomaly detection graph |

## Recommendations
The recommendation is configured using four rules across three recommendations:
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/energy-gas-turbine-health/rm01a.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/energy-gas-turbine-health/rm01b.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/energy-gas-turbine-health/rm02.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/energy-gas-turbine-health/rm03.png" %}</div>

## Data Stream
An example of how to contextualize simulated data, broadcast the data, run recommendations and output the gas turbine data to the Application Designer. The data stream is configured using: 

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Event Simulator](https://xmpro.gitbook.io/event-simulator/) | Simulates the data within the thresholds configured |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | Adding Asset Ids |
| [Broadcast](https://xmpro.gitbook.io/broadcast/) | Broadcast data to other agents |
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
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents

### 4. Import the Recommendations
- Mark the included form if it doesn't already exist and map the data stream to import
- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/energy-gas-turbine-health/rmAccess.png" %}

### 5. Import the Application

- Map the data source on import:
  - Gas Turbine:

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | Live Chart Telemetry | Gas Turbine Telemetry | Send to App Designer for chart |
  | Live Telemetry | Gas Turbine Telemetry | Send to App |

  {% include framework/shortcodes/image.html src="/assets/images/blueprints/energy-gas-turbine-health/adImport.png" %}

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/energy-gas-turbine-health/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Edit the application to link the recommendations (Select *__Bearing Alerts__*, *__Motor Winding Temperature__*, *__Dry Gas Seal System__* in Block Properties under Behavior)

  | Page | Location | 
  | ----------- | ----------- |
  | Landing Page | Right |
  | Site  View | Bottom Left |
  | Gas Turbine | Bottom Right |

- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values
