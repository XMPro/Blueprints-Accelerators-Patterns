---
layout: project-top
title: "Colored Card Display Alternative - 2 Columns"
description: "<strong>Colored Card Display Alternative - 2 Columns</strong>"
extract: "This widget consists of two columns featuring dynamic value pairs, and it also includes two columns with borders that can be selected or customized according to your preferences."
weight: 4
thumbnail: "/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/DarkTheme/ColoredCardDisplayAlternative2ColumnsPublishedMode.png"
image: "/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/DarkTheme/ColoredCardDisplayAlternative2ColumnsPublishedMode.png"
categories: ["Widget", "Dynamic"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/DarkTheme/ColoredCardDisplayAlternative2ColumnsPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/LightTheme/ColoredCardDisplayAlternative2ColumnsPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/DarkTheme/ColoredCardDisplayAlternative2ColumnsDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/DarkTheme/ColoredCardDisplayAlternative2ColumnsDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/LightTheme/ColoredCardDisplayAlternative2ColumnsDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/LightTheme/ColoredCardDisplayAlternative2ColumnsDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Colored%20Card%20Display%20-%20Alternative%202%20Columns.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget consists of two columns featuring dynamic value pairs, and it also includes two columns with borders that can be selected or customized according to your preferences. The value pairs within this widget automatically adapt and adjust their content based on the data they are associated with.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |

<br />
To set up and utilize the Data Source, begin by selecting the box labeled "Data Source" (as displayed in the image). Next, navigate to the Block Properties and specify the data you wish to display. Ensure that you update the content of each text element to retrieve their values from the designated data source. The dimensions of the widget will seamlessly accommodate the size of the dataset you select, dynamically adjusting to match the count of the data source you have chosen. In other words, whether your dataset is large or small, the widget will adapt in size to accommodate and display the data effectively.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/DarkTheme/ColoredCardDisplayAlternative2ColumnsDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/ColoredCardDisplayAlternative2Columns/LightTheme/ColoredCardDisplayAlternative2ColumnsDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.