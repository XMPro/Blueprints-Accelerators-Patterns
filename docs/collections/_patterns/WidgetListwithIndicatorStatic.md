---
layout: project-top
title: "List with Indicator - Static"
description: "<strong>List with Indicator - Static</strong>"
extract: "This widget is structured with three distinct columns, each serving a specific purpose: the title column, the indicator column, and the data status column."
weight: 3
thumbnail: "/assets/images/Patterns/Widgets/ListwithIndicatorStatic/DarkTheme/ListwithIndicatorStaticPublishedMode.png"
image: "/assets/images/Patterns/Widgets/ListwithIndicatorStatic/DarkTheme/ListwithIndicatorStaticPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/ListwithIndicatorStatic/DarkTheme/ListwithIndicatorStaticPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/ListwithIndicatorStatic/LightTheme/ListwithIndicatorStaticPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/ListwithIndicatorStatic/DarkTheme/ListwithIndicatorStaticDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/ListwithIndicatorStatic/LightTheme/ListwithIndicatorStaticDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/List%20with%20Indicator%20Static.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget is structured with three distinct columns, each serving a specific purpose: the title column, the indicator column, and the data status column. It contains 4 static rows, you can reduce these or extend these on design mode. Being a static widget, there is no data source that will dynamically add or remove rows. You can dynamically change the title indicator and status column by our data source.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |

<br />
o employ and configure this widget, simply select the element you wish to modify, and then navigate to the *Block Properties* section where you can make the necessary adjustments. It's important to note that any values you enter will remain static and unchangeable while the system is running. Furthermore, you have the freedom to configure the appearance of each indicator to match your design preferences.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/ListwithIndicatorStatic/DarkTheme/ListwithIndicatorStaticDesignMode.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/ListwithIndicatorStatic/LightTheme/ListwithIndicatorStaticDesignMode.png" %}</div>