---
layout: project-top
title: "Gauge Style - No Heading"
description: "<strong>Gauge Style - No Heading</strong>"
extract: "This widget comprises two primary components: the description and the circular gauge. The description provides textual information or context, typically explaining the data or the purpose of the gauge."
weight: 4
thumbnail: "/assets/images/patterns/widgets/GaugeStylenoHeading/DarkTheme/GaugeStylenoHeadingPublishedMode.png"
image: "/assets/images/patterns/widgets/GaugeStylenoHeading/DarkTheme/GaugeStylenoHeadingPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/patterns/widgets/GaugeStylenoHeading/DarkTheme/GaugeStylenoHeadingPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/patterns/widgets/GaugeStylenoHeading/LightTheme/GaugeStylenoHeadingPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/patterns/widgets/GaugeStylenoHeading/DarkTheme/GaugeStylenoHeadingDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/patterns/widgets/GaugeStylenoHeading/DarkTheme/GaugeStylenoHeadingDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/patterns/widgets/GaugeStylenoHeading/LightTheme/GaugeStylenoHeadingDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/patterns/widgets/GaugeStylenoHeading/LightTheme/GaugeStylenoHeadingDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/patterns/widgets/Gauge%20Style%20no%20Heading.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget comprises two primary components: the description and the circular gauge. 

The "description" provides textual information or context, typically explaining the data or the purpose of the gauge. 

The circular gauge serves as a visual representation of data or a measurement. It is a circular graphical element that can display information in a dynamic and easily interpretable manner, such as a progress indicator, a speedometer, or any other data visualization that can be represented in a circular format.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Circular Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/circular-gauge) | To visually display a linear scale or gauge |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |
| [Box](https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box) | A Box is a simple block that allows you to add data or other elements inside it |

<br />
To configure and use the total section, select the box named *__Data Source__* and configure its data source under *Block Properties*. Within the same property section, you can also configure the circular gauge's behavior, value, range, and appearance to suit your specific needs.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/GaugeStylenoHeading/DarkTheme/GaugeStylenoHeadingDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/GaugeStylenoHeading/LightTheme/GaugeStylenoHeadingDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.