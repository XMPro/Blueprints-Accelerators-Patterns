---
layout: project-top
date: 2023-10-27
title: "3D Capability - Tanks in Unity"
description: "<strong>3D Capability - Tanks in Unity</strong>"
extract: "An example of how to generate synthetic data and pass it through a data stream to a Unity model running within an application."
weight: 4
thumbnail: "/assets/images/accelerators/3D-capability/unity-tanks/ad.png"
image: "/assets/images/accelerators/3D-capability/unity-tanks/ad.png"
categories: ["Asset Monitoring","Condition Monitoring","Unity","Dark Theme"]
contributor: "XMPro"
role: "Accelerator"
import_password: Dem0nstr@t1on
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/accelerators/3D-capability/unity-tanks/ad.png"
    caption: "<strong>Above:</strong> Published Application"
  - image: "/assets/images/accelerators/3D-capability/unity-tanks/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
gallery_limit: 2

side_gallery:
  - image: "/assets/images/accelerators/3D-capability/unity-tanks/ad.png"
    caption: "<strong>Above:</strong> Published Application"
  - image: "/assets/images/accelerators/3D-capability/unity-tanks/dsRunning.png"
    caption: "<strong>Above:</strong> Published Data Stream"
  - image: "/assets/images/accelerators/3D-capability/unity-tanks/ds.png"
    caption: "<strong>Above:</strong> Configured Data Stream"

files:
  - title: "Application"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/accelerators/3D-capability/unity-tanks/application/"
    image: "/assets/images/icons/AD.png"
  - title: "Unity Files"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/accelerators/3D-capability/unity-tanks/application/unity"
    image: "/assets/images/icons/AD.png"    
  - title: "Data Stream"
    link: "https://github.com/XMPro/Accelerators-Recipes-Blueprints/blob/master/accelerators/3D-capability/unity-tanks/datastream/"
    image: "/assets/images/icons/DS.png"

---

## Application
An example of how to visualize the synthetic data passed by the data stream to a Unity model in an application.  The application is configured using: 

| Block                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Unity - Legacy](https://documentation.xmpro.com/blocks-toolbox/visualizations/unity-1) | To render the Unity files and pass the data to the scene |
| [Grid](https://documentation.xmpro.com/blocks-toolbox/basic/data-grid) | To allow the raw data to be viewed |


## Data Stream
The data stream is configured using: 

| Agent                                  | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| [Event Simulator](https://xmpro.gitbook.io/event-simulator/) | Simulates the data within the thresholds configured |
| [XMPro App](https://xmpro.gitbook.io/xmpro-app/) | View data in the App Designer |

## Steps to Import

### 1. Create/confirm variables
Ensure the following variables are available to be used in the data stream:

- App Designer URL
- App Designer Integration Key <strong>(Encrypted)</strong>

### 2. Import the Data Stream

- Select the highest agent version number on import, if prompted
- Assign Access to others as required
- <strong>XMPro agents</strong> ({% include framework/shortcodes/image.html width="14px" height="14px" src="/assets/images/icons/xmpro_app.webp" %}) - ensure the URL & Integration Key are selected
- Click Apply and save the data stream
- Publish the data stream and open the live view
- Ensure there is data in the live view by monitoring the agents

### 3. Import the Application

- Map the data source on import:
  - Landing Page:

    | Data Source Name | Data Stream | Agent Option |
    | ---------------- | ----------- | ------------ |
    | Unity Data from Data Stream | Simulate Tank Telemetry | Send Tank Data to App |
- Assign Access to others as required
  {% include framework/shortcodes/image.html src="/assets/images/accelerators/3D-capability/unity-tanks/adAccess.png" %}
- Save the application
- Publish the application
- Ensure there is data in the application and that the Unity model is receiving its data by hovering over and observing the values
