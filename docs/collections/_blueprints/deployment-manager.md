---
layout: project-top
date: 2025-09-17
title: "XMPro Deployment Manager"
description: "<strong>XMPro Deployment Manager</strong>"
extract: "A comprehensive deployment management application enabling export and import of XMPro solutions across environments via Git repository integration with dependency resolution and automated package optimization."
weight: 1
thumbnail: "/assets/images/blueprints/xmpro-deployment-manager/export-wizard.png"
image: "/assets/images/blueprints/xmpro-deployment-manager/export-wizard.png"
categories: ["Deployment","DevOps","Git Integration","Environment Management"]
contributor: "XMPro"
role: "Application"
import_password: "Dem0nstr@t1on"
toc: false
toc_label: "Table of Contents"

gallery:
   - image: "/assets/images/blueprints/xmpro-deployment-manager/export-wizard.png"
     caption: "<strong>Above:</strong> Export Wizard Interface"
   - image: "/assets/images/blueprints/xmpro-deployment-manager/import-manager.png"
     caption: "<strong>Above:</strong> Import Manager Interface"
gallery_limit: 2

# side_gallery:
#   - image: "/assets/images/blueprints/xmpro-deployment-manager/export-wizard.png"
#     caption: "<strong>Above:</strong> Export Wizard"
#   - image: "/assets/images/blueprints/xmpro-deployment-manager/package-summary.png"
#     caption: "<strong>Above:</strong> Package Summary View"
#   - image: "/assets/images/blueprints/xmpro-deployment-manager/import-manager.png"
#     caption: "<strong>Above:</strong> Import Manager"
#   - image: "/assets/images/blueprints/xmpro-deployment-manager/dependency-resolution.png"
#     caption: "<strong>Above:</strong> Dependency Resolution"

files:
  - title: "Application Package"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/application"
    image: "/assets/images/icons/AD.png"
  - title: "Cross-Database External Tables SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/sql/"
    image: "/assets/images/icons/sql.png"
  - title: "Export Package Creation SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/sql/"
    image: "/assets/images/icons/sql.png"
  - title: "Documentation"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/docs/"
    image: "/assets/images/icons/file-icon.png"

---

## Application

The XMPro Deployment Manager provides comprehensive deployment capabilities for managing XMPro solutions across environments through Git repository integration. The application consists of two main components:

### Export Wizard

The export functionality allows users to package and deploy XMPro solutions to Git repositories with intelligent optimization.

| Feature                                | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| **Component Selection** | Multi-step wizard for selecting Applications, Data Streams, and Recommendations |
| **Category-Based Optimization** | Intelligent algorithm that groups components by categoryId to minimize package count |
| **Git Integration** | Direct deployment to Azure DevOps repositories with PAT authentication |
| **Package Summary** | Real-time preview of export contents with component counts and versions |
| **Application Options** | Configurable export of app files and uploads folder |
| **Sequential Versioning** | Automatic generation of version tags (tag-1, tag-2, etc.) |

### Import Manager

The import functionality enables seamless import of packaged solutions from Git repositories with comprehensive dependency management.

| Feature                                | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| **Repository Browser** | Browse Git repository branches and solution folders |
| **Package Discovery** | Automatic detection and listing of available deployment packages |
| **Dependency Resolution** | Intelligent resolution of missing Agents, Connectors, and Server Variables |
| **Collection Mapping** | Flexible mapping of imported components to target environment categories |
| **Version Selection** | Individual version selection for conflicting dependencies |
| **Category Creation** | Dynamic creation of new categories via XMPro API integration |

### Core Architecture Components

