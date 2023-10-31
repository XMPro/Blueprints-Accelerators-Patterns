---
layout: project-top
title: "Dynamic Alert Count Rollup"
description: "<strong>Dynamic Alert Count Rollup</strong>"
extract: "This widget is broken down into two sections, the left Total Assets is the total area and the right section past the vertical line is where you can get specific. The right section will grow and shrink depending on the data source that is provided."
weight: 4
thumbnail: "/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicPublishedMode.png"
image: "/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicPublishedMode.png"
categories: ["Widget", "Dynamic"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicTotalDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Total"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicChildDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Child"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicTotalDataSource.png"
    caption: "Design Mode - Total"
  - image: "/assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicChildDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Child"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Alert%20Count%20Rollup%20-%20Dynamic.xwid"
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
To configure and use the total section, select the box named *__Total Data Source__* and configure its data source under *Block Properties*.  
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicTotalDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicTotalDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.

To configure and use the dynamic section, select the box named *__Child Data Source__* and configure its data source under *Block Properties*.  

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicChildDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicChildDataSource.png" %}</div>

Make sure to change the fields within the box to get their values from the data source vs static.  

How this works is for every row returned in the data source it will create that many child sections.  If you have 4 it will create 4, if you have 3 it will create 3 etc.