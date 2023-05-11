# <img alternative="XMPro Logo X" width="30px" src="https://xmks.s3.amazonaws.com/2020/X-Blue.png#gh-light-mode-only"> Energy - Gas Turbine Health 

[**◄ Accelerators**](https://github.com/XMPro/Blueprints-Accelerators-Patterns/tree/master/Accelerators)

[**◄ Blueprints, Accelerators & Patterns**](https://github.com/XMPro/Blueprints-Accelerators-Patterns)

# Table of contents
1. [Files](#files)
2. [Description](#description)
3. [How To Import](#how-to-import)

<!-- blank line -->
----
<!-- blank line -->

# Files

* SQL Scripts: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Energy%20-%20Gas%20Turbine%20Health/SQL%20Scripts/DemoGasTurbine.sql" target="_blank">DemoGasTurbine</a>, <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Energy%20-%20Gas%20Turbine%20Health/SQL%20Scripts/DemoWorkManagementCompressor.sql" target="_blank">DemoWorkManagementCompressor</a>
* Data Stream: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Energy%20-%20Gas%20Turbine%20Health/Data%20Stream/Gas%20Turbine%20Telemetry.xuc" target="_blank">Gas Turbine Telemetry</a>
* Recommendation: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Energy%20-%20Gas%20Turbine%20Health/Recommendation/Bearing%20Alerts.xr" target="_blank">Bearing Alerts</a>, <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Energy%20-%20Gas%20Turbine%20Health/Recommendation/Dry%20Gas%20Seal%20System.xr" target="_blank">Dry Gas Seal System</a>, <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Energy%20-%20Gas%20Turbine%20Health/Recommendation/Motor%20Winding%20Temperature.xr" target="_blank">Motor Winding Temperature</a>
* Application: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Energy%20-%20Gas%20Turbine%20Health/Application/Gas%20Turbine%20Health.xapp" target="_blank">Gas Turbine Health</a>
* Template: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Energy%20-%20Gas%20Turbine%20Health/Template/Gas%20Turbine%20Health.xtml" target="_blank">Gas Turbine Health</a>

<!-- blank line -->
----
<!-- blank line -->


# Description

## SQL Scripts


### DemoGasTurbine

A list of assets, their location and other details.

<details>
<summary>Columns</summary>

```
[ID]
,[AssetId]
,[HealthScore]
,[OpenWO]
,[LastMaintained]
```
</details>

### DemoWorkManagementCompressor

Work management information.


<details>
<summary>Columns</summary>

```
[ID]
,[AssetNo]
,[WRNo]
,[WONo]
,[Title]
,[WOStatus]
,[Date]
```
</details>

<!-- blank line -->
----
<!-- blank line -->


## Data Stream

An example of how to contextualize simulated data, broadcast the data, run recommendations and output the gas turbine data to the Application Designer.

The data stream is configured using: 

* an <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Event Simulator</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - Simulates data for the stream
* a <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Adding asset Ids
* a <a href="https://xmpro.gitbook.io/broadcast/" target="_blank"><i>Broadcast</i></a> - Broadcast data to other agents
* a <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank"><i>Run Recommendation</i></a> <a href="https://documentation.xmpro.com/concepts/agent#recommendations" target="_blank">agent</a> - Run failure Recommendation Rule
* a <a href="https://xmpro.gitbook.io/rounding/" target="_blank"><i>Rounding</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Rounding all values
* two <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank"><i>XMPro App</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agents</a>:
  * The first *Send to App Designer for Chart* is configured with a cache of 20 for the historic data.
  * The second *Send to App* is configured with a cache of 1 for live status.

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Configured Data Stream](Images/DataStream.png)
</details>

<!-- blank line -->
----
<!-- blank line -->


## Recommendation


### Recommendation Table Of Contents

1. [Bearing Alerts](#brngalerts)
2. [Dry Gas Seal System](#drygas)
3. [Motor Winding Temperature](#monwndtemp)

<!-- blank line -->
----
<!-- blank line -->

<a name="brngalerts"></a>
The recommendation is configured using three rules: 

**Bearing Alerts**
+ Alerts if the drive-end journal bearing of the gearbox has a High temperature
+ Alerts if the thrust bearing vibration has exceeded

<details>
<summary markdown="span">Expand to view screenshot</summary>

![Reccommendation_01_a](Images/Recommendation_01_a.png)
![Reccommendation_01_b](Images/Recommendation_01_b.png)
</details>

<a name="drygas"></a>

**Dry Gas Seal System**
+ Alert for low pressure on dry gas seal system inner seal of the gearbox drive-end


<details>
<summary markdown="span">Expand to view screenshot</summary>

![Reccommendation_02](Images/Recommendation_02.png)
</details>

<a name="monwndtemp"></a>

**Motor Winding Temperature**
+ Alert when motor winding temperature has exceeded threshold


<details>
<summary markdown="span">Expand to view screenshot</summary>

![Reccommendation_03](Images/Recommendation_03.png)
</details>


<!-- blank line -->
----
<!-- blank line -->


## Application
An overview of sites that drilldown to individual assets providing real-time data and status of the gas turbines.


### Landing Page
The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/pie-chart" target="_blank"><i>Pie Chart</i></a> to display the failure counts for all sites
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart" target="_blank"><i>Charts</i></a> 
  * a bar graph to display flaring events
  * a bar graph to display health scores in a histogram
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge"><i>Circular Gauge</i></a> showing the overall health of the site

<details>
	<summary markdown="span">Expand to view screenshot</summary>

![Application_01](Images/Application_01.png)
</details>

<!-- blank line -->
----
<!-- blank line -->

### Site View
The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/indicator" target="_blank"><i>Indicator</i></a> presenting the status of health rate
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart" target="_blank"><i>Chart</i></a> a bar graph to display flaring events
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/data-grid" target="_blank"><i>Data Grid</i></a> presenting the data for each asset
* <a href="https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations" target="_blank"><i>Recommendations</i></a> to view current open recommendations for all assets

<details>
<summary markdown="span">Expand to view screenshot</summary>

![Application_02](Images/Application_02.png)
</details>

<!-- blank line -->
----
<!-- blank line -->

### Gas Turbine
The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/text" target="_blank"><i>Text</i></a> to display the live data
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart" target="_blank"><i>Chart</i></a> to display a window of live data
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/indicator" target="_blank"><i>Indicators</i></a> 
  * presenting the status of hazard risk
  * presenting the status of component risk
* <a href="https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations" target="_blank"><i>Recommendations</i></a> to view current open recommendations for all assets
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/data-grid" target="_blank"><i>Data Grid</i></a> displaying the latest work orders


<details>
<summary markdown="span">Expand to view screenshot</summary>

![Application_03](Images/Application_03.png)
</details>

<!-- blank line -->
----
<!-- blank line -->

### Model View
The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization" target="_blank"><i>D3 Visualisation</i></a> to display an anomaly detection graph

<details>
<summary markdown="span">Expand to view screenshot</summary>

![Application_04](Images/Application_04.png)
</details>

<!-- blank line -->
----
<!-- blank line -->

# How to Import
Import Password: `Dem0nstr@t1on`

Create/confirm the following variables
  * App Designer URL
  * App Designer Integration Key (Encrypted)
  * SQL Server
  * SQL Username
  * SQL Password (Encrypted)

For instructions on how to import <a href="https://documentation.xmpro.com/how-tos/import-export-and-clone#importing">click here</a>


## 1. Run SQL Scripts

	* Execute the scripts in SQL Server
	* Ensure the data is successfully loaded into the database


## 2. Import the Data Stream

    * Assign Access to others as required
	
	* Edit the XMPro agent "Send to App Designer for chart" and ensure the URL and Integration Key are selected
	* Edit the XMPro agent "Send to App" and ensure the URL and Integration Key are selected
	* Edit the Recommendation agent "Run Recommendation" and ensure the URL and Integration Key are selected

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the XMPro App agents

<details>
  <summary markdown="span">Expand to view screenshot of a successfully running data stream with live data</summary>

![Running Data Stream](Images/DataStream_Running.png) 
</details>


## 3. Import the Recommendations

    * Import the including form if it doesn't already exist

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Recommendation Import](Images/Recommendation_Import.png) 

</details>

    * Assign Access to others as required

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Recommendation Access](Images/Recommendation_Access.png) 

</details>

## 4. Import the Application

When importing the application make sure to map the data source on the import wizard to the above data stream that was imported.
Confirm the connections are configured correctly in the App Data tab and in each Page Data tab.

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Application Import](Images/Application_Import.png) 
</details>

    * Assign Access to others as required for design and runtime

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Application Access](Images/Application_Access.png) 
</details>

	* Edit the Application
    	* Select all recommendation elements on all pages and tick:
    	*  "Bearing Alerts"
    	*  "Motor Winding Temperature" 
    	*  "Dry Gas Seal System" 
      in Block Properties > Behavior:
        	* Landing Page (right)
        	* Site View (bottom-left)
        	* Gas Turbine (bottom-right)

	* Save the Application
	* Publish the application
	* Ensure there is data in the application by checking each graph, status and gauge.


## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)