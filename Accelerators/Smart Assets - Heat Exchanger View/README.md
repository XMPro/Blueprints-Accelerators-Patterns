
## Data Stream
An example of how to contextualize simulated data, run recommendations and output the data to the Application Designer.

<details>
  <summary markdown="span">Expand to view screenshot</summary>

![Configured Data Stream](Images/DataStream.png)
</details>

The data stream is configured using: 

* <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Event Simulator</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a> - Simulates data for the data stream
* <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Adding asset Ids to the data
* <a href="https://xmpro.gitbook.io/broadcast/" target="_blank"><i>Broadcast</i></a> - Broadcast data to other agents
* <a href="https://xmpro.gitbook.io/rounding/" target="_blank"><i>Rounding</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> - Rounding all values
* <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank"><i>XMPro App</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agent</a> - View data in the App Designer
* <a href="https://xmpro.gitbook.io/run-recommendation/" target="_blank"><i>Run Recommendation</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agent</a> - Run Recommendation

## Recommendation

The recommendation is configured using one rule: 

<details>
<summary markdown="span">Heat Exchanger Fouling (Validate if the asset has a high fouling anomaly)</summary>

![Reccommendation_01](Images/Recommendation_01.png)
</details>

##
## Application
A live-data application for a heat exchanger asset, displaying metrics, usage profile, operational safety intelligence, historical data and recommendations.


### Heat Exchanger View
<details>
	<summary markdown="span">Expand to view screenshot</summary>

![Application_01](Images/Application_01.png)
</details>

The application page is configured using the following <a href="https://documentation.xmpro.com/concepts/application/block" target="_blank">blocks</a>:

* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/text" target="_blank"><i>Text</i></a> to display the live data on a schematic
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge"><i>Circular Gauge</i></a> showing the effective utilization percentage
* <a href="https://documentation.xmpro.com/blocks-toolbox/visualizations/chart"><i>Charts</i></a> :
  * to visualize the historical count of equipment requiring maintenance
  * to view the usage time profile
* <a href="https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations" target="_blank"><i>Recommendations</i></a> to view current open recommendations for the asset
* <a href="https://documentation.xmpro.com/blocks-toolbox/basic/indicator" target="_blank"><i>Indicator</i></a> a visual status of the safety indication

##
# How to Import

Import Password: 
```
Dem0nstr@t1on
```
For instructions on how to import <a href="https://documentation.xmpro.com/how-tos/import-export-and-clone#importing">click here</a>.


    * Select highest agent version number on import if prompted. 

    * Assign Access to others as required
	
	* Edit the XMPro agents and ensure the URL and Integration Key are selected  
	* Edit the Recommendation agent and ensure the URL and Integration Key are selected

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the Post telemetry agents

<details>
  <summary markdown="span">Expand to view a screenshot of a successfully running data stream with live data</summary>

![Running Data Stream](Images/DataStream_Running.png) 
</details>


## 3. Import the Recommendation

    * Import the included form if it doesn't already exist

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

 When importing the application, make sure to map the data source 
 on the import wizard to the above data stream that was imported.
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
    	* Select recommendation elements and tick "Heat Exchanger Fouling" in Block Properties > Behavior:
        	* Landing Page (center-right)
  
	* Save the Application
	* Publish the application
	* Ensure there is data in the application by checking each graph, status and gauge.

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

## License
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)