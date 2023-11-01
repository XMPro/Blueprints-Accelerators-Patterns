---
layout: project-top
title: "Bad Actors"
description: "<strong>Bad Actors</strong>"
extract: "This widget is comprises of six (6) title-value components along with a heading. These title-value components serve as informative building blocks, offering quick access to key metrics."
weight: 4
thumbnail: "/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsPublishedMode.png"
image: "/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsPublishedModewithData.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/BadActors/LightTheme/BadActorsPublishedModewithData.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsPublishedMode.png"
    caption: "<strong>Above:</strong> Published Mode - No Data"
  - image: "/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/BadActors/LightTheme/BadActorsPublishedMode.png"
    caption: "<strong>Above:</strong> Published Mode - No Data"
  - image: "/assets/images/Patterns/Widgets/BadActors/LightTheme/BadActorsDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/BadActors/LightTheme/BadActorsDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Bad%20Actors.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget comprises six (6) title-value components along with a heading. These title-value components serve as informative building blocks, offering quick access to key metrics. You also have the flexibility to include extra rows as per your preferences, should the need arise. 

To optimize the available space, this widget features a single primary heading without any additional subheadings. In the comparison section, this widget provides up and down arrows that serve as indicators. 

These arrows are highly configurable within the block properties, offering the flexibility to either maintain a consistent, static up-and-down appearance or morph into various other shapes to suit specific visual preferences and requirements that can typically driven from a data source.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |
| [Box](https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box) | A Box is a simple block that allows you to add data or other elements inside it |

<br />
To configure and use the data source section, select the box named *__Data Source__* and configure its data source under *Block Properties*.  
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/BadActors/LightTheme/BadActorsDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.
