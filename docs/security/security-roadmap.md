---
title: Fabric security features support roadmap
description: Learn about the support status of the Fabric security features Workspace private links, Customer managed keys, and Outbound access protection for various Fabric workloads and items. Find out if items are currently supported or the planned preview or general availability releases.
#customer intent: As a Fabric security admin or decision-maker, I want to learn if certain security features are supported for specific workload items, and if not, when support will be available.
author: msmimart
ms.author: mimart
ms.reviewer: mimart
ms.date: 01/23/2026
ms.topic: concept-article
---

# Fabric security features support roadmap

Microsoft Fabric supports various security features across different workloads and items. This page is continuously updated with the availability of the following security features for Fabric items, including current support status and planned release timelines:

* [Workspace private links](security-workspace-level-private-links-overview.md)
* [Customer managed keys](workspace-customer-managed-keys.md)
* [Outbound access protection](workspace-outbound-access-protection-overview.md)

The following table shows the support status for each Fabric item. A check mark (✓) indicates the item is currently supported and generally available (GA). "Preview" means support for the item type is in preview, and "Planned" means support is planned but not yet available. For items *[not listed or]* showing a dash (-), support isn't currently planned or announced.

### [Option 1: Current support status for Fabric item types](#tab/fullset-1)

|  | Item type | Workspace private links | Customer managed keys | Outbound access protection |
|--|--|:--:|:--:|:--:|
| **Power BI** | Power BI Report | - | - | Planned <sup>1</sup> |
|  | Dashboard | - | - | - |
|  | Scorecard | - | - | - |
|  | Semantic Model | - | - | Planned <sup>2</sup> |
|  | Streaming dataflow | - | - | - |
|  | Streaming dataset | - | - | - |
|  | Paginated Report | - | - | - |
|  | Datamart | - | - | - |
|  | Exploration | - | - | - |
|  | Org App | - | - | - |
|  | Metric Set | - | - | - |
| **OneLake** | Shortcut | ✓ | - | - |
| **Data Engineering** | Lakehouse | ✓ | ✓ | ✓ |
|  | Lakehouse Shortcut | ✓ | - | Preview <br>(GA Q1 2026) |
|  | Lakehouse SQL Endpoint | ✓ | ✓ | ✓ |
|  | Notebook | ✓ | ✓ | ✓ |
|  | Spark Job Definition | ✓ | ✓ | ✓ |
|  | Environment | ✓ | ✓ | ✓ |
|  | Lakehouse with Schema | - | ✓ | ✓ |
|  | Spark Connectors for SQL Data Warehouse | - | - | - |
| **Data Factory** | Default Semantic Model | ✓ | - | ✓ |
|  | Pipeline | ✓ | ✓ | Preview <br>(GA Q1 2026) |
|  | Dataflow Gen1 | Not supported | Not supported | Not supported |
|  | Dataflow Gen2 | - | ✓ | Preview <br>(GA Q1 2026) |
|  | Copy Job | ✓ | ✓ | Preview <br>(GA Q1 2026) |
|  | Mounted Azure Data Factory | ✓ | - | - |
|  | Vnet data gateway | ✓ | - | Preview <br>(GA Q1 2026) |
|  | On-premises data gateway: Pipeline/Copy Job | ✓ | - | Preview <br>(GA Q1 2026) |
|  | On-premises data gateway: Dataflow Gen2 | -| - | Preview <br>(GA Q1 2026) |
|  | Data Workflow | - | - | - |
|  | Data Build Tool job | - | - | - |
| **Data Warehouse** | SQL Endpoint | ✓ | ✓ | ✓ |
|  | Warehouse | ✓ | ✓ | ✓ |
|  | Warehouse with EDPE | Planned<sup>2</sup> | Not supported | - |
| **Data Science** | ML Model | ✓ | ✓ | Planned <sup>2</sup> |
|  | Experiment | ✓ | ✓ | Planned <sup>2</sup> |
|  | Data Agent | ✓ | - | Planned <sup>2</sup> |
| **Real-Time Intelligence** | KQL Queryset | ✓ | Preview <br>(GA 2026) | - |
|  | Activator | ✓ | - | - |
|  | Eventhouse/KQL DB | ✓ | Preview <br>(GA 2026) | Planned <sup>1</sup> |
|  | Eventstream | ✓ | Planned <sup>3</sup> | - |
|  | Real-Time Dashboard | ✓ | Preview <br>(GA 2026) | - |
|  | Anomaly detector  | - | - | - |
|  | Digital Twin Builder | - | - | - | 
|  | Event Schema Set  | - | - | - |
|  | Map | - | - | - |
| **Mirroring** | Mirrored Azure SQL Database | Not supported | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Azure SQL Managed Instance | Not supported | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Azure Databricks Catalog | - | - | - |
|  | Mirrored Snowflake | - | - | Preview <br>(GA Q1 2026) |
|  | Mirrored SQL Server (Windows/Linux on-premises) | ✓ | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Dataverse | - | - | - |
|  | Mirrored SAP | - | - | - |
|  | Mirrored Azure Cosmos DB | ✓ | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Azure Database for PostgreSQL | Not supported | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Google Bigquery | - | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Oracle | Planned <sup>4</sup> | - | Preview <br>(GA Q1 2026) |
| **Native Databases** | Sql DB in Fabric | Planned <sup>3</sup> | Preview | - |
|  | Cosmos DB | Planned <sup>4</sup> | Planned <sup>5</sup> | - |
|  | Snowflake database | - | - | - |
| **Graph** | Graph model  | - | - | - |
|  | Graph queryset | - | - | - |
| **Developer Experience** | API for GraphQL | - | ✓ | - |
|  | Deployment Pipeline | Planned <sup>4</sup> | - | ✓ |
|  | Git Integration | ✓ | - | ✓ |
|  | Variable Library | ✓ | - | - |
| **Industry Solutions** | Healthcare data solutions | - | ✓ | - |
|  | Sustainability Solution | - | ✓ | - |
|  | Retail Solution | - | ✓ | - |
| **Governance and Security** | Sensitivity Label | - | - | - |
|  | Share item | - | - | - |
| **Uncategorized**  | Operations Agent | - | - | - |

