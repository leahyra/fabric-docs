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

The following table shows the support status for each Fabric item and whether it's currently in preview or generally available (GA). If a release is planned, the date is indicated. For items not listed or showing a dash (-), support isn't currently planned or announced.

| Fabric Experience | Fabric Item | Workspace private links | Customer managed keys | Outbound access protection |
|--|--|:--:|:--:|:--:|
| Power BI | Power BI Reports | - | - | Q1 2026 (Preview), Q2 2026 (GA) |
| Power BI | Semantic Model | - | - | Q1 2026 (Preview), Q2 2026 (GA) |
| OneLake | Shortcut | GA | - | - |
| Data Engineering | Lakehouse | GA | GA | GA |
| Data Engineering | Lakehouse Shortcuts | GA | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Data Engineering | Lakehouse Sql Endpoint | GA | GA | GA |
| Data Engineering | Notebook | GA | GA | GA |
| Data Engineering | Spark Job Definition | GA | GA | GA |
| Data Engineering | Environment | GA | GA | GA |
| Data Engineering | Lakehouse with Schemas | - | GA | Q4 2025 (Preview), Q4 2025 (GA) |
| Data Factory | Default Semantic Model | Q4 2025 (Preview), Q4 2025 (GA) | - | Q4 2025 (Preview), Q4 2025 (GA) |
| Data Factory | Pipeline | GA | GA | Q4 2025 (Preview), Q1 2026 |
| Data Factory | Dataflows Gen1 | Not supported | Not supported | Not supported |
| Data Factory | Dataflows Gen2 | - | GA | Q4 2025 (Preview), Q1 2026 (GA) |
| Data Factory | Copy Jobs | GA | GA | Q4 2025 (Preview), Q1 2026 (GA) |
| Data Factory | Mounted Azure Data Factory | GA | - | - |
| Data Factory | Vnet data gateways | GA | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Data Factory | On-premises data gateways | Pipelines/Copy Job supported (Dataflow Gen2 pending)| - | Q4 2025 (Preview), Q1 2026 (GA) |
| Data Warehouse | SQL Endpoint | GA | GA | GA |
| Data Warehouse | Warehouse | GA | GA | GA |
| Data Warehouse | Warehouse with EDPE | Q1 2026 (Preview), Q1 2026 (GA) | Not supported | - |
| Data Science | ML Model | GA | GA | Q1 2026 (Preview), Q2 2026 (GA) |
| Data Science | Experiment | GA | GA | Q1 2026 (Preview), Q2 2026 (GA) |
| Data Science | Data Agent | Q4 2025 | - | Q1 2026 (Preview), Q2 2026 (GA) |
| Real-Time Intelligence | KQL Queryset | GA | Q4 2025 (Preview), 2026 (GA) | - |
| Real-Time Intelligence | Activator | Q4 2025 (GA) | - | - |
| Real-Time Intelligence | Eventhouse/KQL DB | GA | Q4 2025 (Preview), 2026 (GA) | Q1 2026 (Preview), Q2 2026 (GA) |
| Real-Time Intelligence | Eventstream | GA | Q1 2026 | Q1 2026 (Preview), Q2 2026 (GA) |
| Real-Time Intelligence | Real-Time Dashboards | GA | Q4 2025 (Preview), 2026 (GA) | - |
| Mirroring | Mirrored Azure SQL Database | Not supported | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Mirroring | Mirrored Azure SQL Managed Instance | Not supported | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Mirroring | Mirrored Snowflake | - | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Mirroring | Mirrored SQL Server (Windows/Linux on-premises) | GA | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Mirroring | Mirrored Azure Cosmos DB | GA | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Mirroring | Mirrored Azure Database for PostgreSQL | Not supported | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Mirroring | Mirrored Google Bigquery | - | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Mirroring | Mirrored Oracle | Q1 2026 | - | Q4 2025 (Preview), Q1 2026 (GA) |
| Native Databases | Sql DB in Fabric | Q1 2026 (Preview) | Q4 2025 (Preview) | - |
| Native Databases | Cosmos DB | Q1 2026 (Preview), Q1 2026 (GA) | Q4 2026 (Preview) | Q1 2026 (Preview), Q2 2026 (GA) |
| Developer Experience | API for GraphQL | - | GA | - |
| Developer Experience | Deployment Pipelines | Q1 2026 (Preview), Q1 2026 (GA) | - | Q4 2025 (Preview), Q4 2025 (GA) |
| Developer Experience | Git Integration | GA | - | GA |
| Developer Experience | Variable Libraries | GA | - | - |
| Industry Solutions | Healthcare data solutions | - | GA | - |
| Industry Solutions | Sustainability Solutions | - | GA | - |

## Related links

- To learn about the new features and documentation improvements for Microsoft Fabric, see [What's new in Microsoft Fabric](whats-new.md).
- To follow the latest in Fabric news and features, see the [Microsoft Fabric Updates Blog](https://blog.fabric.microsoft.com/).
- For community, marketing, case studies, and industry news, see the [Microsoft Fabric Blog](https://www.microsoft.com/microsoft-fabric/blog/).
- Follow the latest in Power BI at [What's new in Power BI?](/power-bi/fundamentals/desktop-latest-update?tabs=powerbi-service)
- For older updates, review the [Microsoft Fabric What's New archive](whats-new-archive.md).
