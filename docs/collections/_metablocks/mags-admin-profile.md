---
layout: project-top
date: 2025-01-31
title: "MAGS: Admin - Profile"
description: "<strong>MAGS: Admin - Profile</strong>"
extract: ""
weight: 2
thumbnail: "/assets/images/metablocks/mags/admin/profile/light.png"
image: "/assets/images/metablocks/mags/admin/profile/light.png"
categories: ["MAGS","Metablock"]
contributor: "XMPro"
role: "Metablocks"
import_password: 
toc: true
toc_label: "Table of Contents"

gallery:
  - image: "/assets/images/metablocks/mags/admin/profile/light.png"
    caption: "<strong>Above:</strong> Light Theme"
  - image: "/assets/images/metablocks/mags/admin/profile/dark.png"
    caption: "<strong>Above:</strong> Dark Theme"
gallery_limit: 2

files:
  - title: "HTML"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/meteablocks/mags/admin/profile/"
    image: "/assets/images/icons/HTML.png"
  - title: "CSS"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/meteablocks/mags/admin/profile/"
    image: "/assets/images/icons/CSS.png"
  - title: "Javascript"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/meteablocks/mags/admin/profile/"
    image: "/assets/images/icons/javascript.png"

---

## Release Notes

### 1.1 
- Published from Beta

### Prior 1.1
- Beta Testing

## Dependencies
- Neo4j Browser Driver v5.17.0
- Modern browser with ES6+ support

## Key Features
- Profile CRUD operations
- Search and filtering
- Version history
- Tag management
- Role-based access
- Theme mode support (Light/Dark)

## Installation and Setup

### XMPro Configuration
- Add a Metablock component to your page in the App Designer
- Open the Block Properties for the Metablock
- Upload the following files in the Block Properties:

| Section | File to Select |
|---------|---------------|
| HTML File | `main-admin-profile.html` |
| CSS File | `main-admin-profile.css` |
| JavaScript File | `main-admin-profile.js` |

- Configure the Value Mappings:

| Key | Description | Values | Required |
|------|-------------|---------|-----------|
|`current_user`| Current user's email | XMPro variable `${user.email}` | Yes |
|`debug`| Enable debug logging | `true` \| `false` | No |
|`locale`| Interface language | `en-US`  | Yes |
|`neo4j_password`| Neo4j database password | String | Yes |
|`neo4j_uri`| Neo4j database connection URI | Valid Neo4j URI string | Yes |
|`neo4j_user`| Neo4j database username | String | Yes |
|`theme`| Interface color scheme | `light` (default) \| `dark` | No |

- Save and publish the page

# Profile Metablock

## Core Architecture

### Initialization
The initialization process follows a structured sequence to ensure all components are properly configured before user interaction begins. Upon loading, the Metablock first validates its configuration parameters and establishes a connection to the Neo4j database. Once connected, it initializes the internationalization service to support multiple languages and cultural preferences. The system then sets up event listeners for user interactions and loads the initial batch of profiles, making the interface ready for use.

### Data Management
The Metablock implements an efficient data management strategy centered around batch loading and real-time updates. Profiles are loaded in sets of 20 using an infinite scroll mechanism, optimizing both performance and user experience. The Neo4jConnectionManager maintains a connection pool to handle concurrent requests efficiently, implementing automatic retries for transient failures. This approach ensures smooth data access while minimizing server load and maintaining responsive performance.

### Profile Editor
At the heart of the Metablock lies a sophisticated form-based editor that manages the complete profile lifecycle. The editor handles complex nested data structures through a modular approach, separating concerns into distinct sections for basic information, memory parameters, decision parameters, and interaction preferences. It maintains different modes for viewing, editing, cloning, and creating profiles, each with appropriate validation rules and user interface states.

### State Management
The Metablock implements a comprehensive state management system that tracks the current profile status, editor mode, and user interface state. This system maintains consistency between the user interface and the underlying data model, handling transitions between different modes and ensuring data integrity. It manages form validation states, tracks changes for audit purposes, and coordinates updates between different components of the interface.

### Internationalization
The internationalization system provides robust support for multiple languages and cultural preferences. It performs text translation and handles complex formatting requirements for dates, numbers, and currencies. The system supports right-to-left text rendering for Arabic users and maintains separate translation sets for interface elements, error messages, and dynamic content. This ensures a consistent, culturally appropriate experience across different locales.

### Database Integration
The Neo4jConnectionManager serves as a robust interface to the Neo4j database, handling all data persistence operations. It implements connection pooling to manage database resources efficiently and includes retry logic for handling network issues. All database operations use parameterized queries to prevent injection attacks, while supporting complex data operations through Cypher queries. The manager maintains connection state and can reconnect automatically if the connection is lost.

### Error Handling
The error handling system provides comprehensive error management across all Metablock operations. Through the ProfileErrorHandler class, it categorizes errors into system, network, validation, and application types, providing appropriate translated error messages for each scenario. The system includes error recovery mechanisms and maintains detailed logging for debugging purposes, while presenting clear, user-friendly feedback messages in the interface.

## Profile Management Guide

