---
layout: project-top
title: "Header Status"
description: "<strong>Header Status</strong>"
extract: "This widget offers two distinct states: Running and Not Running, serving as valuable indicators for the data or functionality integrated within the widget."
weight: 4
thumbnail: "/assets/images/Patterns/Widgets/HeaderStatus/DarkTheme/HeaderStatusPublishedMode.png"
image: "/assets/images/Patterns/Widgets/HeaderStatus/DarkTheme/HeaderStatusPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/HeaderStatus/DarkTheme/HeaderStatusPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/HeaderStatus/LightTheme/HeaderStatusPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/HeaderStatus/DarkTheme/HeaderStatusDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/HeaderStatus/DarkTheme/HeaderStatusDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/HeaderStatus/LightTheme/HeaderStatusDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/HeaderStatus/LightTheme/HeaderStatusDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Header%20Status.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget offers two distinct states: "Running" and "Not Running," serving as valuable indicators for the data or functionality integrated within the widget. Furthermore, the elements within this widget are highly configurable, allowing you to tailor them precisely to your requirements.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |

<br />
To configure and use the total section, select the box named *__Data Source__* and configure its data source under *Block Properties*. What this widget fulfill is it utilizes the data source to determine which visual indicators to display. You can choose whether to display the "Not Running" or the "Running" indicator by manipulating the visible flag under *Block Properties*. You have the flexibility to decide whether to use a parameter, the data source itself, or even a dynamic expression to determine the visibility of these indicators.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/HeaderStatus/DarkTheme/HeaderStatusDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/HeaderStatus/LightTheme/HeaderStatusDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.