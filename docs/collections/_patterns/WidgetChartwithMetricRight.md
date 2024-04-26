---
layout: project-top
title: "Chart with Metric"
description: "<strong>Chart with Metric</strong>"
extract: "This widget is structured with a title and a graphical chart positioned on the left side, while on the right side, there is another title paired with a corresponding numerical value."
weight: 4
thumbnail: "/assets/images/patterns/widgets/ChartwithMetricRight/DarkTheme/ChartWithMetricRightPublishedMode.png"
image: "/assets/images/patterns/widgets/ChartwithMetricRight/DarkTheme/ChartWithMetricRightPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/patterns/widgets/ChartwithMetricRight/DarkTheme/ChartWithMetricRightPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/patterns/widgets/ChartwithMetricRight/LightTheme/ChartWithMetricRightPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/patterns/widgets/ChartwithMetricRight/DarkTheme/ChartWithMetricRightDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/patterns/widgets/ChartwithMetricRight/DarkTheme/ChartWithMetricRightDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/patterns/widgets/ChartwithMetricRight/LightTheme/ChartWithMetricRightDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/patterns/widgets/ChartwithMetricRight/LightTheme/ChartWithMetricRightDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/patterns/widgets/Chart%20With%20Metric%20Right.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget is structured with a title and a graphical chart positioned on the left side, while on the right side, there is another title paired with a corresponding numerical value. 

The most effective utilization of this widget comes into play when you have a need to conduct comparisons between diverse datasets or when you are keen on monitoring shifts and fluctuations in data patterns over a designated time frame.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Chart](https://documentation.xmpro.com/blocks-toolbox/visualizations/chart) | To visually represent data using symbols, lines, or graphs. |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |
| [Box](https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box) | A Box is a simple block that allows you to add data or other elements inside it |

<br />
To configure this widget select the *__Chart__*, you have several configuration options at your disposal. 

Start by selecting the chart element itself, and then access the *Block Properties* menu to link a data source to the chart. 

Additionally, you can fine-tune the appearance and behavior of the chart by configuring the X and Y axes. Tailor them to correspond to the specific data types you're working with, and if desired, adjust the color schemes to align with your personal preferences.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/ChartwithMetricRight/DarkTheme/ChartWithMetricRightDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/ChartwithMetricRight/LightTheme/ChartWithMetricRightDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.