---
layout: project-top
title: "Static Alert Count Rollup"
description: "<strong>Static Alert Count Rollup</strong>"
extract: "This widget is broken down into two sections, the left Total Assets is the total area and the right section past the vertical line is where you can get specific."
weight: 4
thumbnail: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticPublishedMode.png"
image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticTotalBox.png"
    caption: "<strong>Above:</strong> Design Mode - Total"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticTotalBox.png"
    caption: "<strong>Above:</strong> Design Mode - Total"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Alert%20Count%20Rollup%20-%20Static.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget contains only a main heading and no sub heading to maximize the space it utilizes.

The Up and Down arrows are indicators and can be adjusted to dynamically show up and down or convert them into another shape in the block properties.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |

<br />
To configure this widget select the box named *__Data Source__* and configure its data source under *Block Properties*.  
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.

To configure and use the total box, select the box named *__Total Box__* and configure its data source under *Block Properties*.  

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticTotalBox.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticTotalBox.png" %}</div>

Make sure to change the fields within the box to get their values from the data source vs static.  
