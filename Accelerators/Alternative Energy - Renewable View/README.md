# <img alternative="XMPro Logo X" width="30px" src="https://xmks.s3.amazonaws.com/2020/X-Blue.png#gh-light-mode-only"> Alternative Energy - Renewable View 

[**◄ Accelerators**](https://github.com/XMPro/Blueprints-Accelerators-Patterns/tree/master/Accelerators)

[**◄ Blueprints, Accelerators & Patterns**](https://github.com/XMPro/Blueprints-Accelerators-Patterns)

# Files

* SQL Scripts: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable&20View/SQL%20Scripts" target="_blank">[DemoAlternativeEnergyAsset]</a>, <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable&20View/SQL%20Scripts" target="_blank">[DemoWorkManagementWindTurbine]</a>
* Data Stream: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable&20View/Data%20Stream/" target="_blank">Renewable Condition Monitoring</a>
* Recommendation: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable&20View/Recommendation/" target="_blank">Gearbox Oil</a>
* Application: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Alternative%20Energy%20-%20Renewable&20View/Application/" target="_blank">Renewables View</a>


# Description



## SQL Scripts


### DemoAlternativeEnergyAsset

A list of assets, thier location and other details.

<details>
<summary>Columns</summary>

```SQL
[ID]
,[AssetNo]
,[AssetType]
,[Latitude]
,[Longitude]
,[Active]
,[Criticality]
,[RiskScore]
,[Location]
,[AlertColor]
```
</details>


### DemoWorkManagementWindTurbine

Work management information.

<details>
<summary>Columns</summary>

```SQL
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

An example of how to contextualise simulated data, calculate an oil level, run recommendations and output the wind turbine data to the Application Designer.

The data stream is configured using: 

* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Event Simulator</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a>
  
* <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Adding a boolean column for the join
  
* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>SQL</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - read all records from SQL
  
* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Join</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Contextualize sensor data with data from SQL
  
* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Calculate oil level as `"Low"` or `"High"`
  
* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Broadcast</i></a>
  
* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Run Recommendation</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agents</a> - Run failure Recommendation Rule
  
* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Rounding</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Rounding all values
  
* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Filter</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Filter for all wind turbine assets
  
* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>XMPro App</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agents</a> - View data in the App Designer


<!-- * an <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Event Simulator</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a>
* a <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> that is adding a randomized PumpId out of three posibilities as well as a LocationId, due to the synthetic nature of the data this is required.
* a <a href="https://xmpro.gitbook.io/rounding/" target="_blank"><i>Rounding</i></a> <a href="https://documentation.xmpro.com/concepts/agent#functions" target="_blank">funtion</a> agent to round the data presented to the Application 
* two <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank"><i>XMPro App</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agents</a>
	* the first <i>Send to App Designer Single</i> is configured with a cache of 1 to be used on the overlay
	* the second <i>Send to App Designer</i> is configured with a cache of 20 to be used on the charts within the Application
* a <a href="https://xmpro.gitbook.io/run-recommendation" target="_blank"><i>Run Recommendation</i></a> agent to make this data available to the <a href="https://xmpro.com/prescriptive-recommendations/" target="_blank">XMPro recommendation</a> engine -->

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Configured Data Stream](Images/Data%20Stream.png)
</details>

<!-- blank line -->
----
<!-- blank line -->


## Recommendation

The recommendation is configured using two rules: 

**Gearbox Oil Level**
+ Checks if the Wind Turbine assets have a low gearbox oil level.

	<details>
	<summary markdown="span">Expand to view screenshot</summary>

	![Reccommendation_01](Images/Recommendation_01.png)
	</details>

**Gearbox Oil Viscosity**
+ Checks if the Wind Turbine assets have a high gearbox oil viscosity.


	<details>
	<summary markdown="span">Expand to view screenshot</summary>

	![Reccommendation_01](Images/Recommendation_02.png)
	</details>

<!-- blank line -->
----
<!-- blank line -->

## Application
An example of how to vizualize the synthetic data passed by the data stream to a Unity model in an application.


### Landing Page
The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank"><i>Esri Map</i></a> to render the 3D globe and visualize the assets at their geographic coordinates
  
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/data-grid"><i>Chart</i></a> to visualize the historical count of equiment requiring maintenance
  
* <a href="https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box" target="_blank"><i>Recommendations</i></a> to view current open recommendations for all assets

* <a href="https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box" target="_blank"><i>Indicator</i></a> to visually inspect the active state of the assets 

	<details>
		<summary markdown="span">Expand to view screenshot</summary>

	![Configured Data Stream](Images/Application_01.png)
	</details>

### Asset View
The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank"><i>Chart</i></a> to render the 3D globe and visualize the assets at their geographic coordinates

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank"><i>Pie Chart</i></a> to render the 3D globe and visualize the assets at their geographic coordinates

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank"><i>Indicator</i></a> to render the 3D globe and visualize the assets at their geographic coordinates
  
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/data-grid"><i>Accordion</i></a> to allow the raw data to be viewed
  
* <a href="https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box" target="_blank"><i>Recommendation</i></a> to illustrate using a background image where the recommendations would appear 

	<details>
	<summary markdown="span">Expand to view screenshot</summary>

	![Configured Data Stream](Images/Application_03.png)
	</details>


### Asset Drilldown
The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank"><i>Chart</i></a> to display the time profil for the last 24 hours
  
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/data-grid"><i>Circular Gauge</i></a> showing the effective utilization percentage
  
* <a href="https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box" target="_blank"><i>Indicator</i></a> presenting the status of hazard risk

* <a href="https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box" target="_blank"><i>Recommendations</i></a> to view current open recommendations for current asset

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank"><i>Chart</i></a> to show window of data for Wind Speed

* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1" target="_blank"><i>Chart</i></a> to show window of data for Gearbox Oil

	<details>
	<summary markdown="span">Expand to view screenshot</summary>

	![Configured Data Stream](Images/Application_02.png)
	</details>


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

	* Execute scripts in SQL Server
  
	* Ensure data is succesfully entered into database


## 2. Import the data stream - <i><b>Renewable Condition Monitoring.xuc</b></i>

    * Assign Access to others as required
	
	* Edit the XMPro agent "View Data" and ensure the URL and Integration Key are selected

	* Edit the Recommendation agent "Run Failure Recommendation Rule" and ensure the URL and Integration Key are selected
  
	* Edit the Azure SQL agent "Read all Records" and ensure the Server Instance, Username and Password fields are filled in correctly

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the Post telemetry agents

<details>
  <summary markdown="span">Expand to view screenshot of a successfully running data stream with live data</summary>

![Running Data Stream](Images/Running%20Data%20Stream.png) 
</details>


## 3. Import the Recommendation - <i><b>Gearbox Oil.xr</b></i>

	* When importing the recommendation make sure to map the data source on the import wizard to the above data stream that was imported

    * Import the including form if it doesn't already exist

    * Assign Access to others as required

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Recommendation Import](Images/Recommendation_Import.png) 

</details>

## 4. Import the Application - <i><b>Renewables View.xapp</b></i>

	* When importing the application make sure to map the data source on the import wizard to the above data stream that was imported

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Application Import](Images/Application_Import.png) 
</details>

    * Assign Access to others as required for design and runtime

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Running Data Stream](Images/ApplicationAccess.png) 
</details>

	* Edit the Application
    	* Select all recommendation elements on all pages
        	* Tick "Oil" in Block Properties > Behavior
	* Save the Application
	* Publish the application
	* Ensure there is data in the applciation by checking each graph, status and gauge.

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Running Data Stream](Images/Application.png) 
</details>

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)