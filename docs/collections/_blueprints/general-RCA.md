---
layout: project-top
date: 2023-12-14
title: "Root Cause Analysis (RCA)"
description: "<strong>Root Cause Analysis (RCA)</strong>"
extract: "A root cause analysis (RCA) application offering data capture and documenting capabilities, designed to identify the fundamental reasons for problems or events, enabling effective solutions and prevention of future occurrences."
weight: 2
thumbnail: "/assets/images/blueprints/general/RCA/ad05.png"
image: "/assets/images/blueprints/general/RCA/ad05.png"
categories: ["Data Capture","Light Theme"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/blueprints/general/RCA/ad05.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/blueprints/general/RCA/ad06.png"
    caption: "<strong>Above:</strong> Application Administration View"
gallery_limit: 2

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general/rca/application/"
    image: "/assets/images/icons/AD.png"
  - title: "SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general/rca/sql/"
    image: "/assets/images/icons/sql.webp"

---

## Application
This application guides the user through the various steps to complete the RCA and collect the documents at each phase.  The application is configured as follows: 

### Landing Page
This page contains two main grids, the top right for pending action items and the bottom to allow for access to all RCA's. 
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general/RCA/ad01.png" %}</div>

Each grid has the Store User option enabled meaning it will remember your selection for column ordering, grouping and for the bottom grid hiding certain columns.  Selecting any of the rows in either grid will drilldown to the action page for the RCA that was selected.

### Failure Details
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general/RCA/ad02.png" %}</div>


### Timeline
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general/RCA/ad03.png" %}</div>


### Failure Analysis
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general/RCA/ad04.png" %}</div>

### Actions
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general/RCA/ad05.png" %}</div>


## Administration Application
This application allows the user to administer the master data fields used within the RCA application.  

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used:

- SQL Server
- SQL Username
- SQL Password <strong>(Encrypted)</strong>

### 2. Run SQL Scripts
- Execute the scripts in SQL Server
- Ensure the data is successfully loaded into the database 

### 3. Import the Applications

- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/blueprints/general/rca/adAccess.png" %}
- Ensure the App Data connection properties are configured and valid
- Save the application
- Publish the application
- Ensure there is data in the application
