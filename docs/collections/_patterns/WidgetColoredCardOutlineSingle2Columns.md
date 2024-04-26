---
layout: project-top
title: "Colored Card Outline Single - 2 Columns"
description: "<strong>Colored Card Outline Single - 2 Columns</strong>"
extract: "This widget boasts a single border design, providing an efficient two-column layout for your value-pair content."
weight: 4
thumbnail: "/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/DarkTheme/ColoredCardOutlineSingle2ColumnsPublishedMode.png"
image: "/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/DarkTheme/ColoredCardOutlineSingle2ColumnsPublishedMode.png"
categories: ["Widget", "Dynamic"]
contributor: "XMPro"
role: "Pattern"
import_password: Dem0nstr@t1on
toc: false
toc_label: 

gallery:
  - image: "/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/DarkTheme/ColoredCardOutlineSingle2ColumnsPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Dark Theme"
  - image: "/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/LightTheme/ColoredCardOutlineSingle2ColumnsPublishedMode.png"
    caption: "<strong>Above:</strong> Published View Light Theme"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/DarkTheme/ColoredCardOutlineSingle2ColumnsDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/DarkTheme/ColoredCardOutlineSingle2ColumnsDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"
  - image: "/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/LightTheme/ColoredCardOutlineSingle2ColumnsDesignMode.png"
    caption: "<strong>Above:</strong> Design Mode"
  - image: "/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/LightTheme/ColoredCardOutlineSingle2ColumnsDataSource.png"
    caption: "<strong>Above:</strong> Design Mode - Data Source"

files:
  - title: "Widget"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/patterns/widgets/Colored%20Card%20Display%20-%20Alternative%202%20Columns.xwid"
    image: "/assets/images/icons/AD.png"
---

## App Designer Widget
This widget boasts a single border design, providing an efficient two-column layout for your value-pair content. 

Its dynamic nature means that it seamlessly adapts to the data source you integrate with it, effortlessly generating the necessary content as you provide data. This flexibility ensures that your widget remains up-to-date and responsive to changes in your data source, making it a powerful tool for presenting and organizing information.

The widget is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Text](https://documentation.xmpro.com/blocks-toolbox/basic/text) | To display the live data |
| [Box](https://documentation.xmpro.com/blocks-toolbox/layout/box-and-data-repeater-box) | A Box is a simple block that allows you to add data or other elements inside it |

<br />
To configure this widget select the *__Data Source__*, from there, you have the flexibility to choose your desired data source under the *Block Properties* and ensure that each field within the data source box is appropriately mapped to acquire its corresponding values. 

This configuration ensures that the elements within the widget are automatically generated, dynamically adjusting in response to the dataset's size and content. As your dataset expands or contracts, the widget intelligently adapts by automatically resizing and adjusting its height, ensuring a seamless presentation of your data.
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/DarkTheme/ColoredCardOutlineSingle2ColumnsDataSource.png" %}</div>
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/patterns/widgets/ColoredCardOutlineSingle2Columns/LightTheme/ColoredCardOutlineSingle2ColumnsDataSource.png" %}</div>
Make sure to change the fields within the box to get their values from the data source vs static.