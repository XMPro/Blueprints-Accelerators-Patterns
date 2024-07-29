---
layout: project-top
date: 2024-07-26
title: "Asset Master Application"
description: "<strong>Asset Master Application</strong>"
extract: "An asset hierarchy defining application that also allows for activating and deactiving assets within a datastream and recommendation."
weight: 2
thumbnail: "/assets/images/blueprints/general-asset-master/ad01.png"
image: "/assets/images/blueprints/general-asset-master/ad01.png"
categories: ["Data Capture","Light Theme"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/general-asset-master/ad01.png"
    caption: "<strong>Above:</strong> Application View"

gallery_limit: 1

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-asset-master/application"
    image: "/assets/images/icons/AD.png"
  - title: "SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-asset-master/sql"
    image: "/assets/images/icons/sql.webp"

---

## Application

This blueprint creates hierarchical labelling used for asset asset identification, classification, and sorting. It also give the user the ability to activate and deactivate assets within a datastream or recommendation with proper formatting and structuring inside the datastream. 


### Asset Master Grid

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-asset-master/ad01.png" %}</div>
Each asset row has a description block and five levels of classification suggested as industry taxonmy standard. These can be free form entries, but dropdown menus for each level can also be populated using the Asset Meta Tags application for uniform application. Using Asset Meta Tags to populate column dropdown selections also streamlines asset addition.

Assets can be deactivated and reactivated in the asset master using the boolean check boxes. With the proper configuration in relavent datastreams, the user can easily silence alert generation or appearence in an overview app when desired, i.e. during a shutdown period. 

Used in conjuction with the Shutdown Master application, this deactivation and reactivation can occur automatically during desired date ranges. 
 
## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used:

- SQL Server
- SQL Username
- SQL Password <strong>(Encrypted)</strong>

### 2. Run SQL Scripts
- Execute the scripts in SQL Server Master Data DB


### 3. Import the Applications

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/general-ra-meta-tags/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Save the application
