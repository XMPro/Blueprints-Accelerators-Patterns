---
layout: project-top
date: 2025-09-17
title: "XMPro Deployment Manager"
description: "<strong>XMPro Deployment Manager</strong>"
extract: "A comprehensive deployment management application enabling export and import of XMPro solutions across environments via Git repository integration or ZIP file transfer, with dependency resolution and automated package optimization. When properly configured, imported solutions require no additional mapping or configuration and require only version publishing, provided all dependencies are included per deployment documentation."
weight: 1
thumbnail: "/assets/images/blueprints/general-xmpro-deployment-manager/export-wizard.png"
image: "/assets/images/blueprints/general-xmpro-deployment-manager/export-wizard.png"
categories: "Metablock"
contributor: "XMPro"
role: "Application"
import_password: "Dem0nstr@t1on"
toc: false
toc_label: "Table of Contents"

gallery:
   - image: "/assets/images/blueprints/general-xmpro-deployment-manager/export-wizard.png"
     caption: "<strong>Above:</strong> Export Wizard Interface"
   - image: "/assets/images/blueprints/general-xmpro-deployment-manager/import-wizard.png"
     caption: "<strong>Above:</strong> Import Wizard Interface"
gallery_limit: 2

# side_gallery:
#   - image: "/assets/images/blueprints/xmpro-deployment-manager/export-wizard.png"
#     caption: "<strong>Above:</strong> Export Wizard"
#   - image: "/assets/images/blueprints/xmpro-deployment-manager/package-summary.png"
#     caption: "<strong>Above:</strong> Package Summary View"
#   - image: "/assets/images/blueprints/xmpro-deployment-manager/import-manager.png"
#     caption: "<strong>Above:</strong> Import Wizard"
#   - image: "/assets/images/blueprints/xmpro-deployment-manager/dependency-resolution.png"
#     caption: "<strong>Above:</strong> Dependency Resolution"

files:
  - title: "Application Package"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/application"
    image: "/assets/images/icons/AD.png"
  - title: "Documentation"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/docs/XMPRO_DEPLOYMENT_MANAGER_FAQ.md"
    image: "/assets/images/icons/file-icon.png"

---

## Application

The XMPro Deployment Manager provides comprehensive deployment capabilities for managing XMPro solutions across environments. Solutions can be exported to a Git repository or downloaded as a ZIP file, and imported from either source. The application consists of two main components:

### Export Wizard

The export functionality allows users to package and deploy XMPro solutions with intelligent optimization.

| Feature                                | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| **Component Selection** | Multi-step wizard for selecting Applications, Data Streams, and Recommendations |
| **Category-Based Optimization** | Intelligent algorithm that groups components by categoryId to minimize package count |
| **Git Integration** | Direct deployment to Azure DevOps repositories with PAT authentication |
| **ZIP Download** | Export package as a local ZIP file for transfer without a Git repository |
| **Package Summary** | Real-time preview of export contents with component counts and versions |
| **Application Options** | Configurable export of app files and uploads folder |
| **Sequential Versioning** | Automatic generation of version tags (tag-1, tag-2, etc.) |

### Import Wizard

The import functionality enables seamless import of packaged solutions from a Git repository or an uploaded ZIP file, with comprehensive dependency management.

| Feature                                | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| **Repository Browser** | Browse Git repository branches and solution folders |
| **ZIP File Import** | Upload a locally exported ZIP package and import directly without a Git repository |
| **Package Discovery** | Automatic detection and listing of available deployment packages |
| **Dependency Resolution** | Intelligent resolution of missing Agents, Connectors, and Server Variables |
| **Collection Mapping** | Context-aware mapping displayed only for new imported entities in the target environment |
| **Category Creation** | Dynamic creation of new categories via XMPro API integration |

### Core Architecture Components

| Component                              | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| **Export Metablock** | Bootstrap-based UI with sophisticated JavaScript for package optimization, Git deployment, and ZIP download |
| **Import Metablock** | Complex UI with Git and ZIP source tabs, dependency resolution, collection mapping, and category management |
| **Category Algorithm** | Advanced grouping algorithm that minimizes API calls while respecting XMPro category constraints |
| **Git Authentication** | Secure PAT-based authentication with Azure DevOps integration |
| **API Integration** | Direct integration with XMPro `/api/deployment` REST endpoints — no SQL datasources required |

## Key Features

### Category-Based Package Optimization

