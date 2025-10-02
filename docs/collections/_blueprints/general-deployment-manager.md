---
layout: project-top
date: 2025-09-17
title: "XMPro Deployment Manager"
description: "<strong>XMPro Deployment Manager</strong>"
extract: "A comprehensive deployment management application enabling export and import of XMPro solutions across environments via Git repository integration with dependency resolution and automated package optimization. When properly configured, imported solutions require no additional mapping or configuration—only version publishing—provided all dependencies are included per deployment documentation."
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
   - image: "/assets/images/blueprints/general-xmpro-deployment-manager/import-manager.png"
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
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/SQL/"
    image: "/assets/images/icons/sql.webp"
  - title: "Export Package Creation SQL"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/SQL/"
    image: "/assets/images/icons/sql.webp"
  - title: "Documentation"
    link: "https://github.com/XMPro/Blueprints-Accelerators-Patterns/blob/master/blueprints/general-deployment-manager/docs/XMPRO_DEPLOYMENT_MANAGER_FAQ.md"
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

### Import Wizard

The import functionality enables seamless import of packaged solutions from Git repositories with comprehensive dependency management.

| Feature                                | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| **Repository Browser** | Browse Git repository branches and solution folders |
| **Package Discovery** | Automatic detection and listing of available deployment packages |
| **Dependency Resolution** | Intelligent resolution of missing Agents, Connectors, and Server Variables |
| **Collection Mapping** | Flexible mapping of imported components to target environment categories |
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
https://{your-organization}.visualstudio.com/{your-project}/_git/{repository-name}
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

- **Collection Mapping**: Collection assignment for imported Data Streams
- **Category Mapping**: Flexible category assignment for imported components
  - *Collection  and Category mapping appears for all package items but only applies to new items*
  - *Existing items inherit their current category/collection and create new versions*
  - *All package entities must have a category option selected before import*

**Blocking (Must resolve to import):**

- **Missing or Version Incompatible Agents**: Detection and resolution required
- **Missing or Version Incompatible Connectors**: Manual resolution required
- **Server Variables**: Identification of missing configuration variables
  - *Import cannot proceed until all blocking dependencies are resolved. Version mismatches between agents or connectors used during development and those in the target environment can cause runtime failures or unexpected behavior in production*

## Steps to Deploy

### 1. Configure Git Repository Access

Set up Azure DevOps Personal Access Token with appropriate permissions:

- **Scope**: Full Access permission recommended
- **Organization**: User Defined
- **Expiration**: Recommended 90 days for development environments
- **Storage**: Securely stored as XMPro Server Variable

### 2. Execute SQL Setup Scripts

Before importing the application, execute the required SQL scripts in the target AD (Application Designer) database:

**Script 1: Create_Synonym_Tables_for_Category_Lookup.sql**

This script creates cross-database external tables to enable the Deployment Manager to query category information from the DS and SM databases.

Update the following variables before execution:

| Variable | Description | Example |
| -------- | ----------- | ------- |
| `@MASTER_KEY_PWD` | Strong password for database master key | Custom secure password |
| `@SQL_SERVER` | SQL Server instance FQDN | `sqlserver.database.windows.net` |
| `@DS_CRED_IDENTITY` | SQL login for DS database access | `DS_username` |
| `@DS_CRED_SECRET` | Password for DS database login | SQL login password |
| `@SM_CRED_IDENTITY` | SQL login for SM database access | `SM_username` |
| `@SM_CRED_SECRET` | Password for SM database login | SQL login password |

> **Note**: The script includes built-in validation to prevent execution with placeholder values. Ensure all `ChangeMe-` prefixes are removed.

**Script 2: sp_AppExport.sql**

This script creates the stored procedure used by the Export Wizard to format application, data stream, and recommendation metadata for Git deployment. No variable configuration is required - execute as-is in the AD database.

### 3. Configure Server Variables

Ensure the following variables are available for SQL connectivity and Git integration:

| Variable Name | Description | Type | Example |
| ------------- | ----------- | ---- | ------- |
| **DM SQL Server** | Database server instance | Plain Text | `sqlserver.database.windows.net` |
| **DM SQL Login** | Database username | Plain Text | `admin` |
| **DM SQL Password** | Database password | **Encrypted** | `•••••••••` |
| **DM Git Repo** | Azure DevOps repository URL | Plain Text | `https://yourazuregitrepo.com/DefaultCollection/ReposFolder/_git/Repo` |
| **DM Git User** | Username associated with PAT | Plain Text | `user@company.com` |
| **DM Git Password** | Personal Access Token | **Encrypted** | `•••••••••` |
| **DM Documentation Website** | Documentation Website for agent downloads | Plain Text | `https://xmpro.gitbook.io/integrations/` |

> **Important**: Variable names must match exactly as shown above. The application relies on these specific names for lookups—using different names will cause lookups to fail. If you must use different variable names, you will need to remap them in both the SQL datasources and the metablock value mapping sections.

### 4. Import the Application Package

- Import the XMPro Deployment Manager application
- Check for data source errors the export and import pages after import

### 6. Verify Export Functionality

Test the export wizard:

- Navigate to the Export Wizard page
- Select Applications, Data Streams, and/or Recommendations
- Configure solution name and base version tag
- Verify Git credentials auto-validation
- Select Import Uploads and Appfiles where appropriate
- Execute deployment to test Git integration

### 7. Approve Pull Request in Git

Navigate to your Git Repository:

- Identify your specific Pull Request by matching Solution and Base Version Name
- Select the Pull Request, click Complete, leave the default selections checked, then click Complete Merge
- Repeat this process for all packages in the solution
- The exported solution will now be available in the main branch to select in the Import Manager

### 8. Verify Import Functionality

Test the import manager:

- Navigate to the Import Manager page
- Browse Git repository branches and solution. The defalut branch will be main, but non-merged branches are still selectable
- Select the solution for import
- Resolve any missing dependencies
- Assign or create categories as required
  - *Note: Category assignment will only reassign new entities. Existing entities are matched by Universal ID and version, retaining their current category/collection assignment. The category field is still required as there is no current way to tell what exists in the target env*
- Configure collection mapping
- Execute import to test full workflow

## API Configuration

### Import Size Limits

The application enforces a 200MB size limit on imports to prevent timeout issues and ensure reliable import operations.

### Export Timeout Settings

Export operations include a configurable database timeout of 1 minute (3600ms) to handle large application exports. This timeout is set at the database command level to prevent export failures when processing complex applications with extensive dependencies.

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
| Missing or version incompatible dependencies detected | Resolve by installing correct agent/connector versions in target environment |
| Category mapping failures | Create new categories or map to existing ones |
| Collection assignment errors | Verify target environment category structure |

### Performance Considerations

| Scenario | Optimization |
| -------- | ------------ |
| Large solution exports | Algorithm automatically optimizes package count |
| Complex dependency resolution | Resolution engine identifies blocking dependencies that must be resolved |
| Cross-environment promotion | Category consistency maintained throughout pipeline |

## Advanced Configuration

### Custom Category Creation

The import manager supports dynamic category creation:

```javascript
// Category types supported:
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
Export Wizard          Package Storage    Import Manager
Category Grouping      Version Control    Dependency Resolution
Git Integration        Branch Management  Collection Mapping
```

This deployment manager provides enterprise-grade capabilities for managing XMPro solutions across environments while maintaining integrity, consistency, and optimal performance.
