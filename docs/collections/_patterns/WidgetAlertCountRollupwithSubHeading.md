---
layout: project-top
title: "Alert Count Rollup with Sub Heading"
description: "<strong>Alert Count Rollup with Sub Heading</strong>"
extract: "This widget includes a heading and a subheading where you can enter the title and an additional description to provide further context for the title."
weight: 4
thumbnail: "/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingPublishedMode.png"
image: "/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingTotalDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Total Data Source"
  - image: "/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingDataSource.png"
    caption: "Design Mode - Data Source"
  - image: "/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingTotalDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Total Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/patterns/widgets/Alert%20Count%20Rollup%20with%20Subheading.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget includes a heading and a subheading where you can enter the title and an additional description to provide further context for the title.

The Up and Down arrows are indicators and can be adjusted to dynamically show up and down or convert them into another shape in the block properties.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |
| [Box](https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box) | A Box is a simple block that allows you to add data or other elements inside it |

<br />
To configure and use the data source section, select the box named *__Data Source__* and configure its data source under *Block Properties*.  
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.

To configure and use the Total Data Source section, select the box named *__Total Data Source__* and configure its data source under *Block Properties*.  

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingTotalDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingTotalDataSource.png" %}</div>

Make sure to change the fields within the box to get their values from the data source vs static.

The way this functions is that for each row retrieved from the data source, it will generate an equivalent number of data entries in your data source box, if you have 4 rows it will generate 4, if you have 3 rows it will generate 3. This implies that the data will populate automatically, and the box will dynamically adapt its size according to the amount of data in your data source.