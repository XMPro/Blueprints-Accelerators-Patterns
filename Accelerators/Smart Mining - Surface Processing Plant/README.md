# <img alternative="XMPro Logo X" width="30px" src="https://xmks.s3.amazonaws.com/2020/X-Blue.png#gh-light-mode-only"> Smart Mining - Surface Processing Plant 

[**◄ Accelerators**](https://github.com/XMPro/Blueprints-Accelerators-Patterns/tree/master/Accelerators)

[**◄ Blueprints, Accelerators & Patterns**](https://github.com/XMPro/Blueprints-Accelerators-Patterns)

# Files

* SQL Scripts: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Mining%20-%20Surface%20Processing%20Plant/DemoSTPPIantMapping.sql" target="_blank">[DemoSTPPIantMapping]</a> , 
<a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Mining%20-%20Surface%20Processing%20Plant/DemoWorkManagementPump.sql" target="_blank">[DemoWorkManagementPump]</a>

* Data Stream: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Mining%20-%20Surface%20Processing%20Plant/Data%20Stream/Simulate%20Heat%20Exchanger%20Telemetry.xuc" target="_blank">Processing Plant Image Map View</a>
* Recommendation: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Mining%20-%20Surface%20Processing%20Plant/Recommendation/Heat%20Exchanger%20Fouling.xr" target="_blank">Rec Name</a>
* Application: <a href="https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Accelerators/Smart%20Mining%20-%20Surface%20Processing%20Plant/Application/Surface%20Processing%20Plant.xapp" target="_blank">Surface Processing Plant</a>

# Description


## SQL Scripts


### [DemoSTPPIantMapping].sql

TODO What's it do goes here

<details>
<summary>Columns</summary>

```
[ID]
,[AssetNo]
,[Active]
,[X]
,[Y]
```
</details>

### [DemoWorkManagementPump].sql

TODO What's it do goes here

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
Processing Plant Image Map View
Stream to form and pass the data to the image map view to indicate live status of each asset

The data stream is configured using: 

* <a href="https://xmpro.gitbook.io/azure-sql/" target="_blank"><i>Azure SQL</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">context provider</a> - Allows you to read and output the entire contents of a table to the Data Stream for contextual data
* <a href="https://xmpro.gitbook.io/read-recommendation/" target="_blank"><i>Read Recommendation</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agent</a> - Read Recommendation
* <a href="https://xmpro.gitbook.io/join/" target="_blank"><i>Join</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> Joins streams
* <a href="https://xmpro.gitbook.io/calculated-field" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> Create new column values by applying expressions
* <a href="https://xmpro.gitbook.io/calculated-field" target="_blank"><i>Agent</i></a> <a href="https://documentation.xmpro.com/concepts/agent" target="_blank">agent</a> A reusable object which forms the building block of a Data Stream

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Configured Data Stream](Images/DataStream.png)
</details>

<!-- blank line -->
----
<!-- blank line -->


## Recommendation

The recommendation is configured using the rule: 

**Amp Trip**
+ Checks if the Amperage is outside the threshold

<details>
<summary markdown="span">Expand to view screenshot</summary>

![Recommendation_01](Images/Recommendation_01.png)
</details>

**Discharge Pressure**
+ Checks if the Discharge Pressure is below minimum

<details>
<summary markdown="span">Expand to view screenshot</summary>

![Recommendation_02](Images/Recommendation_02.png)
</details>

<!-- blank line -->
----
<!-- blank line -->

## Application
An Image map to show mapped recommendations, drill down enabled to illustrate a specific asset's details.

### Surface Processing Plant View
The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/text" target="_blank"><i>Text</i></a> to display the live data on a schematic
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart"><i>Charts</i></a> :  to visualize the count of open recommendations per priority level
* <a href="https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations" target="_blank"><i>Recommendations</i></a> to view current open recommendations for the asset

<details>
	<summary markdown="span">Expand to view screenshot</summary>

![Application_01](Images/Application_01.png)
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

	* Execute the scripts in SQL Server
  	* Ensure the data is succesfully loaded into the database

## 2. Import the Data Stream

    * Assign Access to others as required
	
	* Edit the XMPro agent "Send to App Designer" and ensure the URL and Integration Key are selected
	* Edit the Recommendation agent "Run Recommendation" and ensure the URL and Integration Key are selected

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the Post telemetry agents

<details>
  <summary markdown="span">Expand to view screenshot of a successfully running data stream with live data</summary>

![Running Data Stream](Images/DataStream_Running.png) 
</details>