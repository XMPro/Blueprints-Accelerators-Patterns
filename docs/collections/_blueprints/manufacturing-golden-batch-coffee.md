---
layout: project-top
date: 2023-11-22
title: "Manufacturing - Golden Batch Coffee"
description: "<strong>Manufacturing - Golden Batch Coffee</strong>"
extract: "A digital twin application offering real-time monitoring of coffee roasting batch processing, providing insights & optimizing quality to align with a golden batch signature using machine learning."
weight: 2
thumbnail: "/assets/images/blueprints/manufacturing-golden-batch-coffee/ad02.png"
image: "/assets/images/blueprints/manufacturing-golden-batch-coffee/ad02.png"
categories: ["Batch Production","AI ML","Manufacturing","Dark Theme", "Optimization"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/manufacturing-golden-batch-coffee/ad02.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/manufacturing-golden-batch-coffee/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/blueprints/manufacturing-golden-batch-coffee/ad01.png"
    caption: "<strong>Above:</strong> Application View 01"
  - image: "/assets/images/blueprints/manufacturing-golden-batch-coffee/ad02.png"
    caption: "<strong>Above:</strong> Application View 02"
  - image: "/assets/images/blueprints/manufacturing-golden-batch-coffee/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/manufacturing-golden-batch-coffee/application/"
    image: "/assets/images/icons/AD.png"
  - title: "Application Template"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/manufacturing-golden-batch-coffee/template/"
    image: "/assets/images/icons/AD.png"    
  - title: "Recommendations"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/manufacturing-golden-batch-coffee/recommendation/"
    image: "/assets/images/icons/RM.png"
  - title: "Data Streams"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/manufacturing-golden-batch-coffee/datastream/"
    image: "/assets/images/icons/DS.png"
  - title: "Notebook - 1.0 Golden Batch - Data"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/manufacturing-golden-batch-coffee/notebook/1.0%20Golden%20Batch%20-%20Data.ipynb"
    image: "/assets/images/icons/AI.png"
  - title: "Notebook - 2.0 Golden Batch - Model"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/manufacturing-golden-batch-coffee/notebook/2.0%20Golden%20Batch%20-%20Model.ipynb"
    image: "/assets/images/icons/AI.png"
  - title: "CSV Data"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/manufacturing-golden-batch-coffee/notebook/data/"
    image: "/assets/images/icons/csv.png"

---

## Application
An overview of the current and previous batch processes that drill down to individual batches. The real-time monitoring of the batch provides real-time data and status of the process including intelligent suggestions to steer the quality towards a golden batch signature.  The application is configured using: 

### Landing Page [1.0 Batches]

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Linear Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/linear-gauge) | To visualize the batch progress |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for *__all__* batches |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active batch |

### Drilldown [2.0 Batch]

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Linear Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/linear-gauge) | To visualize the batch progress |
| [D3](https://documentation.xmpro.com/blocks-toolbox/visualizations/d3-visualization) | A visualization to show the live temperature values |
| [Sparkline](https://documentation.xmpro.com/blocks-toolbox/visualizations/sparkline) | A sparkline to indicate the rate of change for quality |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To display the live operational data |
| [Recommendations](https://documentation.xmpro.com/blocks-toolbox/recommendations/recommendations) | To view current open recommendations for the batch |

## Recommendations
The recommendation is configured using two rules across one recommendation:
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/manufacturing-golden-batch-coffee/rm01.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/manufacturing-golden-batch-coffee/rm02.png" %}</div>

## Data Stream
An example of how to contextualize simulated data, predict batch quality, receive intelligent suggestions, run recommendations and output the batch roaster data to the Application Designer. The data stream is configured using: 

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [CSV Listener](https://xmpro.gitbook.io/csv/) | Simulate the batch data |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | Setting the model paths dynamically |
| [JSON Serializer](https://xmpro.gitbook.io/json/) | Package the data into a JSON object |
| [Python](https://xmpro.gitbook.io/python/) | Run the Golden Batch model |
| [JSON Deserializer](https://xmpro.gitbook.io/json/) | Unpack the results |
| [Alter Attributes](https://xmpro.gitbook.io/alter-attributes/) | Unpack the intelligent suggestions |
| [Broadcast](https://xmpro.gitbook.io/broadcast/) | Broadcast data to other agents |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | View data in the App Designer |
| [Run Recommendation](https://xmpro.gitbook.io/run-recommendation/) | Pass the data to the Recommendation engine to evaluate |

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:
- App Designer URL
- App Designer Integration Key <strong>(Encrypted)</strong>

### 2. Run the XMPro Notebooks
- Run the first Notebook to prepare the data with expected output:
  - <code>roaster.csv</code> & <code>clean.parquet</code> in <code>data</code> folder
- Run the second Notebook to develop the machine learning model with expected output:
  - <code>gb_pca.sav</code>, <code>gb_pls.sav</code> & <code>gb_scaler.save</code> in <code>models</code> folder
- Save model files in location that is accessible by the Stream Host
*Ensure to use the same version Python libraries in the Stream Host as what is ran in the notebooks to generate the models - for this example `scikit-learn 1.6.1` was used.*


### 3. Import the Data Stream
- Select the highest agent version number on import, if prompted
- Assign Access to others as required
- <strong>XMPro agents</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/xmpro_app.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Recommendation agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Calculated Field</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/calculated_field.svg" %}) - ensure the correct model file paths are configured
- <strong>Python agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/python.png" %}) - ensure the correct Python version is selected, a stream host has access to a Python runtime, the paths are set and the script is applied.
  <b>OR</b>
- <strong>MLFLow agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/mlflow.png" %}) - ensure the correct model version is selected and the stream host has access to the MLFlow server.
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents

### 4. Import the Recommendations
- Map the data stream to import<br>
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/manufacturing-golden-batch-coffee/rmImport.png" %}
- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/manufacturing-golden-batch-coffee/rmAccess.png" %}

### 5. Import the Application

- Map the data source on import:
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/manufacturing-golden-batch-coffee/ad.png" %}

  - Landing Page:

  | Data Source Name | Data Stream | Agent Option |
  | ---------------- | ----------- | ------------ |
  | Data | Coffee Roasting Golden Batch - Python/MLFlow | Send to Application for viewing |
  | Data Chart | Coffee Roasting Golden Batch - Python/MLFlow | Send to Application for viewing chart |

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/manufacturing-golden-batch-coffee/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Edit the application to link the recommendations (Select *__Golden Batch - Coffee Roasting__* in Block Properties under Behavior)

  | Page | Location | 
  | ----------- | ----------- |
  | 1.0 Batches | Bottom Right |
  | 2.0 Batch | Bottom Right |

- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values
