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

Microsoft Fabric supports various security features across different workloads and items. This roadmap tracks the availability of **Workspace private links**, **Customer managed keys**, and **Outbound access protection** for each Fabric experience and item, including current support status and planned release timelines.

> [!NOTE]
> If a Fabric item isn't listed in this table, support for these security features is not currently planned or announced.

| Fabric Experience | Fabric Item | Workspace private links: Preview | Workspace private links: GA | Customer managed keys: Preview | Customer managed keys: GA | Outbound access protection: Preview | Outbound access protection: GA |
|--|--|--|--|--|--|--|--|
| Power BI | Power BI Reports | - | - | - | - | Q1 2026 | Q2 2026 |
| Power BI | Semantic Model | - | - | - | - | Q1 2026 | Q2 2026 |
| OneLake | Shortcut | ✓ | ✓ | - | - | - | - |
| Data Engineering | Lakehouse | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Data Engineering | Lakehouse Shortcuts | ✓ | ✓ | - | - | Q4 2025 | Q1 2026 |
| Data Engineering | Lakehouse Sql Endpoint | ✓ | ✓ | - | ✓ | ✓ | ✓ |
| Data Engineering | Notebook | ✓ | ✓ | - | ✓ | ✓ | ✓ |
| Data Engineering | Spark Job Definition | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Data Engineering | Environment | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Data Engineering | Lakehouse with Schemas |  |  | ✓ | ✓ | Q4 2025 | Q4 2025 |
| Data Factory | Default Semantic Model | Q4 2025 | Q4 2025 | - | - | Q4 2025 | Q4 2025 |
| Data Factory | Pipeline | ✓ | ✓ | ✓ | ✓ | Q4 2025 | Q1 2026 |
| Data Factory | Dataflows Gen1 | Not supported | Not supported | Not supported | Not supported | Not supported | Not supported |
| Data Factory | Dataflows Gen2 | - | - | ✓ | ✓ | Q4 2025 | Q1 2026 |
| Data Factory | Copy Jobs | ✓ | ✓ | ✓ | ✓ | Q4 2025 | Q1 2026 |
| Data Factory | Mounted Azure Data Factory | ✓ | ✓ | - | - | - | - |
| Data Factory | Vnet Data gateways | ✓ | ✓ | - | - | Q4 2025 | Q1 2026 |
| Data Factory | on-premises Data gateways | done for Pipelines/Copy Job; Pending Dataflow Gen2 | done for Pipelines/Copy Job; Pending Dataflow Gen2 | - | - | Q4 2025 | Q1 2026 |
| Data Warehouse | SQL Endpoint | ✓ | ✓ | Not supported | ✓ | ✓ | ✓ |
| Data Warehouse | Warehouse | ✓ | ✓ | Not supported | ✓ | ✓ | ✓ |
| Data Warehouse | Warehouse with EDPE | Q1 2026 | Q1 2026 | Not supported | Not supported | - | - |
| Data Science | ML Model | ✓ | ✓ | ✓ | ✓ | Q1 2026 | Q2 2026 |
| Data Science | Experiment | ✓ | ✓ | ✓ | ✓ | Q1 2026 | Q2 2026 |
| Data Science | Data Agent | ✓ | Q4 2025 | - | - | Q1 2026 | Q2 2026 |
| Real-Time Intelligence | KQL Queryset | ✓ | ✓ | Q4 2025 | 2026 | - | - |
| Real-Time Intelligence | Activator | ✓ | Q4 2025 | - | - | - | - |
| Real-Time Intelligence | Eventhouse/KQL DB | ✓ | ✓ | Q4 2025 | 2026 | Q1 2026 | Q2 2026 |
| Real-Time Intelligence | Eventstream | ✓ | ✓ | Q1 2026 | - | Q1 2026 | Q2 2026 |
| Real-Time Intelligence | Real-Time Dashboards | ✓ | ✓ | Q4 2025 | 2026 | - | - |
| Mirroring | Mirrored Azure SQL Database | Not supported | Not supported | - | - | Q4 2025 | Q1 2026 |
| Mirroring | Mirrored Azure SQL Managed Instance | Not supported | Not supported | - | - | Q4 2025 | Q1 2026 |
| Mirroring | Mirrored Snowflake | - | - | - | - | Q4 2025 | Q1 2026 |
| Mirroring | Mirrored SQL Server (Windows/Linux on-premises) | ✓ | ✓ | - | - | Q4 2025 | Q1 2026 |
| Mirroring | Mirrored Azure Cosmos DB | ✓ | ✓ | - | - | Q4 2025 | Q1 2026 |
| Mirroring | Mirrored Azure Database for PostgreSQL | Not supported | Not supported | - | - | Q4 2025 | Q1 2026 |
| Mirroring | Mirrored Google Bigquery | - | - | - | - | Q4 2025 | Q1 2026 |
| Mirroring | Mirrored Oracle | Q1 2026 | Q1 2026 | - | - | Q4 2025 | Q1 2026 |
| Native Databases | Sql DB in Fabric | Q1 2026 | TBD | Q4 2025 | - | - | - |
| Native Databases | Cosmos DB | Q1 2026 | Q1 2026 | Q4 2026 | - | Q1 2026 | Q2 2026 |
| Developer Experience | API for GraphQL | - | - | ✓ | ✓ | - | - |
| Developer Experience | Deployment Pipelines | Q1 2026 | Q1 2026 | - | - | Q4 2025 | Q4 2025 |
| Developer Experience | Git Integration | ✓ | ✓ | - | - | ✓ | ✓ |
| Developer Experience | Variable Libraries | ✓ | ✓ | - | - | - | - |
| Industry Solutions | Healthcare data solutions | - | - | ✓ | ✓ | - | - |
| Industry Solutions | Sustainability Solutions | - | - | ✓ | ✓ | - | - |
