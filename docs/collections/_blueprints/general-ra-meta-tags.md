---
layout: project-top
date: 2024-05-03
title: "Recommendation Analysis Meta Tag Application"
description: "<strong>Recommendation Analysis Meta Tag Application</strong>"
extract: "A recommendation labelling system that allows the user to assign additional attributes to existing recommendations that aid in data analysis methods"
weight: 2
thumbnail: "/assets/images/blueprints/general-ra-meta-tags/ad03.png"
image: "/assets/images/blueprints/general-ra-meta-tags/ad03.png"
categories: ["Data Capture","Light Theme"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/general-ra-meta-tags/ad03.png"
    caption: "<strong>Above:</strong> Application View"
gallery_limit: 1

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general/rca/application/"
    image: "/assets/images/icons/AD.png"
  - title: "SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general/rca/sql/"
    image: "/assets/images/icons/sql.webp"

---

## Application
This application allows the user to assign additional labels to a recommendation outside of the native recommendation editor after the recommendation and alerts have been created to allow for enhanced data analysis techniques.  The application is configured as follows: 

### Create Meta Tags

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-ra-meta-tags/ad01.png" %}</div>
This page contains a navigation bar at the top right, a recommendation selection grid on the left, and create/ update card on the right. 

Each grid has the Store User option enabled meaning it will remember your selection for column ordering, grouping and for the bottom grid hiding certain columns.  Selecting any of the rows in either grid will drilldown to the action page for the RCA that was selected.

### Create Meta Tag Labels
<div class="inline_image"  >{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-ra-meta-tags/ad02.png" %}</div>

Similar to the Create Meta Tags page, the user will either select a Meta Tag from the drop down and enter a unique Meta Tag Value Label or select a Meta Tag Value from the grid to edit.

A Radio Button above the grid allows users to select among active, inactive, or all Meta Tags to filter the Meta Tag Values.

### Assign Meta Tag and Label
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-ra-meta-tags/ad03.png" %}</div>

The Recommendations Grid Selection is broken into Assigned, Unassigned, and All. The user will click on a specific recommendation to assign Meta Tag Values to the recommendation. Dropdown menus will then appear. If the value has already been assigned, the value will appear; if not, then the value will be empty.

The user must assign all values to all tags before they will be allowed to save. By default, when a Meta Tag is created, a default value of Not Allocated is also created. The user should select this option if a Meta Tag is not rquired for a recommendation.

### Reference Table
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-ra-meta-tags/ad04.png" %}</div>

The reference Table shows all the assigned Recommendations, Meta Tags, and Meta Tag Values. 
 
## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used:

- SQL Server
- SQL Username
- SQL Password <strong>(Encrypted)</strong>

### 2. Run SQL Scripts
- Execute the scripts in SQL Server AD Database
- Ensure the data is successfully loaded into the database 

### 3. Import the Applications

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/general/rca/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Save the application
- Publish the application
- Ensure there is data in the application
