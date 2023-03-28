# <img alternative="XMPro Logo X" width="30px" src="https://xmks.s3.amazonaws.com/2020/X-Blue.png#gh-light-mode-only"> Unity - Pump

[**◄ Accelerators, Recipes & Blueprints**](https://github.com/XMPro/Accelerators-Recipes-Blueprints)

[**◄ Accelerators**](https://github.com/XMPro/Accelerators-Recipes-Blueprints/tree/master/Accelerators)

An example of how to generate synthetic data and pass it through a data stream to a Unity model running within an application.

The data stream is configured using 
* an <a href="https://xmpro.gitbook.io/event-simulator/" target="_blank"><i>Event Simulator</i></a> <a href="https://documentation.xmpro.com/concepts/agent#listeners" target="_blank">listener</a>
* a <a href="https://xmpro.gitbook.io/calculated-field/" target="_blank"><i>Calculated Field</i></a> <a href="https://documentation.xmpro.com/concepts/agent#transformations" target="_blank">transformation</a> that is adding a randomized PumpId out of three posibilities as well as a LocationId, due to the synthetic nature of the data this is required.
* a <a href="https://xmpro.gitbook.io/run-recommendation" target="_blank"><i>Run Recommendation</i></a> agent to make this data available to the <a href="https://xmpro.com/prescriptive-recommendations/" target="_blank">XMPro recommendation</a> engine
* a <a href="https://xmpro.gitbook.io/rounding/" target="_blank"><i>Rounding</i></a> <a href="https://documentation.xmpro.com/concepts/agent#functions" target="_blank">funtion</a> agent to round the data presented to the Application 
* two <a href="https://xmpro.gitbook.io/xmpro-app/" target="_blank"><i>XMPro App</i></a> <a href="https://documentation.xmpro.com/concepts/agent#action-agents" target="_blank">action agents</a>
	* the first <i>Send to App Designer Single</i> is configured with a cache of 1 to be used on the overlay
	* the second <i>Send to App Designer</i> is configured with a cache of 20 to be used on the charts within the Application

![Configured Data Stream](Images/Data%20Stream.png)



# Files
* Data Stream: <a href="https://github.com/XMPro/Accelerators-Recipes-Blueprints/blob/master/Source/3D%20Capability/Unity%20-%20Pumps/Application/Simulate%20Pump%20Telemetry.xuc" target="_blank">Simulate Pump Telemetry.xuc</a>

# How to Import
Import Password: `Dem0nstr@t1on`

Create/confirm the following variables
  * App Designer URL
  * App Designer Integration Key (Encrypted)

For instructions on how to import <a href="https://documentation.xmpro.com/how-tos/import-export-and-clone#importing">click here</a>

## 1. Import the data stream

    * Simulate Pump Telemetry.xuc
	* Assign Access to others as required
	
	* Edit the XMPro agent "Send to App Designer Single" and ensure the Url and Integration Key are selected
	* Edit the XMPro agent "Send to App Designer" and ensure the Url and Integration Key are selected
	* Edit the Recommendation agent "Run Recommendation" and ensure the Url and Integration Key are selected

	* Click Apply and save the data stream (Click Save on the Action Bar, or CTRL + S on the keyboard)
	* Publish the data stream and open the live view
	* Ensure there is data in the live view at the Post telemetry agents

Successfully running data stream with live data:

![Running Data Stream](Images/Running%20Data%20Stream.png) 

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)