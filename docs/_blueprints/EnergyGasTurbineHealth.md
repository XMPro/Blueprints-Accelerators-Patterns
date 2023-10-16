---
title: "Energy - Gas Turbine Health"
subtitle: "Energy - Gas Turbine Health"
excerpt: "Energy - Gas Turbine Health"
toc: true
toc_label: "Table of Contents"
tags:
  - Asset Monitoring
  - Condition Monitoring
  - Unity
sidebar:
  - title: "Import Password"
    text: "Dem0nstr@t1on"
  - title: "How to Import"
    text: For instructions click the [link](https://documentation.xmpro.com/how-tos/import-export-and-clone#importing "Click Here")
  - title: "Files"
    text: Application [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Energy%20-%20Gas%20Turbine%20Health/Application/Gas%20Turbine%20Health.xapp "Click Here") <br />Template [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Energy%20-%20Gas%20Turbine%20Health/Template/Gas%20Turbine%20Health.xtml "Click Here") <br /><br />Recommend - Bearing Alerts [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Energy%20-%20Gas%20Turbine%20Health/Recommendation/Bearing%20Alerts.xr "Click Here") <br />Recommend - Dry Gas Seal [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Energy%20-%20Gas%20Turbine%20Health/Recommendation/Dry%20Gas%20Seal%20System.xr "Click Here") <br />Recommend - Motor Winding [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Energy%20-%20Gas%20Turbine%20Health/Recommendation/Motor%20Winding%20Temperature.xr "Click Here") <br /><br />Data Stream [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Energy%20-%20Gas%20Turbine%20Health/Data%20Stream/Gas%20Turbine%20Telemetry.xuc "Click Here")<br /><br />SQL Scripts - Gas Turbine [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Energy%20-%20Gas%20Turbine%20Health/SQL%20Scripts/DemoGasTurbine.sql "Click Here")<br />SQL Scripts - Work Order etc [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Energy%20-%20Gas%20Turbine%20Health/SQL%20Scripts/DemoWorkManagementCompressor.sql "Click Here")

gallery:
  - url: /assets/images/Blueprints/Energy/GasTurbineHealth/Application_01.png
    image_path: assets/images/Blueprints/Energy/GasTurbineHealth/Application_01.png
    alt: "Application View 01"
  - url: /assets/images/Blueprints/Energy/GasTurbineHealth/Application_02.png
    image_path: assets/images/Blueprints/Energy/GasTurbineHealth/Application_02.png
    alt: "Application View 02"
  - url: /assets/images/Blueprints/Energy/GasTurbineHealth/Application_04.png
    image_path: assets/images/Blueprints/Energy/GasTurbineHealth/Application_04.png
    alt: "Application View 04"
  - url: /assets/images/images/Blueprints/Energy/GasTurbineHealth/Application_03.png
    image_path: assets/images/Blueprints/Energy/GasTurbineHealth/Application_03.png
    alt: "Application View 03"
---

A digital twin application offering real-time monitoring with live data and health scoring for a gas turbine assets across multiple sites.

{% include gallery %}

## Application
An overview of sites that drill down to individual assets providing real-time data and status of the gas turbines.  The application is configured using: 

| Block                     | Description                                                  |
| --------                  | ------------------------------------------------------------ |
| <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank">Unity (Legacy)</a>     | To render the Unity files and pass the data to the scene                    |
| <a href="https://documentation.xmpro.com/blocks-toolbox/basic/data-grid" target="_blank">Grid</a>              | To allow the raw data to be viewed           |

## Data Stream
An example of how to contextualize simulated data, broadcast the data, run recommendations and output the gas turbine data to the Application Designer. The data stream is configured using: 

| Agent                     | Description                                                  |
| --------                  | ------------------------------------------------------------ |
| <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank">Event Simulator</a>         | Simulate data           |
| <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank">Calculated Field</a>         | Adding a randomized PumpId out of three posibilities as well as a LocationId           |
| <a href="https://xmpro.gitbook.io/broadcast/" target="_blank">Broadcast</a>         | Broadcast data to other agents           |
| <a href="https://xmpro.gitbook.io/rounding/" target="_blank">Rounding</a>         | To round the data presented to the Application           |
| <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank">XMPro App action agent</a>         | View data in the App Designer           |
| <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank">Run Recommendation agent</a>         | Run Recommendation Rules file           |

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

&nbsp;&nbsp;&#8226; App Designer URL<br />
&nbsp;&nbsp;&#8226; App Designer Integration Key (Encrypted)<br />
&nbsp;&nbsp;&#8226; SQL Server<br />
&nbsp;&nbsp;&#8226; SQL Username<br />
&nbsp;&nbsp;&#8226; SQL Password (Encrypted)<br />
{: .notice--warning}

### 2. Import the Data Stream

&nbsp;&nbsp;&#8226; Select the highest agent version number on import, if prompted<br />
&nbsp;&nbsp;&#8226; Assign Access to others as required<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; XMPro agents: ensure the URL & Integration Key are selected<br />
&nbsp;&nbsp;&#8226; Recommendation agent: ensure the URL & Integration Key are selected<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; Click Apply and save the data stream<br />
&nbsp;&nbsp;&#8226; Publish the data stream and open the live view<br />
&nbsp;&nbsp;&#8226; Ensure there is data in the live view by monitoring the Post telemetry agents
{: .notice--info}

### 3. Import the Application

&nbsp;&nbsp;&#8226; Map the data source on import:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8226; Landing Page:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8226; Pump Data: Simulate Pump Telemetry | Send to App Designer<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; Save the Application<br />
&nbsp;&nbsp;&#8226; Publish the application<br />
&nbsp;&nbsp;&#8226; Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values<br />
{: .notice--info}

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)