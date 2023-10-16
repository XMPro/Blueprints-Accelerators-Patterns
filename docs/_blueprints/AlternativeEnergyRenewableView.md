---
title: "Alternative Energy - Renewable View "
subtitle: "Alternative Energy - Renewable View "
excerpt: "Alternative Energy - Renewable View "
toc: true
toc_label: "Table of Contents"
tags:
  - Asset Monitoring
  - Condition Monitoring
sidebar:
  - title: "Import Password"
    text: "Dem0nstr@t1on"
  - title: "How to Import"
    text: For instructions click the [link](https://documentation.xmpro.com/how-tos/import-export-and-clone#importing "Click Here")
  - title: "Files"
    text: Application [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Alternative%20Energy%20-%20Renewable%20View/Application/Renewables%20View.xapp "Click Here")<br /><br />Recommend - Oil [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Alternative%20Energy%20-%20Renewable%20View/Recommendation/Gearbox%20Oil.xr "Click Here")<br /><br />Data Stream [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Alternative%20Energy%20-%20Renewable%20View/Data%20Stream/Renewable%20Condition%20Monitoring.xuc "Click Here")<br /><br />SQL Scripts - Asset [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Alternative%20Energy%20-%20Renewable%20View/SQL%20Scripts/%5BDemoAlternativeEnergyAsset%5D.sql "Click Here")<br />SQL Scripts - Work order etc [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/Alternative%20Energy%20-%20Renewable%20View/SQL%20Scripts/%5BDemoWorkManagementWindTurbine%5D.sql "Click Here")

gallery:
  - url: /assets/images/Blueprints/AlternativeEnergy/RenewableView/Application_01.png
    image_path: assets/images/Blueprints/AlternativeEnergy/RenewableView/Application_01.png
    alt: "Application View 01"
  - url: /assets/images/Blueprints/AlternativeEnergy/RenewableView/Application_02.png
    image_path: assets/images/Blueprints/AlternativeEnergy/RenewableView/Application_02.png
    alt: "Application View 02"
  - url: /assets/images/Blueprints/AlternativeEnergy/RenewableView/Application_03.png
    image_path: assets/images/Blueprints/AlternativeEnergy/RenewableView/Application_03.png
    alt: "Application View 03"
  - url: /assets/images/Blueprints/AlternativeEnergy/RenewableView/DataStream_Running.png
    image_path: assets/images/Blueprints/AlternativeEnergy/RenewableView/DataStream_Running.png
    alt: "Data Stream Running"
  - url: /assets/images/Blueprints/AlternativeEnergy/RenewableView/DataStream.png
    image_path: assets/images/Blueprints/AlternativeEnergy/RenewableView/DataStream.png
    alt: "Data Stream"

---

A digital twin application offering real-time monitoring with live data and health scoring for a wind turbine assets across multiple sites.

{% include gallery %}

## Application
An overview of sites that drill down to individual assets providing real-time data and status of the wind turbines.  

## Data Stream
An example of how to contextualize simulated data, calculate an oil level, run recommendations and output the wind turbine data to the Application Designer.

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

&nbsp;&nbsp;&#8226; App Designer URL<br />
&nbsp;&nbsp;&#8226; App Designer Integration Key (Encrypted)<br />
&nbsp;&nbsp;&#8226; SQL Server<br />
&nbsp;&nbsp;&#8226; SQL Username<br />
&nbsp;&nbsp;&#8226; SQL Password (Encrypted)<br />
{: .notice--warning}

### 2. Run SQL Scripts
&nbsp;&nbsp;&#8226; Execute the scripts in against the specific SQL Server<br />
&nbsp;&nbsp;&#8226; Ensure the data is successfully loaded into the database<br />
{: .notice--info}

### 3. Import the Data Stream

&nbsp;&nbsp;&#8226; Select the highest agent version number on import, if prompted<br />
&nbsp;&nbsp;&#8226; Assign Access to others as required<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; XMPro agents: ensure the URL & Integration Key are selected<br />
&nbsp;&nbsp;&#8226; Recommendation agent: ensure the URL & Integration Key are selected<br />
&nbsp;&nbsp;&#8226; Azure SQL agent: ensure the instance details are selected<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; Click Apply and save the data stream<br />
&nbsp;&nbsp;&#8226; Publish the data stream and open the live view<br />
&nbsp;&nbsp;&#8226; Ensure there is data in the live view by monitoring the Post telemetry agents
{: .notice--info}

### 4. Import the Recommendations

&nbsp;&nbsp;&#8226; Import the including form if it doesn't already exist<br />
&nbsp;&nbsp;&#8226; Assign Access to others as required<br />
&nbsp;&nbsp;&#8226; Map the data source on import:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8226; Renewable Condition Monitoring<br />
{: .notice--info}

### 5. Import the Application

&nbsp;&nbsp;&#8226; When importing the application make sure to map the data source on the import wizard to the above data stream that was imported<br />
{: .notice--info}
&nbsp;&nbsp;&#8226; Assign Access to others as required<br />
&nbsp;&nbsp;&#8226; Edit the application to link the recommendations:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8226; Landing Page (top-right)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8226; Asset View (bottom-right)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8226; Asset Drilldown (center-left)<br />
{: .notice--info}

&nbsp;&nbsp;&#8226; Save the Application<br />
&nbsp;&nbsp;&#8226; Publish the application<br />
&nbsp;&nbsp;&#8226; Ensure there is data in the application<br />
{: .notice--info}

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)