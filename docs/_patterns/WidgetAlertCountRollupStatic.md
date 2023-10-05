---
title: "Alert Count Rollup - Static"
subtitle: "Alert Count Rollup Static"
excerpt: "Alert Count Rollup Static"
toc: false
toc_label: "Table of Contents"
tags:
  - Widget
sidebar:
  - title: "Import Password"
    text: "Dem0nstr@t1on"
  - title: "How to Import"
    text: For instructions click the [link](https://documentation.xmpro.com/how-tos/apps/manage-widgets#importing-widgets)
  - title: "Files"
    text: Widget [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Alert%20Count%20Rollup%20-%20Static.xwid)

gallery:
  - url: /assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticDesignMode.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticDesignMode.png
    alt: "Design Mode"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticDataSource.png
    alt: "Design Mode - Total"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticTotalBox.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticTotalBox.png
    alt: "Design Mode - Child"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticDesignMode.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticDesignMode.png
    alt: "Design Mode"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticDataSource.png
    alt: "Design Mode - Total"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticTotalBox.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticTotalBox.png
    alt: "Design Mode - Child"

---
<table>
<tr>
  <td><img src="{{ site.url }}/assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticPublishedMode.png" alt="Published View Light Theme"/>
  </td>
  <td><img src="{{ site.url }}/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticPublishedMode.png" alt="Published View Dark Theme"/>
  </td>
</tr>
</table>
{% include gallery %}
This is a Static widget used to display essential information, provide navigation options, or offer core functionality that doesn't require frequent changes or user interactions. This widget is broken down into two sections, with the data presented in a static format. The left section, labeled <b>Total Assets</b>, provides an overview of the total assets without any dynamic changes or real-time updates. It serves as a fixed reference point for users to quickly grasp the overall picture.
{: .notice}

This widget contains only a main heading and no sub heading to maximize the space it fits.
The Up and Down arrows are indicators and can be adjusted to dynamically show up and down or convert them into another shape in the block properties.
{: .notice--warning}

![image-right]({{ site.url }}/assets/images/Patterns/Widgets/AlertCountRollupStatic/DarkTheme/AlertCountRollupStaticDataSource.png){: .align-right}
To set up and utilize the static section, simply double-click on the text you wish to modify and insert the necessary information. The editable elements within the text include the title and its associated values.
<hr />

![image-right]({{ site.url }}/assets/images/Patterns/Widgets/AlertCountRollupStatic/LightTheme/AlertCountRollupStaticTotalBox.png){: .align-right}
To configure and use the total box, select the box named <b>Total Box</b> and configure its data source under <i>Block Properties</i>.  Then make sure to change the fields within the box to get their values from the data source vs static.

<hr />

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. 
For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
