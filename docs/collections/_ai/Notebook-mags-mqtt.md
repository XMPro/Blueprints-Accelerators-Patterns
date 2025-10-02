---
layout: project-top
date: 2024-04-15
title: "XMPro MAGS via MQTT"
description: "<strong>XMPro MAGS via MQTT</strong>"
extract: "This notebook sets up an MQTT client, connects to a broker, and allows for interaction with the system."
weight: 2
thumbnail: "/assets/images/ai/notebooks/mags-mqtt/notebook01.png"
image: "/assets/images/ai/notebooks/mags-mqtt/notebook01.png"
categories: ["AI ML","Notebook"]
contributor: "XMPro"
role: "Accelerator"
import_password: 
toc: false
toc_label: 

gallery:
  - image: "/assets/images/ai/notebooks/mags-mqtt/notebook01.png"
    caption: "<strong>Above:</strong> Notebook"
  - image: "/assets/images/ai/notebooks/mags-mqtt/notebook02.png"
    caption: "<strong>Above:</strong> Notebook Cont."
gallery_limit: 2

side_gallery:
  - image: 
    caption: 

files:
  - title: "Notebook"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/accelerators/ai/example-notebooks/mags-mqtt/MAGS-MQTT.ipynb"
    image: "/assets/images/icons/AI.png"
---

This Jupyter notebook provides an interface for interacting with a MAGS (Multi-Agent Generative System) Agent using MQTT protocol. It allows you to connect to an MQTT broker, send chat messages and observations to the agent, and receive and display status updates and responses.

## Prerequisites

Before running this notebook, ensure you have the following dependencies installed:

```
paho.mqtt
ipywidgets
pandas
pytz
python-dotenv
```

You can install these by running the cell marked

## Setup

### Environment Variables

This notebook requires a ` .env` file in the same directory as the notebook. The ` .env` file should contain the following variables:

```
MQTT_BROKER=your_broker_address
MQTT_PORT=your_broker_port
MQTT_USER=your_username
MQTT_PASSWORD=your_password
```

Replace the values with your actual MQTT broker details.

### User Input

When you run the notebook, you'll be prompted to enter:

1. `TEAM_ID`: Should follow the pattern SITE-AREA-FUNCTION-TEAM-VERSION (e.g., DALLAS-PROD-OPS-TEAM-001)
2. `AGENT_ID`: Should follow the pattern AREA-FUNCTION-AGENT-INSTANCE (e.g., WTR-QUAL-AGENT-001)
3. `local_timezone`: Your local timezone (default is America/Chicago)

## Interaction Cells

The notebook provides two main interaction cells:

### 1. Publish a chat/conversation

This cell allows you to send chat messages to the MAGS Agent. 

To use this cell:
1. Locate the cell titled "Publish a chat/conversation".
2. In the `conversation_id` variable, enter an Id if you want to continue an existing conversation, or leave it blank to start a new one.
3. In the `chat` variable, enter your message.
4. Run the cell to send the message.

### 2. Publish an observation

This cell allows you to send observations to the MAGS Agent.

To use this cell:
1. Locate the cell titled "Publish an observation".
2. In the `observation` variable, enter your observation.
3. Run the cell to send the observation.

## Display

The notebook displays a table with the agent's status updates and a list of received messages. These are updated in real-time as you interact with the agent.

## Cleanup

There's a final cell for cleanup and shutdown. To properly disconnect from the MQTT broker when you're done:

1. Locate the cell titled "Cleanup and Shutdown" or "Run this cell to close down and disconnect".
2. Run this cell.

## Note

This notebook is designed for interaction with a specific MAGS Agent setup. Ensure you have the correct MQTT broker details and permissions before attempting to connect and interact with the agent.