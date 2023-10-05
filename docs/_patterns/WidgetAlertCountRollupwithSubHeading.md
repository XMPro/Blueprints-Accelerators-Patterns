---
title: "Alert Count Rollup with Sub Heading"
subtitle: "Alert Count Rollup with Sub Heading"
excerpt: "Alert Count Rollup with Sub Heading"
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
    text: Widget [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Alert%20Count%20Rollup%20With%20Subheading.xwid)

gallery:
  - url: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingDesignMode.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingDesignMode.png
    alt: "Design Mode"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingDataSource.png
    alt: "Design Mode - Total"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingTotalDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingTotalDataSource.png
    alt: "Design Mode - Child"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingDesignMode.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingDesignMode.png
    alt: "Design Mode"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingDataSource.png
    alt: "Design Mode - Total"
  - url: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingTotalDataSource.png
    image_path: /assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingTotalDataSource.png
    alt: "Design Mode - Child"

---
<table>
<tr>
  <td><img src="{{ site.url }}/assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingPublishedMode.png" alt="Published View Light Theme"/>
  </td>
  <td><img src="{{ site.url }}/assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingPublishedMode.png" alt="Published View Dark Theme"/>
  </td>
</tr>
</table>
{% include gallery %}
This widget includes a heading and a subheading where you can enter the title and an additional description to provide further context for the title. Within the body, there is a data comparison on the left and a title-value pair on the right. It functions as a dynamic widget, ensuring that it consistently displays the same count and expands automatically regardless of the size of your dataset.
{: .notice}

The Up and Down arrows features an indicator symbol that can be customized according to your preferences. For example, you can modify both the icon and the color of the indicator in the <i>Block Properties</i> to suit your needs.
{: .notice--warning}

![image-right]({{ site.url }}/assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/DarkTheme/AlertCountRollupwithSubHeadingDataSource.png){: .align-right}
To set up and utilize the Data Source, begin by selecting the box labeled "Data Source" (as displayed in the image). Next, navigate to the Block Properties and specify the data you wish to display. Ensure that you update the content of each text element to retrieve their values from the designated data source. The way this functions is that for each row retrieved from the data source, it will generate an equivalent number of data entries in your data source box. This implies that the data will populate automatically, and the box will dynamically adapt its size according to the amount of data in your data source.
<hr />

![image-right]({{ site.url }}/assets/images/Patterns/Widgets/AlertCountRollupwithSubHeading/LightTheme/AlertCountRollupwithSubHeadingTotalDataSource.png){: .align-right}
To set up and utilize the Total Data Source section, begin by choosing the box labeled "Total Data Source," and then configure its data settings in the "Block Properties." Ensure that you update the fields within the box to retrieve their values from the designated data source.

<hr />

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. 
For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