| Component                              | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| **Export Metablock** | Bootstrap-based UI with sophisticated JavaScript for package optimization and Git deployment |
| **Import Metablock** | Complex UI with dependency resolution, collection mapping, and category management |
| **Category Algorithm** | Advanced grouping algorithm that minimizes API calls while respecting XMPro category constraints |
| **Git Authentication** | Secure PAT-based authentication with Azure DevOps integration |
| **API Integration** | Direct integration with XMPro APIs for category creation and deployment operations |

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
https://xmpro.visualstudio.com/your_repo_parent/_git/{repository-name}
├── {branch}/
│   └── {solution}/
│       ├── {tag-1}/
│       │   ├── package-contents.json
│       │   ├── applications/
│       │   ├── datastreams/
│       │   └── recommendations/
│       ├── {tag-2}/
│       └── {tag-N}/
```

### Dependency Resolution Engine

The import manager includes a comprehensive dependency resolution system:

<!-- <div class="inline_image">{% include framework/shortcodes/image.html src="/assets/images/blueprints/xmpro-deployment-manager/dependency-resolution-flow.png" %}</div> -->

**Resolution Categories:**

**Non-Blocking (Import can proceed):**

- **Connector and Agent Version Resolution**: Map agents and connectors to available versions in new environment
- **Collection Mapping**: Flexible category assignment for imported components
  - *Collection  and Category mapping appears for all package items but only applies to new items*
  - *Existing items inherit their current category/collection and create new versions*

**Blocking (Must resolve to import):**

- **Missing Agents**: Detection and version conflict resolution - *import cannot proceed without resolution*
- **Missing Connectors**: Automatic discovery with compatible version suggestions - *import cannot proceed without resolution*
- **Server Variables**: Identification of missing configuration variables - *import cannot proceed without resolution*

## Implementation Files

### Export Metablock Structure

| File                                   | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| `deployment-manager.html` | Bootstrap-based UI with export configuration and package summary |
| `deployment-manager.css` | XMPro-themed styling with responsive design and loading states |
| `deployment-manager.js` | Core logic including category optimization algorithm and Git integration |

### Import Metablock Structure

| File                                   | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| `deployment-import.html` | Complex UI with package selection, dependency resolution, and collection mapping |
| `deployment-import.css` | Extensive styling (1640+ lines) with responsive grid layouts and modal designs |
| `deployment-import.js` | Sophisticated JavaScript with category management, dependency resolution, and API integration |

### Application Package

| Component                              | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| **Dependencies** | Azure SQL Connector (v2.22) for data persistence |
| **Server Variables** | SQL Deploy Password, SQL Login, SQL Password, SQL Server |

## Steps to Deploy

### 1. Configure Git Repository Access

Set up Azure DevOps Personal Access Token with appropriate permissions:

- **Scope**: Full Access permission recommended
- **Organization**: User Defined
- **Expiration**: Recommended 90 days for development environments
- **Storage**: Securely stored in as XMPro Server Variable 

### 2. Configure Server Variables

Ensure the following variables are available for SQL connectivity and Git integration:

| Variable Name | Description | Type | Example |
| ------------- | ----------- | ---- | ------- |
| **SQL Server** | Database server instance | Plain Text | `sqlserver.database.windows.net` |
| **SQL Login** | Database username | Plain Text | `xmadmin` |
| **SQL Deploy Password** | Database password | **Encrypted** | `•••••••••` |
| **Git Repo** | Azure DevOps repository URL | Plain Text | `https://yourazuregitrepo.com/DefaultCollection/ReposFolder/_git/Repo` |
| **Git User** | Username associated with PAT | Plain Text | `user@company.com` |
| **Git Password** | Personal Access Token | **Encrypted** | `•••••••••` |

> **Note**: If variable names differ from those shown above, they must be remapped in the import and export metablock value mapping section and SQL datasources.

### 3. Import the Application Package

- Import the XMPro Deployment Manager application
- If not Auto-mapped, map database connections during import:

| Data Source Name | Connection Type | Configuration |
| ---------------- | --------------- | ------------- |
| Application List | Azure SQL | Mapped to SQL Datasource |
| Data Stream List | Azure SQL | Mapped to SQL Datasource |
| Recommendation List | Azure SQL | Mapped to SQL Datasource |

### 4. Configure Git Integration

Set up value mappings for Git repository access:

- **GitRepository** - Azure DevOps repository URL
- **GitUsername** - Git username or email
- **GitPassword** - Personal Access Token **(Encrypted)**

### 5. Verify Export Functionality

Test the export wizard:

- Navigate to the Export Wizard page
- Select Applications, Data Streams, and/or Recommendations
- Configure solution name and base version tag
- Verify Git credentials auto-validation
- Select Import Uploads and Appfiles where appropriate
- Execute deployment to test Git integration

### 6. Approve Pull Request in Git

Navigate to your Git Repository:

- Identify your specific Pull Request by matching Solution and Base Version Name
- Select the Pull Request, click Complete, leave the default selections checked, then click Complete Merge
- Repeat this process for all packages in the solution
- The exported solution will now be available to select in the Import Manager

### 7. Verify Import Functionality

Test the import manager:

- Navigate to the Import Manager page
- Browse Git repository branches and solution. The defalut branch will be main, but non-merged branches are still selectable
- Select the solution for import
- Assign or create categories as required
- Resolve any missing dependencies
- Configure any agent/connector version resolution
- Configure collection mapping
- Execute import to test full workflow

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
| Missing dependencies detected | Use dependency resolution workflow to address conflicts |
| Category mapping failures | Create new categories or map to existing ones |
| Collection assignment errors | Verify target environment category structure |

### Performance Considerations

| Scenario | Optimization |
| -------- | ------------ |
| Large solution exports | Algorithm automatically optimizes package count |
| Complex dependency resolution | Resolution engine handles version conflicts intelligently |
| Cross-environment promotion | Category consistency maintained throughout pipeline |

## Advanced Configuration

### Custom Category Creation

The import manager supports dynamic category creation:

```javascript
// Category types supported:
- applications-datastreams (shared namespace)
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
Export Wizard          Package Storage    Import Manager
Category Grouping      Version Control    Dependency Resolution
Git Integration        Branch Management  Collection Mapping
```

This deployment manager provides enterprise-grade capabilities for managing XMPro solutions across environments while maintaining integrity, consistency, and optimal performance.
