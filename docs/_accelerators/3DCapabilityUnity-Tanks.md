---
title: "3D Capability - Tanks in Unity"
subtitle: "3D Capability - Tanks in Unity"
excerpt: "3D Capability - Tanks in Unity"
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
    text: Application [link](https://github.com/XMPro/Accelerators-Recipes-Blueprints/blob/master/Accelerators/3D%20Capability/Unity%20-%20Tanks/Application/Unity_Tanks.xapp "Click Here") <br />Data Stream [link](https://github.com/XMPro/Accelerators-Recipes-Blueprints/blob/master/Accelerators/3D%20Capability/Unity%20-%20Tanks/Data%20Stream/Simulate%20Tank%20Telemetry.xuc "Click Here")

gallery:
  - url: /assets/images/Accelerators/3DCapability/Unity-Tanks/Application.png
    image_path: assets/images/Accelerators/3DCapability/Unity-Tanks/Application.png
    alt: "Application"
  - url: /assets/images/Accelerators/3DCapability/Unity-Tanks/Data Stream.png
    image_path: assets/images/Accelerators/3DCapability/Unity-Tanks/Data Stream.png
    alt: "Data Stream"
  - url: /assets/images/Accelerators/3DCapability/Unity-Tanks/Running Data Stream.png
    image_path: assets/images/Accelerators/3DCapability/Unity-Tanks/Running Data Stream.png
    alt: "Data Stream Running"
---

An example of how to generate synthetic data and pass it through a data stream to a Unity model running within an application.

{% include gallery %}

## Application
An example of how to visualize the synthetic data passed by the data stream to a Unity model in an application.  The application is configured using: 

| Block                     | Description                                                  |
| --------                  | ------------------------------------------------------------ |
| <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank">Unity (Legacy)</a>     | To render the Unity files and pass the data to the scene                    |
| <a href="https://documentation.xmpro.com/blocks-toolbox/basic/data-grid" target="_blank">Grid</a>              | To allow the raw data to be viewed           |

## Data Stream
The data stream is configured using: 

| Agent                     | Description                                                  |
| --------                  | ------------------------------------------------------------ |
| <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank">Event Simulator</a>         | Simulate data           |
| <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank">XMPro App action agent</a>         | View data in the App Designer           |

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
{: .notice--info}
&nbsp;&nbsp;&#8226; Click Apply and save the data stream<br />
&nbsp;&nbsp;&#8226; Publish the data stream and open the live view<br />
&nbsp;&nbsp;&#8226; Ensure there is data in the live view by monitoring the Post telemetry agents
{: .notice--info}

### 3. Import the Application

&nbsp;&nbsp;&#8226; Map the data source on import:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8226; Landing Page:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8226; Simulate Tank Telemetry | Send Tank Data to App<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; Save the Application<br />
&nbsp;&nbsp;&#8226; Publish the application<br />
&nbsp;&nbsp;&#8226; Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values<br />
{: .notice--info}

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)