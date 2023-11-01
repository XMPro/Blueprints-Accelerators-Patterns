---
layout: project-top
title: "Styled Card Display"
description: "<strong>Styled Card Display</strong>"
extract: "This widget is designed with versatility in mind, offering two distinct formats for presenting information."
weight: 4
thumbnail: "/assets/images/Patterns/Widgets/StyledCardDisplay/DarkTheme/StyledCardDisplayPublishedMode.png"
image: "/assets/images/Patterns/Widgets/StyledCardDisplay/DarkTheme/StyledCardDisplayPublishedMode.png"
categories: ["Widget", "Dynamic"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/StyledCardDisplay/DarkTheme/StyledCardDisplayPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/StyledCardDisplay/LightTheme/StyledCardDisplayPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/StyledCardDisplay/DarkTheme/StyledCardDisplayDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/StyledCardDisplay/DarkTheme/StyledCardDisplayDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/StyledCardDisplay/LightTheme/StyledCardDisplayDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/StyledCardDisplay/LightTheme/StyledCardDisplayDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Styled%20Card%20Display.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget is designed with versatility in mind, offering two distinct formats for presenting information. It includes both a two-column title-value pair on the top row layout and a single-column title-value pair in the bottom arrangement. 

Notably, the rows within this widget feature an alternating color scheme, which can be tailored to your specific preferences and requirements. And to enhance the visual appeal and content emphasis, a prominent heading is also included.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |
| [Box](https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box) | A Box is a simple block that allows you to add data or other elements inside it |

<br />
To configure and use the total section, select the box named *__Data Source__* and configure its data source under *Block Properties*.  
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/StyledCardDisplay/DarkTheme/StyledCardDisplayDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/StyledCardDisplay/LightTheme/StyledCardDisplayDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.