---
layout: project-top
title: "Data Tile with Sub Heading - No Content Card"
description: "<strong>Data Tile with Sub Heading - No Content Card</strong>"
extract: "Within this widget, you'll find both a heading and a subheading, complemented by a linear gauge and a value field."
weight: 4
thumbnail: "/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/DarkTheme/DataTilewithSubHeadingNoContentCardPublishedMode.png"
image: "/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/DarkTheme/DataTilewithSubHeadingNoContentCardPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/DarkTheme/DataTilewithSubHeadingNoContentCardPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/LightTheme/DataTilewithSubHeadingNoContentCardPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/DarkTheme/DataTilewithSubHeadingNoContentCardDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/DarkTheme/DataTilewithSubHeadingNoContentCardDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/LightTheme/DataTilewithSubHeadingNoContentCardDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/LightTheme/DataTilewithSubHeadingNoContentCardDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Data%20Tile%20with%20Sub%20Heading%20No%20Content%20Card.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
Within this widget, you'll find both a heading and a subheading, complemented by a linear gauge and a value field. 

The heading and subheading serve as informative titles, providing context and guidance for the content presented. Meanwhile, the linear gauge is a dynamic visual element that can represent various metrics, such as completion status, performance indicators, or any data-driven measurement.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Linear Gauge](https://documentation.xmpro.com/blocks-toolbox/visualizations/linear-gauge) | To visually display a linear scale or gauge |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |
| [Box](https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box) | A Box is a simple block that allows you to add data or other elements inside it |

<br />
To configure and use the total section, select the box named *__Data Source__* and configure its data source under *Block Properties*. Within the Block Properties, proceed to configure the data source settings to suit your specific requirements. It's essential to interact with the fields within the box to ensure they are accurately aligned with the values in your datasets. 
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/DarkTheme/DataTilewithSubHeadingNoContentCardDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/DataTilewithSubHeadingNoContentCard/LightTheme/DataTilewithSubHeadingNoContentCardDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.