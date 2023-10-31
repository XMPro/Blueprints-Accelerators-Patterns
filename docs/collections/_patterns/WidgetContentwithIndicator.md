---
layout: project-top
title: "Content with Indicator"
description: "<strong>Content with Indicator</strong>"
extract: "This widget includes a main title, a subheading, an indicator, and more detailed content below."
weight: 4
thumbnail: "/assets/images/Patterns/Widgets/ContentwithIndicator/DarkTheme/ContentwithIndicatorPublishedMode.png"
image: "/assets/images/Patterns/Widgets/ContentwithIndicator/DarkTheme/ContentwithIndicatorPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/ContentwithIndicator/DarkTheme/ContentwithIndicatorPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/ContentwithIndicator/LightTheme/ContentwithIndicatorPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/ContentwithIndicator/DarkTheme/ContentwithIndicatorDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/ContentwithIndicator/DarkTheme/ContentwithIndicatorDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/ContentwithIndicator/LightTheme/ContentwithIndicatorDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/ContentwithIndicator/LightTheme/ContentwithIndicatorDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Content%20with%20Indicator.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget includes a main title, a subheading, an indicator, and more detailed content below. It's designed to present information clearly and in an organized way. The main title summarizes the main idea, the subheading adds extra context, the indicator shows status, and the detailed content provides more information. These parts work together to make the widget effective for different types of content.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Indicator](https://documentation.xmpro.com/blocks-toolbox/basic/indicator) | To visually indicate the active state of the assets |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |

<br />
To configure and use the total section, select the box named *__Total Data Source__* and configure its data source under *Block Properties*.  
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/ContentwithIndicator/DarkTheme/ContentwithIndicatorDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/ContentwithIndicator/LightTheme/ContentwithIndicatorDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.