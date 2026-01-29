---
title: Pricing Example for a copy with an on-premises data gateway
description: A comprehensive pricing guide to copying data from SQL Server to Fabric Lakehouse with the On-premises data gateway.
ms.reviewer: lle
ms.date: 01/29/2026
ms.topic: concept-article
---

# Pricing example: Copy data from on-premises SQL Server to Fabric Lakehouse using On-premises Data Gateway

In this scenario, you copy data from an on-premises SQL Server database to a Lakehouse table in Microsoft Fabric by using a Copy job with the On-premises Data Gateway (OPDG).

This scenario is a common hybrid integration pattern where you keep operational databases on-premises and use Fabric for analytics and reporting.

The on-premises data gateway itself doesn't incur extra charges. All billing is based on Fabric capacity consumption by the Data Factory workload, such as the Data Movement meter.

>[!NOTE]
>The prices used in the following example are hypothetical and don’t intend to imply exact actual pricing. The estimates demonstrate how you can estimate, plan, and manage cost for Data Factory projects in Microsoft Fabric.
>
>Since Fabric capacities are priced uniquely across regions, refer to [the Microsoft Fabric pricing page](https://azure.microsoft.com/pricing/details/microsoft-fabric/) to explore Fabric capacity pricing regionally.

## Configuration

To set up this scenario, you need the following resources:

- An on-premises SQL Server database containing **500 GB** of data.
- An On-premises Data Gateway installed in the customer network and registered to the Fabric tenant.
- A Copy job configured with:
   - **Source**: On-premises SQL Server via OPDG
   - **Sink**: Fabric Lakehouse table
   - **Copy mode**: Full copy for the first run, followed by incremental loads.

## Cost estimation by using the Fabric Metrics App

The Copy job consumes the **Data Movement** meter for the full copy and the **Data Movement – Incremental copy** meter for incremental runs, just like cloud-based sources. The gateway only affects data connectivity and doesn't affect pricing meters.

### Full copy (initial load)

Assume the copy job uses:

- Intelligent throughput optimization: **128**
- Data movement duration: **~9 minutes**

According to the copy job pricing model:

- Each unit of intelligent throughput optimization consumes **1.5 CU hours per hour** for full copy.

Utilized CU hours:

128 × 1.5 × (9 / 60) = 28.8 CU hours

Convert to CU seconds:

28.8 × 3600 = 103,680 CU seconds

### Incremental copy (daily load)

Assume daily incremental load copies **5 GB** of new data with:

- Intelligent throughput optimization: **4**
- Duration: **~1 minute**

According to the incremental copy pricing model:

- Each unit of intelligent throughput optimization consumes **3 CU hours per hour** for incremental copy.

Utilized CU hours:

4 × 3 × (1 / 60) = 0.2 CU hours

Convert to CU seconds:

0.2 × 3600 = 720 CU seconds

## Total cost estimate

| **Metric**                              | **Consumption**  |
|-----------------------------------------|------------------|
| Data movement CU seconds (full copy)    | 103,680          |
| Data movement – incremental CU seconds  | 720              |

Total CU hours:

Total CU hours = (103,680 + 720) / 3,600 = 29 CU hours

At **$0.18 per CU hour**:

Total cost = 29 × $0.18 = $5.22

This cost covers:

- One-time initial load of 500 GB from on-premises
- Plus one incremental load of 5 GB

Daily incremental loads incur only the incremental copy cost.

## Key takeaways for on-premises scenarios

- The **On-premises Data Gateway itself is free**; there's no per-node or per-VM charge.
- **Fabric capacity consumption** of the Data Factory workload drives all costs.
- Pricing meters are **identical to cloud-based sources** (Data Movement and Data Movement – Incremental copy).
- Gateway placement and sizing affect **performance and throughput**, but not the billing model.
