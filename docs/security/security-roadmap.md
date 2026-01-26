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

The following table shows the support status for each Fabric item and whether it's currently in preview or generally available GA. If a release is planned, the date is indicated. For items not listed or showing a dash (-), support isn't currently planned or announced.

### [Option 1: Current release status](#tab/release-1)

| Fabric Experience | Fabric Item | Workspace private links | Customer managed keys | Outbound access protection |
|--|--|:--:|:--:|:--:|
| **Power BI** | Power BI Reports | - | - | Planned <sup>1</sup> |
|  | Dashboards | - | - | - |
|  | Scorecard | - | - | - |
|  | Semantic Model | - | - | Planned <sup>2</sup> |
|  | Streaming dataflow | - | - | - |
|  | Streaming dataset | - | - | - |
|  | Paginated Reports | - | - | - |
|  | Datamart | - | - | - |
|  | Exploration | - | - | - |
|  | Org App | - | - | - |
|  | Metric Set | - | - | - |
| **OneLake** | Shortcut | ✓ | - | - |
| **Data Engineering** | Lakehouse | ✓ | ✓ | ✓ |
|  | Lakehouse Shortcuts | ✓ | - | Preview |
|  | Lakehouse Sql Endpoint | ✓ | ✓ | ✓ |
|  | Notebook | ✓ | ✓ | ✓ |
|  | Spark Job Definition | ✓ | ✓ | ✓ |
|  | Environment | ✓ | ✓ | ✓ |
|  | Lakehouse with Schemas | - | ✓ | Preview |
| **Data Factory** | Default Semantic Model | Preview | - | ✓ |
|  | Pipeline | ✓ | ✓ | Preview |
|  | Dataflows Gen1 | Not supported | Not supported | Not supported |
|  | Dataflows Gen2 | - | ✓ | Preview |
|  | Copy Jobs | ✓ | ✓ | Preview |
|  | Mounted Azure Data Factory | ✓ | - | - |
|  | Vnet data gateways | ✓ | - | Preview |
|  | On-premises data gateways | Pipelines/Copy Job supported (Dataflow Gen2 pending)| - | Preview |
| **Data Warehouse** | SQL Endpoint | ✓ | ✓ | ✓ |
|  | Warehouse | ✓ | ✓ | ✓ |
|  | Warehouse with EDPE | - | Not supported | - |
| **Data Science** | ML Model | ✓ | ✓ | Planned <sup>2</sup> |
|  | Experiment | ✓ | ✓ | - |
|  | Data Agent | ✓ | - | - |
| **Real-Time Intelligence** | KQL Queryset | ✓ | Preview | - |
|  | Activator | ✓ | - | - |
|  | Eventhouse/KQL DB | ✓ | Preview | - |
|  | Eventstream | ✓ | - | - |
|  | Real-Time Dashboards | ✓ | Preview | - |
| **Mirroring** | Mirrored Azure SQL Database | Not supported | - | Preview |
|  | Mirrored Azure SQL Managed Instance | Not supported | - | Preview |
|  | Mirrored Snowflake | - | - | Preview |
|  | Mirrored SQL Server (Windows/Linux on-premises) | ✓ | - | Preview |
|  | Mirrored Azure Cosmos DB | ✓ | - | Preview |
|  | Mirrored Azure Database for PostgreSQL | Not supported | - | Preview |
|  | Mirrored Google Bigquery | - | - | Preview |
|  | Mirrored Oracle | Q1 2026 | - | Preview |
| **Native Databases** | Sql DB in Fabric | Q1 2026 Preview | Preview | - |
|  | Cosmos DB | - | - | - |
| **Developer Experience** | API for GraphQL | - | ✓ | - |
|  | Deployment Pipelines | - | - | Preview |
|  | Git Integration | ✓ | - | ✓ |
|  | Variable Libraries | ✓ | - | - |
| **Industry Solutions** | Healthcare data solutions | - | ✓ | - |
|  | Sustainability Solutions | - | ✓ | - |

<sup>1</sup> Support is currently in development, with preview targeted for Q1 2026 and GA for Q2 2026. These dates are subject to change.

### [Option 2: Target dates](#tab/dates-1)

