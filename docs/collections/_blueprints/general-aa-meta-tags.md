---
layout: project-top
date: 2024-05-03
title: "Asset Meta Tag Administration"
description: "<strong>Asset Meta Tag Administration</strong>"
extract: "An Asset labelling system that allows the user to assign additional attributes to existing Assets that aids in data analysis methods."
weight: 2
thumbnail: "/assets/images/blueprints/general-aa-meta-tags/ad03.png"
image: "/assets/images/blueprints/general-aa-meta-tags/ad03.png"
categories: ["Data Capture","Light Theme"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/general-aa-meta-tags/ad03.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/general-aa-meta-tags/ad04.png"
    caption: "<strong>Above:</strong> Reference Table View"
gallery_limit: 2

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-aa-meta-tags/application"
    image: "/assets/images/icons/AD.png"
  - title: "SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-aa-meta-tags/sql/"
    image: "/assets/images/icons/sql.webp"


---

## Application

This blueprint establishes meta tag labels for assets. This allows assets to be filtered and analysed by labels such as asset class or attached technology. 

### Create Meta Tags

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-aa-meta-tags/ad01.png" %}</div>
This page contains a navigation bar at the top right and a grid to edit existing Meta Tags or create new Meta Tags. The Meta Tag Type column is an additional identifier for what the Meta Tag will modify.

By default, the Meta Tag Type list will include the "Recommendation", "Asset", or "All" descriptor depending on how the Meta Tag and Values will be used.  

### Create Meta Tag Values
<div class="inline_image"  >{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-aa-meta-tags/ad02.png" %}</div>

Similar to the Create Meta Tags page, the user will either select a Meta Tag from the drop down and enter a unique Meta Tag Value or select a Meta Tag Value from the grid to edit.

### Assign Meta Tag and Label
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-aa-meta-tags/ad03.png" %}</div>

The user will click on a specific asset to assign Meta Tag Values to the asset. Dropdown menus will then appear. If the value has already been assigned, the value will appear; if not, then the value will be empty.

The user must assign all values to all tags before they will be allowed to save. By default, when a Meta Tag is created, a value of Not Allocated is also created. The user should select this option if a Meta Tag is not required for an asset as it signifies that user reviewed the entry and assigned a value. 

### Reference Table
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-aa-meta-tags/ad04.png" %}</div>

The reference Table shows all the assigned and unassigned assets, Meta Tags, and Meta Tag Values. 
 
## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used:

- SQL Server
- SQL Username
- SQL Password <strong>(Encrypted)</strong>

### 2. Run SQL Scripts
- Execute the scripts sequentially in SQL Server Master Data DB
- Ensure the columns are successfully loaded into the database 
- (Optional) Because the Assign Meta Tag Values portion requires a unique entry for all meta tags, it is recommended 
  that the sql trigger file is enabled in the AA_MetaTag Triggers subfolder in SSMS

### 3. Import the Applications

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/general-aa-meta-tags/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Save the application
- Publish the application
- Ensure there is data in the application
