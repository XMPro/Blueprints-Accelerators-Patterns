---
title: "Content with Overall Indicator"
subtitle: "Content with Overall Indicator"
excerpt: "Content with Overall Indicator"
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
    text: Widget [link](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Patterns/Widgets/Content%20with%20Overall%20Indicator.xwid)

gallery:
  - url: /assets/images/Patterns/Widgets/ContentwithOverallIndicator/DarkTheme/ContentwithOverallIndicatorDesignMode.png
    image_path: /assets/images/Patterns/Widgets/ContentwithOverallIndicator/DarkTheme/ContentwithOverallIndicatorDesignMode.png
    alt: "Design Mode"
  - url: /assets/images/Patterns/Widgets/ContentwithOverallIndicator/DarkTheme/ContentwithOverallIndicatorDataSource.png
    image_path: /assets/images/Patterns/Widgets/ContentwithOverallIndicator/DarkTheme/ContentwithOverallIndicatorDataSource.png
    alt: "Design Mode - DS"
  - url: /assets/images/Patterns/Widgets/ContentwithOverallIndicator/LightTheme/ContentwithOverallIndicatorDesignMode.png
    image_path: /assets/images/Patterns/Widgets/ContentwithOverallIndicator/LightTheme/ContentwithOverallIndicatorDesignMode.png
    alt: "Design Mode"
  - url: /assets/images/Patterns/Widgets/ContentwithOverallIndicator/LightTheme/ContentwithOverallIndicatorDataSource.png
    image_path: /assets/images/Patterns/Widgets/ContentwithOverallIndicator/LightTheme/ContentwithOverallIndicatorDataSource.png
    alt: "Design Mode - DS"

---
<table>
<tr>
  <td><img src="{{ site.url }}/assets/images/Patterns/Widgets/ContentwithOverallIndicator/LightTheme/ContentwithOverallIndicatorPublishedMode.png" alt="Published View Light Theme"/>
  </td>
  <td><img src="{{ site.url }}/assets/images/Patterns/Widgets/ContentwithOverallIndicator/DarkTheme/ContentwithOverallIndicatorPublishedMode.png" alt="Published View Dark Theme"/>
  </td>
</tr>
</table>
{% include gallery %}
This widget comprises a primary heading followed by a descriptive subheading beneath it, complemented by an indicator element and further elaborative content underneath. This combination of elements is designed to provide a comprehensive and structured presentation of information. The main heading captures the core concept or title, while the descriptive heading offers additional context. The indicator adds visual cues or status information, and the subsequent description provides detailed information or elaboration. Together, these components create a well-rounded widget for conveying a variety of content types effectively.
{: .notice}

This widget's deliberate design choice involves featuring solely a primary heading without a subheading. This decision aligns with the inclusion of a descriptive heading below, serving to emphasize and provide supplementary context.
{: .notice--warning}

This widget shares core functionality with both the <a href="WidgetContentwithIndicator">Content with Indicator</a> and <a href="WidgetContentwithIndicatorStyled">Content with Indicator - Styled</a> widgets. However, the key distinction lies in the arrangement of its elements. As you can observe, the indicator is situated at the bottom of the box, in contrast to the other two widgets where it resides at the top, positioned just below the Main Heading.
This variation in element placement offers flexibility in presentation, catering to different design preferences and emphasizing the content within the Main Heading in a unique way.
{: .notice--warning}

![image-right]({{ site.url }}/assets/images/Patterns/Widgets/ContentwithOverallIndicator/DarkTheme/ContentwithOverallIndicatorDataSource.png){: .align-right}
To set up and utilize the Data Source section of this widget, follow these steps: begin by selecting the "Data Source" box, then access the "Block Properties" to specify the data source you want to integrate. Remember to interact with the elements within the box and modify their values according to the data source.

An essential feature of this widget is its dynamic nature. When you select a data source containing, for instance, three rows of data, the widget will promptly display these three individual elements. Moreover, it demonstrates adaptability by automatically resizing itself to match the count of the provided data source. This dynamic functionality ensures that the widget consistently presents your data in an organized and visually appealing manner, irrespective of the data source's varying size.
<hr />

## Contributing
This repository was created by <a href="https://xmpro.com/">XMPro</a>. 
For assistance or requests, please contact <a href="mailto:support@xmpro.com">support@xmpro.com</a>

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