<sup>1</sup> Planned for preview in Q1 2026 and GA in Q2 2026.

<sup>2</sup> Planned for 2026.

<sup>3</sup> Planned for preview in Q1 2026.

<sup>4</sup> Planned for preview and GA in Q1 2026.

<sup>5</sup> Planned for preview in Q4 2026.

For the most up-to-date release timelines, see the [Microsoft Fabric Roadmap](https://roadmap.fabric.microsoft.com/?product=administration%2Cgovernanceandsecurity).

### [Option 2: Support status for supported Fabric item types](#tab/subset-1)

|  | Item type | Workspace private links | Customer managed keys | Outbound access protection |
|--|--|:--:|:--:|:--:|
| **Power BI** | Power BI Report | - | - | Planned <sup>1</sup> |
|  | Semantic Model | - | - | Planned <sup>2</sup> |
| **OneLake** | Shortcut | ✓ | - | - |
| **Data Engineering** | Lakehouse | ✓ | ✓ | ✓ |
|  | Lakehouse Shortcut | ✓ | - | Preview <br>(GA Q1 2026) |
|  | Lakehouse SQL Endpoint | ✓ | ✓ | ✓ |
|  | Notebook | ✓ | ✓ | ✓ |
|  | Spark Job Definition | ✓ | ✓ | ✓ |
|  | Environment | ✓ | ✓ | ✓ |
|  | Lakehouse with Schema | - | ✓ | ✓ |
| **Data Factory** | Default Semantic Model | ✓ | - | ✓ |
|  | Pipeline | ✓ | ✓ | Preview <br>(GA Q1 2026) |
|  | Dataflow Gen1 | Not supported | Not supported | Not supported |
|  | Dataflow Gen2 | - | ✓ | Preview <br>(GA Q1 2026) |
|  | Copy Job | ✓ | ✓ | Preview <br>(GA Q1 2026) |
|  | Mounted Azure Data Factory | ✓ | - | - |
|  | Vnet data gateway | ✓ | - | Preview <br>(GA Q1 2026) |
|  | On-premises data gateway: Pipeline/Copy Job | ✓ | - | Preview <br>(GA Q1 2026) |
|  | On-premises data gateway: Dataflow Gen2 | -| - | Preview <br>(GA Q1 2026) |
| **Data Warehouse** | SQL Endpoint | ✓ | ✓ | ✓ |
|  | Warehouse | ✓ | ✓ | ✓ |
|  | Warehouse with EDPE | Planned<sup>2</sup> | Not supported | - |
| **Data Science** | ML Model | ✓ | ✓ | Planned <sup>2</sup> |
|  | Experiment | ✓ | ✓ | Planned <sup>2</sup> |
|  | Data Agent | ✓ | - | Planned <sup>2</sup> |
| **Real-Time Intelligence** | KQL Queryset | ✓ | Preview <br>(GA 2026) | - |
|  | Activator | ✓ | - | - |
|  | Eventhouse/KQL DB | ✓ | Preview <br>(GA 2026) | Planned <sup>1</sup> |
|  | Eventstream | ✓ | Planned <sup>3</sup> | - |
|  | Real-Time Dashboard | ✓ | Preview <br>(GA 2026) | - |
| **Mirroring** | Mirrored Azure SQL Database | Not supported | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Azure SQL Managed Instance | Not supported | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Snowflake | - | - | Preview <br>(GA Q1 2026) |
|  | Mirrored SQL Server (Windows/Linux on-premises) | ✓ | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Azure Cosmos DB | ✓ | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Azure Database for PostgreSQL | Not supported | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Google Bigquery | - | - | Preview <br>(GA Q1 2026) |
|  | Mirrored Oracle | Planned <sup>4</sup> | - | Preview <br>(GA Q1 2026) |
| **Native Databases** | Sql DB in Fabric | Planned <sup>3</sup> | Preview | - |
|  | Cosmos DB | Planned <sup>4</sup> | Planned <sup>5</sup> | - |
| **Developer Experience** | API for GraphQL | - | ✓ | - |
|  | Deployment Pipeline | Planned <sup>4</sup> | - | ✓ |
|  | Git Integration | ✓ | - | ✓ |
|  | Variable Library | ✓ | - | - |
| **Industry Solutions** | Healthcare data solutions | - | ✓ | - |
|  | Sustainability Solution | - | ✓ | - |
|  | Retail Solution | - | ✓ | - |

<sup>1</sup> Planned for preview in Q1 2026 and GA in Q2 2026.

<sup>2</sup> Planned for 2026.

<sup>3</sup> Planned for preview in Q1 2026.

<sup>4</sup> Planned for preview and GA in Q1 2026.

<sup>5</sup> Planned for preview in Q4 2026.

For the most up-to-date release timelines, see the [Microsoft Fabric Roadmap](https://roadmap.fabric.microsoft.com/?product=administration%2Cgovernanceandsecurity).

---

## Related links

- To learn about the new features and documentation improvements for Microsoft Fabric, see [What's new in Microsoft Fabric](/fabric/fundamentals/whats-new.md).
- To follow the latest in Fabric news and features, see the [Microsoft Fabric Updates Blog](https://blog.fabric.microsoft.com/).
- For community, marketing, case studies, and industry news, see the [Microsoft Fabric Blog](https://www.microsoft.com/microsoft-fabric/blog/).
- Follow the latest in Power BI at [What's new in Power BI?](/power-bi/fundamentals/desktop-latest-update?tabs=powerbi-service)
- For older updates, review the [Microsoft Fabric What's New archive](/fabric/fundamentals/whats-new-archive.md).