### Creating a New Profile
1. Click the "New Profile" button in the top-left corner
2. Enter the Area and Function codes (e.g., WTR for Water, QUAL for Quality)
3. Click "Generate" to create a unique Profile ID
4. Complete the required fields:
   - Name: Descriptive name for the profile
   - Model Provider: Select from available AI providers
   - Model Name: Specify the model
   - Max Tokens: Set maximum token limit
   - Experience: Define agent's background
   - System Prompt: Set base behavior instructions
5. Configure additional parameters for memory, and decision-making
6. Click the save button to create the profile

### Editing Profiles
1. Select a profile from the list on the left
2. Review and modify desired fields in the profile editor
3. Click the save button to update the profile
4. The system automatically tracks changes for the audit trail. View the audit history through the profile menu (three dots) to track changes

### Cloning Profiles
1. Select an existing profile from the list
2. Click the "Clone Profile" button
3. Review and modify the cloned profile as needed
4. Click the save button to create and save the cloned profile

### Importing Profiles
Sample import JSON structure:
```json
{
   "active": true,
   "allowed_planning_method": ["Plan & Solve"],
   "category": "Environmental Monitoring",
   "decision_parameters": {
      "planning_cycle_interval_minutes": 240
   },
   "deontic_rules": ["must report anomalies", "never bypass safety checks"],
   "experience": "Expert in water quality monitoring and analysis",
   "max_tokens": 2000,
   "memory_parameters": {
      "reflection_importance_threshold": 9,
      "memory_decay_factor": 0.992,
      "max_recent_memories": 25,
      "memory_cache_cleanup_minutes": 5,
      "memory_cache_max_age_minutes": 30
   },
   "model_name": "claude-3-opus-20240229",
   "model_provider": "Anthropic",
   "name": "Water Quality Monitor",
   "observation_prompt": "# Anomaly Detection and Root Cause Analysis Agent\n\n## Observation\n{user_query}\n\n## Relevant Knowledge\n{knowledge_context}\n\nAs an AI agent specialized in anomaly detection and root cause analysis, analyze the given observation and relevant knowledge. Then:\n\n1. Identify any anomalies or unusual patterns in the data.\n2. Determine the potential root causes of these anomalies.\n3. Suggest appropriate investigative actions or corrective measures.\n\n## Response Format\n\n### Analysis\n[Provide a detailed analysis of the observation, considering the context and relevant knowledge]\n\n### Summary\n[Provide a brief summary of the situation and your recommendations]\n\n### Key Points\n- [Key point 1]\n- [Key point 2]\n- [Key point 3]\n...\n\n### Actionable Insights\n1. [Insight 1]\n2. [Insight 2]\n3. [Insight 3]\n...",
   "organizational_rules": ["follow safety protocols", "maintain data accuracy"],
   "profile_id": "WTR-QUAL-PROFILE-001",
   "rag_collection_name": "anomaly_detection_data",
   "rag_top_k": 10,
   "rag_vector_size": 1536,
   "reflection_prompt": "As an Anomaly Detection and Root Cause Analysis Agent, reflect on these observations and past reflections, focusing on your effectiveness in identifying anomalies and determining their root causes.\n\nConsider the following:\n\n1. How accurate and timely were your recent anomaly detections and root cause analyses?\n2. Are there any recurring anomalies or systemic issues you've identified across different processes?\n3. How well are you collaborating with other agents to gain comprehensive insights?\n4. Are there any areas where you can improve your detection algorithms or analysis methodologies?\n5. What new anomaly detection or root cause analysis techniques should you explore?\n\nProvide insights and actionable steps to enhance your performance as an anomaly detection and root cause analysis agent.\n\nYou have the following characteristics:\n\nSkills: \n{skills}\n\nExperience: \n{experience}\n\nDeontic rules: \n{deontic_rules}\n\nOrganizational rules: \n{organizational_rules}\n\nRelevant Knowledge:\n{knowledge_context}\n\nRecent observations:\n{recent_observations}\n\nPast reflections:\n{past_reflections}\n\n## Response Format\n\n### Analysis\n\n[Provide a detailed analysis, considering the context and relevant knowledge]\n\n### Summary\n[Provide a brief summary of the situation and your recommendations]\n\n### Key Points\n- [Key point 1]\n- [Key point 2]\n- [Key point 3]\n...\n\n### Actionable Insights\n1. [Insight 1]\n2. [Insight 2]\n3. [Insight 3]\n...",
   "skills": ["water analysis", "chemical testing", "data interpretation"],
   "system_prompt": "You are a specialized agent for water quality monitoring...",
   "tags": ["water quality", "monitoring", "analysis"],
   "use_general_rag": true
}
```

To import:
1. Click the import icon (upload arrow)
2. Select a JSON file with the profile data
3. Review and modify the imported profile as needed
3. Click the floating save button to create and save the imported profile

### Exporting Profiles
1. Select the profile to export
2. Click the export icon (download arrow)
3. Choose save location in file browser

### Profile Search and Filtering
1. Use the search bar for real-time search:
   - Enter prompt name or ID
   - Type keywords for content search
   - Search by tag or category
2. Apply filters as needed:
   - Toggle status filters for active/inactive prompts
   - Select category filters
   - Combine multiple filters for refined results
3. Clear filters:
   - Click clear button (x) in search bar
   - Deselect active filters
   - Reset to view all prompts