The deployment manager uses a sophisticated algorithm to group components by their `categoryId` and by category type (Application/Datastream, Recommendation, and Recommendation Form):

<!-- <div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/xmpro-deployment-manager/optimization-algorithm.png" %}</div> -->

**Algorithm Benefits:**

- **Minimized Package Count**: Intelligent grouping reduces the total number of deployment packages
- **Category Consistency**: Ensures cross-environment category mapping integrity
- **API Efficiency**: Reduces deployment API calls through batched component processing
- **Conflict Prevention**: Prevents category mismatches during environment promotion

### Azure DevOps Integration

<!-- <div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/xmpro-deployment-manager/azure-devops-integration.png" %}</div> -->

**Repository Structure:**
```
https://{your-organization}.visualstudio.com/{your-project}/_git/{repository-name}
├── {branch}/
│   └── {solution}/
│       ├── {tag-1}/
│       │   └── metadata.json
│       ├── {tag-2}/
│       └── {tag-N}/
```

### Dependency Resolution Engine

The import wizard includes a comprehensive dependency resolution system:

<!-- <div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/xmpro-deployment-manager/dependency-resolution-flow.png" %}</div> -->

**Resolution Categories:**

**Non-Blocking (Import can proceed):**

- **Collection Mapping**: Collection assignment for imported Data Streams
  - *All collections in the package must be mapped before the import button is enabled*
- **Category Mapping**: Category assignment for new components being imported
  - *Category selection appears only for new entities; existing entities (matched by Universal ID and version) automatically retain their current category/collection and create new versions*
  - *If all package entities already exist in the target environment, category selection is automatically hidden*

**Blocking (Must resolve to import):**

- **Missing or Version Incompatible Agents**: Detection and resolution required
- **Missing or Version Incompatible Connectors**: Manual resolution required
- **Server Variables**: Identification of missing configuration variables
  - *Import cannot proceed until all blocking dependencies are resolved. Version mismatches between agents or connectors used during development and those in the target environment can cause runtime failures or unexpected behavior in production*

## Steps to Deploy

### Prerequisites

Before beginning the deployment process, ensure the following requirements are met:

