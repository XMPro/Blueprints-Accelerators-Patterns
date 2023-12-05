---
layout: project-top
title: "Image Map"
description: "<strong>Image Map Data Stream</strong>"
extract: "A data stream pattern that can be used to indicate asset status using recommendations and the data from recommendations."
weight: 3
thumbnail: "/assets/images/Patterns/General/ImageMap/Data-Stream-Running.png"
image: "/assets/images/Patterns/General/ImageMap/Data-Stream-Running.png"
categories: ["Recommendations"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/Patterns/General/ImageMap/Data-Stream-Running.png"
    caption: "<strong>Above:</strong> Published Data Stream"
  - image: "/assets/images/Patterns/General/ImageMap/Data-Stream.png"
    caption: "<strong>Above:</strong> Configured Data Stream"
gallery_limit: 2

side_gallery:
  - image: 
    caption: 

files:
  - title: "Data Stream - Image Map"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/General/ImageMap/Image%20Map%20Pattern.xuc"
    image: "/assets/images/icons/DS.png"
---

## Data Stream

The purpose of this data stream is to use the triggered recommendations to assign a color to be used by the app for a visual indicator on the status.  

> The assumpion made is that the recommendations are being triggered using an EntityId of <strong>AssetNo</strong> which is used in the stream loaded from a Context Provider.

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Read Recommendations](https://xmpro.gitbook.io/read-recommendation/) | Read the configured pending recommendations |
| [SQL Context Provider](https://xmpro.gitbook.io/azure-sql/) | Read the consumer reference data from SQL |
| [Join transformation](https://xmpro.gitbook.io/join/) | Contextualize the data with data from SQL |
| [Calculated Field](https://xmpro.gitbook.io/calculated-field/) | Give a weight for the aggregate to use and work out the color scheme |
| [Aggregate](https://xmpro.gitbook.io/aggregate/) | This allows for the higher priority recommendations to move to the top |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | View data in the App Designer |

The read asset information agent can be swapped for any other context provider that provides the respective asset information.  The default information this stream requires is:
- AssetNo
- Description
- AlertX
- AlertY

The <strong>AssetNo</strong> is used to uniquely identify the records as they move through the data stream.

The AlertX and AlertY are used by the application to render in a specific location. They should of two types:
- percentage value - excluding the % symbol (used in the [Image Map block](https://documentation.xmpro.com/blocks-toolbox/visualizations/image-map))
- geo-location as lat and lon (used in the [Map block](https://documentation.xmpro.com/blocks-toolbox/visualizations/map))

This is an example of a configured context provider with the respective fields required for this stream:
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/General/ImageMap/Data-Stream-Asset-Context-Provider.png" %}</div>

The join is configured as:
- Behaviour: *Context*
- Context Endpoint: *Right*
- Prefix: *Only for duplicates*
- Join Type: *Right Outer Join*

The *Right* option is used due to the SQL Context Provider being on the *Right* input leg into the <strong>Join</strong> transformation.  The Join is done on the AssetNo and the EntityId from the recommendations.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/General/ImageMap/Data-Stream-Join.png" %}</div>

The calculated transformation is used to clean the description to remove the R_ or L_ and normalise to *Description*, it also creates a *RuleWeight* for 
- High as 3
- Medium as 2
- Low as 1
- Null as 0

The logic for the calculated field is: 
<code>RulePriority == null ? 0 : RulePriority == "High" ? 3 : RulePriority == "Medium" ? 2 : RulePriority == "Low" ? 1 : 0</code>

This field is being used in the aggregate to help sort the highest priority above lower ones.  It helps when multiple recommendations have been triggered for a single asset and you only want to indicate the highest value as the overall status.  If you dont do this step you run the risk of the app changing its colors on each refresh of the data, i.e. if the data is refreshing at 5 seconds, every 5 seconds the indicator would change from red to orange etc, this helps resolve that challange.

The aggregate is configured to the listener interval polling of *5* seconds to ensure all the data that is loaded into the aggregate window before the aggregation is done.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/General/ImageMap/Data-Stream-Aggregate.png" %}</div>
This block is what ensures only the highest rule is available for the downstream color indication.

The calcualted field following the aggreate is used to assign the colors to pass to the app for use.  Its defined as:
<code>MaxWeight == 3 ? "#CB715E" : MaxWeight == 2 ? "#EBA464" : MaxWeight == 1 ? "#E8C268" : "#79A681"</code>

The resulting colors are:

- <code style="color:#CB715E">#CB715E</code>
- <code style="color:#EBA464">#EBA464</code> 
- <code style="color:#E8C268">#E8C268</code> 
- <code style="color:#79A681">#79A681</code> 

These are passed to the <strong>XMPro agent to be usable within the app.

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

- App Designer URL
- App Designer Integration Key <strong>(Encrypted)</strong>
- SQL Server
- SQL Username
- SQL Password <strong>(Encrypted)</strong>

### 2. Import the Data Stream

- Select the highest agent version number on import, if prompted
- Assign Access to others as required
- <strong>XMPro agents</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/xmpro_app.webp" %}) - ensure the URL & Integration Key are selected
- <strong>Recommendation agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/run_recommendation.webp" %}) - ensure the URL & Integration Key are selected
- <strong>SQL agent</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/sql.webp" %}) - ensure the Instance, Username & Password fields are filled in
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents
