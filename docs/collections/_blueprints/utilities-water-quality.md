---
layout: project-top
date: 2024-04-18
title: "Utilities Water Quality"
description: "<strong>Utilities Water Quality</strong>"
extract: "Digital Twin of municipal water quality monitoring system. Assessing water quality metrics and chemical supply levels."
weight: 2
thumbnail: "/assets/images/blueprints/utilities-water-quality/ad01.png"
image: "/assets/images/blueprints/utilities-water-quality/ad01.png"
categories: ["Asset Monitoring", "Condition Monitoring", "Dark Theme", "Utilities"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/utilities-water-quality/ad01.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/utilities-water-quality/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/blueprints/utilities-water-quality/ad01.png"
    caption: "<strong>Above:</strong> Application View 01"
  - image: "/assets/images/blueprints/utilities-water-quality/ad02.png"
    caption: "<strong>Above:</strong> Application View 02"
  - image: "/assets/images/blueprints/utilities-water-quality/ad03.png"
    caption: "<strong>Above:</strong> Application View 03"
  - image: "/assets/images/blueprints/utilities-water-quality/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/utilities-water-quality/application/"
    image: "/assets/images/icons/AD.png"
  - title: "Application Template"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/utilities-water-quality/template/"
    image: "/assets/images/icons/AD.png"    
  - title: "Recommendations"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/utilities-water-quality/recommendation/"
    image: "/assets/images/icons/RM.png"
  - title: "Data Streams"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/utilities-water-quality/datastream/"
    image: "/assets/images/icons/DS.png"
  - title: "SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/utilities-water-quality/sql/"
    image: "/assets/images/icons/sql.webp"

---

## Application
Digital Twin of municipal water quality monitoring system. Assessing water quality metrics and chemical supply levels. The application is configured using: 

### 1.0 Landing Page

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Map](https://documentation.xmpro.com/blocks-toolbox/visualizations/map) | To display the location of sites |
| [Pie Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display the water event distribution on all sites |
| [Sparkline](https://documentation.xmpro.com/blocks-toolbox/visualizations/sparkline) | Shows the rate of change |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To display the low supply of chemicals |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* sites |


### 2.0 Drilldown

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Map](https://documentation.xmpro.com/blocks-toolbox/visualizations/map) | To display the location of site |
| [Linear Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/linear-gauge) | To display the levels of chemical supplies |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | A line graph to display water quality data |
| [Data Grid](https://documentation.xmpro.com/blocks-toolbox/basic/data-grid) | Presenting the data for chemical orders |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for this site |


### 3.0 Administration

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Map](https://documentation.xmpro.com/blocks-toolbox/visualizations/map) | To display the location of site |
| [Range Slider](https://documentation.xmpro.com/blocks-toolbox/basic/range-selector) | To adjust the limits |
| [Tabs](https://documentation.xmpro.com/blocks-toolbox/layout/tabs) | To select a site |


## Recommendations

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/utilities-water-quality/rm01.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/utilities-water-quality/rm02.png" %}</div>

Additional recommendations for the other 3 other chemical types.

## Data Stream
An example of how to contextualize simulated data, broadcast the data, run recommendations and output data to the Application Designer. The datastream is configured using:


### Water Quality Telemetry

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Event Simulator](https://xmpro.gitbook.io/event-simulator/) | Simulate Water Quality Data |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | Add Station Id |
| [MQTT Action Agent](https://xmpro.gitbook.io/mqtt) | Emit |

Ensure to set up an MQTT broker and configure the MQTT agent with the correct broker address and topic.
This broker should be accessible from the Stream Host.


### Water Quality Monitoring

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [MQTT Listener](https://xmpro.gitbook.io/mqtt) | MQTT Telemetry |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/)        | Locations                                              |
| [Join transformation](https://xmpro.gitbook.io/join/)              | Add Thresholds                                         |
| [Round](https://xmpro.gitbook.io/rounding/) | Rounding |
| [Alter Attributes](https://xmpro.gitbook.io/alter-attributes/)     | Alter Attributes                                       |
| [Broadcast](https://xmpro.gitbook.io/broadcast/) | Broadcast |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/) | Run Recommendation |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | XMPro [Single] |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | XMPro [Multi] |
| [Averaging Field Values](https://xmpro.gitbook.io/aggregate) | Averaging Field Values |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | XMPro [Average] |


## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

- App Designer URL
- App Designer Integration Key <strong>(Encrypted)</strong>
- SQL Server
- SQL Username
- SQL Password <strong>(Encrypted)</strong>
- MQTT Broker Address
- MQTT Topic

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
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/utilities-water-quality/rmAccess.png" %}

### 5. Import the Application

- Map the data source on import:
  - 1.0 Landing Page:

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | Data [Average] | Water Quality Monitoring | XMPro [Average] |
  | Data [Multi] | Water Quality Monitoring | XMPro [Multi] |
  | Data [Single] | Water Quality Monitoring | XMPro [Single] |

- 2.0 Drilldown:

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | Data [Multi] | Water Quality Monitoring | XMPro [Multi] |
  | Data [Single] | Water Quality Monitoring | XMPro [Single] |

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/utilities-water-quality/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Edit the application to link the recommendations (Select *__Chemical Supply Low__*, *__Water Quality pH__*, *__Water Quality Turbidity__* in Block Properties under Behavior)

  | Page | Location | 
  | ----------- | ----------- |
  | 1.0 Landing Page | Bottom Right |
  | 2.0 Drilldown | Top Right |

- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values
