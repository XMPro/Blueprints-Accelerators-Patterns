---
layout: project-top
title: "Message Box"
description: "<strong>Message Box</strong>"
extract: "This widget incorporates a versatile text input field, providing users with the option to either manually enter text or load existing data into it."
weight: 3
thumbnail: "/assets/images/Patterns/Widgets/MessageBox/DarkTheme/MessageBoxPublishedMode.png"
image: "/assets/images/Patterns/Widgets/MessageBox/DarkTheme/MessageBoxPublishedMode.png"
categories: ["Widget", "Static"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/Patterns/Widgets/MessageBox/DarkTheme/MessageBoxPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/Patterns/Widgets/MessageBox/LightTheme/MessageBoxPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/Patterns/Widgets/MessageBox/DarkTheme/MessageBoxDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/MessageBox/DarkTheme/MessageBoxDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/Patterns/Widgets/MessageBox/LightTheme/MessageBoxDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/Patterns/Widgets/MessageBox/LightTheme/MessageBoxDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Message%20Box%20Indicator%20Static.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget incorporates a versatile text input field, providing users with the option to either manually enter text or load existing data into it. In addition to the text input field, the widget features a "Send" button, offering extensive configuration options for both its action and behavior.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Button](https://documentation.xmpro.com/blocks-toolbox/basic/button) | To trigger an event |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |

<br />
To configure and use the total section, select the box named *__Total Data Source__* and configure its data source under *Block Properties*. Additionally, you have the flexibility to tailor the behavior and action of the button to your preferences. Configure it to perform specific actions that align with your intended functionality.  
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/MessageBox/DarkTheme/MessageBoxDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Patterns/Widgets/MessageBox/LightTheme/MessageBoxDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.