| Fabric Experience | Fabric Item | Workspace private links | Customer managed keys | Outbound access protection |
|--|--|:--:|:--:|:--:|
| Power BI | Power BI Reports | - | - | Q1 2026 Preview <br></br>Q2 2026 GA |
| Power BI | Semantic Model | - | - | Q1 2026 Preview <br></br>Q2 2026 GA |
| OneLake | Shortcut | ✓ | - | - |
| Data Engineering | Lakehouse | ✓ | ✓ | ✓ |
| Data Engineering | Lakehouse Shortcuts | ✓ | - | Preview <br></br>Q1 2026 GA |
| Data Engineering | Lakehouse Sql Endpoint | ✓ | ✓ | ✓ |
| Data Engineering | Notebook | ✓ | ✓ | ✓ |
| Data Engineering | Spark Job Definition | ✓ | ✓ | ✓ |
| Data Engineering | Environment | ✓ | ✓ | ✓ |
| Data Engineering | Lakehouse with Schemas | - | ✓ | ✓ |
| Data Factory | Default Semantic Model | ✓ | - | ✓ |
| Data Factory | Pipeline | ✓ | ✓ | Preview<br></br>Q1 2026 |
| Data Factory | Dataflows Gen1 | Not supported | Not supported | Not supported |
| Data Factory | Dataflows Gen2 | - | ✓ | Preview <br></br>Q1 2026 GA |
| Data Factory | Copy Jobs | ✓ | ✓ | Preview <br></br>Q1 2026 GA |
| Data Factory | Mounted Azure Data Factory | ✓ | - | - |
| Data Factory | Vnet data gateways | ✓ | - | Preview <br></br>Q1 2026 GA |
| Data Factory | On-premises data gateways | Pipelines/Copy Job supported (Dataflow Gen2 pending)| - | Preview <br></br>Q1 2026 GA |
| Data Warehouse | SQL Endpoint | ✓ | ✓ | ✓ |
| Data Warehouse | Warehouse | ✓ | ✓ | ✓ |
| Data Warehouse | Warehouse with EDPE | Q1 2026 Preview <br></br>Q1 2026 GA | Not supported | - |
| Data Science | ML Model | ✓ | ✓ | Q1 2026 Preview <br></br>Q2 2026 GA |
| Data Science | Experiment | ✓ | ✓ | Q1 2026 Preview <br></br>Q2 2026 GA |
| Data Science | Data Agent | ✓ | - | Q1 2026 Preview <br></br>Q2 2026 GA |
| Real-Time Intelligence | KQL Queryset | ✓ | Preview<br></br>2026 GA | - |
| Real-Time Intelligence | Activator | ✓ | - | - |
| Real-Time Intelligence | Eventhouse/KQL DB | ✓ | Preview<br></br>2026 GA | Q1 2026 Preview <br></br>Q2 2026 GA |
| Real-Time Intelligence | Eventstream | ✓ | Q1 2026 Preview | Q1 2026 Preview <br></br>Q2 2026 GA |
| Real-Time Intelligence | Real-Time Dashboards | ✓ | Preview<br></br>2026 GA | - |
| Mirroring | Mirrored Azure SQL Database | Not supported | - | Preview <br></br>Q1 2026 GA |
| Mirroring | Mirrored Azure SQL Managed Instance | Not supported | - | Preview <br></br>Q1 2026 GA |
| Mirroring | Mirrored Snowflake | - | - | Preview <br></br>Q1 2026 GA |
| Mirroring | Mirrored SQL Server (Windows/Linux on-premises) | ✓ | - | Preview <br></br>Q1 2026 GA |
| Mirroring | Mirrored Azure Cosmos DB | ✓ | - | Preview <br></br>Q1 2026 GA |
| Mirroring | Mirrored Azure Database for PostgreSQL | Not supported | - | Preview <br></br>Q1 2026 GA |
| Mirroring | Mirrored Google Bigquery | - | - | Preview <br></br>Q1 2026 GA |
| Mirroring | Mirrored Oracle | Q1 2026 | - | Preview <br></br>Q1 2026 GA |
| Native Databases | Sql DB in Fabric | Q1 2026 Preview | Preview | - |
| Native Databases | Cosmos DB | Q1 2026 Preview<br></br>Q1 2026 GA | Q4 2026 Preview | Q1 2026 Preview <br></br>Q2 2026 GA |
| Developer Experience | API for GraphQL | - | ✓ | - |
| Developer Experience | Deployment Pipelines | Q1 2026 Preview<br></br>Q1 2026 GA | - | ✓ |
| Developer Experience | Git Integration | ✓ | - | ✓ |
| Developer Experience | Variable Libraries | ✓ | - | - |
| Industry Solutions | Healthcare data solutions | - | ✓ | - |
| Industry Solutions | Sustainability Solutions | - | ✓ | - |

---

## Related links

- To learn about the new features and documentation improvements for Microsoft Fabric, see [What's new in Microsoft Fabric](/fabric/fundamentals/whats-new.md).
- To follow the latest in Fabric news and features, see the [Microsoft Fabric Updates Blog](https://blog.fabric.microsoft.com/).
- For community, marketing, case studies, and industry news, see the [Microsoft Fabric Blog](https://www.microsoft.com/microsoft-fabric/blog/).
- Follow the latest in Power BI at [What's new in Power BI?](/power-bi/fundamentals/desktop-latest-update?tabs=powerbi-service)
- For older updates, review the [Microsoft Fabric What's New archive](/fabric/fundamentals/whats-new-archive.md).
<!-->✓<-->
