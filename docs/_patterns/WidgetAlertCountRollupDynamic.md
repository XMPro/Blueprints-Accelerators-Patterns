---
title: "Alert Count Rollup Dynamic"
subtitle: "Alert Count Rollup Dynamic"
excerpt: "Alert Count Rollup Dynamic"
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
    text: Widget [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Alert%20Count%20Rollup%20-%20Dynamic.xwid)

gallery:
  - url: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicDesignMode.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicDesignMode.png
    alt: "Design Mode"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicTotalDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicTotalDataSource.png
    alt: "Design Mode - Total"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicChildDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicChildDataSource.png
    alt: "Design Mode - Child"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicDesignMode.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicDesignMode.png
    alt: "Design Mode"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicTotalDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicTotalDataSource.png
    alt: "Design Mode - Total"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicChildDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicChildDataSource.png
    alt: "Design Mode - Child"

---
<table>
<tr>
  <td><img src="{{ site.url }}{{ site.baseurl }}/assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicPublishedMode.png" alt="Published View Light Theme"/>
  </td>
  <td><img src="{{ site.url }}{{ site.baseurl }}/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicPublishedMode.png" alt="Published View Dark Theme"/>
  </td>
</tr>
</table>
{% include gallery %}
This widget is broken down into two sections, the left <b>Total Assets</b> is the total area and the right section past the vertical line is where you can get specific.  The right section will grow and shrink depending on the data source that is provided.
{: .notice}

This widget contains only a main heading and no sub heading to mazimise the space it fits.
The Up and Down arrows are indicators and can be adjusted to dynamically show up and down or convert them into another shape in the block properties.
{: .notice--warning}

![image-right]({{ site.url }}{{ site.baseurl }}/assets/images/Patterns/Widgets/AlertCountRollupDynamic/DarkTheme/AlertCountRollupDynamicTotalDataSource.png){: .align-right}
To configure and use the total section, select the box named <b>Total Data Source</b> and configure its data source under <i>Block Properties</i>.  Then make sure to change the fields within the box to get their values from the datasource vs static.

<hr />

![image-right]({{ site.url }}{{ site.baseurl }}/assets/images/Patterns/Widgets/AlertCountRollupDynamic/LightTheme/AlertCountRollupDynamicChildDataSource.png){: .align-right}
To configure and use the dynamic section, select the box named <b>Child Data Source</b> and configure its data source under <i>Block Properties</i>.  Then make sure to change the fields within the box to get their values from the datasource vs static.  How this works is for every row returned in the data source it will create that many child sections.  If you have 4 it will create 4, if you have 3 it will create 3 etc.

<hr />

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. 
For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
