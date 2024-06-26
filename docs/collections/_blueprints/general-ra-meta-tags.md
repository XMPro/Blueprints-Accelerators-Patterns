---
layout: project-top
date: 2024-05-03
title: "Recommendation Analysis Meta Tag Application"
description: "<strong>Recommendation Analysis Meta Tag Application</strong>"
extract: "A recommendation labelling system that allows the user to assign additional attributes to existing recommendations that aid in data analysis methods."
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
  - image: "/assets/images/blueprints/general-ra-meta-tags/ad04.png"
    caption: "<strong>Above:</strong> Reference Table View"
gallery_limit: 2

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-ra-meta-tags/application"
    image: "/assets/images/icons/AD.png"
  - title: "SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-ra-meta-tags/sql"
    image: "/assets/images/icons/sql.webp"
  - title: "Datastream"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-ra-meta-tags/datastream"
    image: "/assets/images/icons/DS.png"

---

## Application

This blueprint establishes Meta Tag labels for recommendations. This allows historical recommendations to be filtered and analysed by labels such as asset class, location, training recommendations, or area. Intended uses could include:

- Recommendation Analytics;
- Filters available for 'Suspend Recommendations for shutdown';
- Threshold comparisons by comparing various recommendations by asset class.


### Create Meta Tags

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-aa-meta-tags/ad01.png" %}</div>
This page contains a navigation bar at the top right and a grid to edit existing Meta Tags or create new Meta Tags. The Meta Tag Type column is an additional identifier for what the Meta Tag will modify.

By default, the Meta Tag Type list will include the "Recommendation", "Asset", or "All" descriptor depending on how the Meta Tag and Values will be used.  

### Create Meta Tag Values
<div class="inline_image"  >{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-aa-meta-tags/ad02.png" %}</div>

Similar to the Create Meta Tags page, the user will either select a Meta Tag from the drop down and enter a unique Meta Tag Value or select a Meta Tag Value from the grid to edit.

### Assign Meta Tag and Label
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-ra-meta-tags/ad03.png" %}</div>

The Recommendations Grid Selection is filterable into Assigned, Unassigned, and All. The user will click on a specific recommendation to assign Meta Tag Values to the recommendation. Dropdown menus will then appear. If the value has already been assigned, the value will appear; if not, then the value will be empty.

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
- Execute the scripts in SQL Server Master Data DB
- Ensure the data is successfully loaded into the database 
- (Optional) Because the Assign Meta Tag Values portion requires a unique entry for all meta tags, it is recommended 
  that the sql trigger file is enabled in the RACodes Triggers subfolder in SSMS

### 3. Import the Data Stream
- This Data Stream is set up to copy recommendations created in the Production database to the Master Data database 
- This will look for recommendations that exist in one but not the other and copy them over

### 4. Import the Applications

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/general-ra-meta-tags/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Save the application
- Publish the application
- Ensure there is data in the application