- **Azure DevOps Git Repository**: An Azure DevOps Git repository must be created and accessible for storing deployment packages - [Setup Guide](https://learn.microsoft.com/en-us/devops/develop/git/set-up-a-git-repository)

> **Note**: A Git repository is only required for the Git-based export and import path. The ZIP export/import path does not require Git.

### 1. Configure Git Repository Access

#### Obtain the Git Repository URL

To get the correct HTTPS URL for your Azure DevOps repository:

1. Navigate to your Azure DevOps project
2. Go to **Repos** > **Files**
3. Click the **Clone** button in the top-right corner
4. In the Clone Repository dialog, ensure **HTTPS** is selected
5. Copy the HTTPS URL displayed
6. Use this URL for the DM Git Repo variable in step 2

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-xmpro-deployment-manager/GIT Repo Helper 1.png" %}</div>

<div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/general-xmpro-deployment-manager/GIT Repo Helper 2.png" %}</div>

> **Important**: Use the HTTPS URL, not SSH. The Deployment Manager requires HTTPS authentication with a Personal Access Token.

#### Set up Personal Access Token

**Reference**: [Microsoft Documentation - Use Personal Access Tokens](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=Windows)

- **Scope**: Code (Read & Write) — required for creating branches and pull requests
- **Organization**: User Defined
- **Expiration**: Recommended 90 days for development environments
- **Storage**: Securely stored as XMPro Server Variable

> **Important**: Once PAT dialog box is closed, you will be unable to regenerate the PAT. Save it to a secure password manager for use in step 2 as DM Git Password.

### 2. Configure Server Variables

Ensure the following server variables are configured in XMPro:

| Variable Name | Description | Type |
| ------------- | ----------- | ---- |
| **DM Git Repo** | Azure DevOps repository URL | Plain Text |
| **DM Git User** | Username associated with PAT | Plain Text |
| **DM Git Password** | Personal Access Token | **Encrypted** |
| **DM Company ID** | Scopes API calls to the correct tenant in a multi-tenant deployment | Plain Text |
| **DM Documentation Website** | Documentation website URL for agent downloads | Plain Text |

> **Important**: The variable names above are recommended conventions. The metablock reads values by the field name configured in its **Value Mapping** panel, not by the server variable name — so you may use different names as long as they are correctly mapped. The DM prefix is a convention to indicate use with the Deployment Manager.

### 3. Import the Application Package

- Import the XMPro Deployment Manager application
- Verify the API endpoint is reachable after import

> **Note**: Proxy Requests is pre-configured in the application package. If API calls return 401 after import, see the [Documentation](https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/docs/XMPRO_DEPLOYMENT_MANAGER_FAQ.md#proxy-requests--authentication) for troubleshooting.

### 4. Verify Export Functionality

Test the export wizard:

- Navigate to the Export Wizard page
- Select Applications, Data Streams, and/or Recommendations
- Configure solution name and base version tag
- Verify Git credentials auto-validation
- Select Import Uploads and Appfiles where appropriate
- Choose **Deploy to Git** to push to your repository, or **Download as ZIP** to save a local package
  - *Note: In order for an entity to be exportable, it needs to have a category assigned outside of My Sandbox.*

### 5. Approve Pull Request in Git

Navigate to your Git Repository:

- Identify your specific Pull Request by matching Solution and Base Version Name
- Select the Pull Request, click Complete, leave the default selections checked, then click Complete Merge
- Repeat this process for all packages in the solution
- The exported solution will now be available in the main branch to select in the Import Wizard

> **Note**: This step applies to Git-based exports only. ZIP exports do not create pull requests.

### 6. Verify Import Functionality

Test the import wizard:

- Navigate to the Import Wizard page
- **Git import**: Browse Git repository branches and solution. The default branch will be main, but non-merged branches are still selectable
- **ZIP import**: Switch to the ZIP tab and upload the ZIP file exported in step 5
- Select the solution for import
- Resolve any missing dependencies
- Assign or create categories as required
  - *Note: The import wizard automatically identifies existing entities by Universal ID and version. Only new entities require category assignment; existing entities retain their current category/collection and create new versions. Category selection is displayed only when new entities are detected for that category type*
- Configure collection mapping
- Execute import to test full workflow

## API Configuration

### Import Size Limits

Package imports are limited to 200MB. For ZIP-based imports, the metablock extracts package metadata client-side before upload — only the final import step is subject to this limit.

### API Timeout Settings

The metablock uses client-side fetch timeouts of 30 seconds (export) and 100 seconds (import and summary operations).

## Troubleshooting

### Common Export Issues

| Issue | Resolution |
| ----- | ---------- |
| Git credentials validation fails | Verify PAT token permissions and expiration |
| Package optimization errors | Check component category IDs for consistency |
| Azure DevOps authentication failures | Confirm repository URL format and access permissions |

### Common Import Issues

| Issue | Resolution |
| ----- | ---------- |
| API calls return 401 Unauthorized | Verify Proxy Requests is enabled and an encrypted server variable is mapped in the Value Mapping panel |
| Missing or version incompatible dependencies detected | Resolve by installing correct agent/connector versions in target environment |
| Category mapping failures | Create new categories or map to existing ones |
| Collection assignment errors | Verify target environment category structure |
| ZIP upload validation errors | Ensure the ZIP was exported by the Deployment Manager and has not been modified |

### Performance Considerations

| Scenario | Optimization |
| -------- | ------------ |
| Large solution exports | Algorithm automatically optimizes package count |
| Complex dependency resolution | Resolution engine identifies blocking dependencies that must be resolved |
| Cross-environment promotion | Category consistency maintained throughout pipeline |

## Advanced Configuration

### Custom Category Creation

The Import Wizard supports dynamic category creation:

```javascript
Category types supported:
- applications - datastreams (shared namespace)
- recommendations (separate namespace)
- recommendationforms (separate namespace)
```

### Package Optimization Algorithm

**Core Principle**: Components are grouped by `categoryId` to minimize total packages while respecting category constraints.

**Algorithm Flow**:

1. **Package Initialization**: Start with first unassigned component
2. **Greedy Consolidation**: Add components with matching categories
3. **Optimization Pass**: Fill remaining slots with compatible single items
4. **Validation**: Ensure package integrity and category consistency

### Environment Promotion Pipeline

```
Non-Prod Environment → Git Repository → Production Environment
    ↓                        ↓              ↓
Export Wizard          Package Storage    Import Wizard
Category Grouping      Version Control    Dependency Resolution
Git Integration        Branch Management  Collection Mapping
```

This deployment manager provides enterprise-grade capabilities for managing XMPro solutions across environments while maintaining integrity, consistency, and optimal performance.
