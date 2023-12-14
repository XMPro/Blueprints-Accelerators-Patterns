---
layout: project-top
date: 2023-12-14
title: "Root Cause Analysis (RCA)"
description: "<strong>Root Cause Analysis (RCA)</strong>"
extract: "A root cause analysis (RCA) application offering data capture and documenting capabilities, designed to identify the fundamental reasons for problems or events, enabling effective solutions and prevention of future occurrences."
weight: 2
thumbnail: "/assets/images/Blueprints/General/RCA/Application_05.png"
image: "/assets/images/Blueprints/General/RCA/Application_05.png"
categories: ["Data Capture","Light Theme"]
contributor: "XMPro"
role: "Blueprint"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/Blueprints/General/RCA/Application_05.png"
    caption: "<strong>Above:</strong> Application View"
  - image: "/assets/images/Blueprints/General/RCA/Application_06.png"
    caption: "<strong>Above:</strong> Application Administration View"
gallery_limit: 2

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/General/RCA/Application/Root%20Cause%20Analysis.xapp"
    image: "/assets/images/icons/AD.png"
  - title: "Administration Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/General/RCA/Application/Root%20Cause%20Analysis%20Data%20Administration.xapp"
    image: "/assets/images/icons/AD.png"    
  - title: "SQL - RCA Tables and Data"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/Blueprints/General/RCA/SQL%20Scripts/RCA-SQL-Script.sql"
    image: "/assets/images/icons/sql.webp"

---

## Application
This application guides the user through the various steps to complete the RCA and collect the documents at each phase.  The application is configured as follows: 

### Landing Page
This page contains two main grids, the top right for pending action items and the bottom to allow for access to all RCA's. 
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Blueprints/General/RCA/Application_01.png" %}</div>

Each grid has the Store User option enabled meaning it will remember your selection for column ordering, grouping and for the bottom grid hiding certain columns.  Selecting any of the rows in either grid will drilldown to the action page for the RCA that was selected.

### Failure Details
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Blueprints/General/RCA/Application_02.png" %}</div>


### Timeline
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Blueprints/General/RCA/Application_03.png" %}</div>


### Failure Analysis
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Blueprints/General/RCA/Application_04.png" %}</div>

### Actions
<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/Blueprints/General/RCA/Application_05.png" %}</div>


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
  {% include framework/shortcodes/image.html src="/assets/images/Blueprints/General/RCA/Application_Access.png" %}
- Ensure the App Data connection properties are configured and valid
- Save the application
- Publish the application
- Ensure there is data in the application
