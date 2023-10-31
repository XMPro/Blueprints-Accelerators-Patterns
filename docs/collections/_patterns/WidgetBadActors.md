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
  - image: "/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsPublishedMode.png"
    caption: "<strong>Above:</strong> Published Mode - No Data"
  - image: "/assets/images/Patterns/Widgets/BadActors/LightTheme/BadActorsDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/BadActors/LightTheme/BadActorsPublishedMode.png"
    caption: "<strong>Above:</strong> Published Mode - No Data"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Bad%20Actors.xwid"
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
To set up this widget, you can click on each text element and assign values to them within the *Block Properties* section. Please ensure that you accurately set the values because once this widget is published, the data is static and cannot be altered.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/BadActors/DarkTheme/BadActorsDesignMode.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/BadActors/LightTheme/BadActorsDesignMode.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.
