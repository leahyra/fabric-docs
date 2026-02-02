---
title: Modern Evaluator for Dataflow Gen2 with CI/CD
description: Boost Dataflow Gen2 with CI/CD performance with the Modern Evaluator—faster query execution, scalable workflows, and support for top connectors.
author: ptyx507x
ms.author: miescobar
ms.reviewer: whhender
ms.topic: how-to
ms.date: 09/15/2025
ms.custom: dataflows
---

# Modern Evaluator for Dataflow Gen2 with CI/CD (Preview)

The Modern Query Evaluation Engine (also known as the "Modern Evaluator") is a new preview feature for Dataflow Gen2 (with CI/CD support) in Microsoft Fabric. It provides a new query execution engine running on .NET core version 8, which can significantly improve the performance of dataflow runs in some scenarios.

Dataflows running the modern evaluator could potentially see some of these key benefits:

- **Faster dataflow execution**: The modern engine can substantially reduce query evaluation time. Many dataflows run noticeably faster, enabling you to refresh data more frequently or meet tight refresh windows.

- **More efficient processing**: The engine is optimized for efficiency, using improved algorithms and a modern runtime. This means it can handle complex transformations with less overhead, which helps maintain performance as your data volume grows.

- **Scalability and reliability**: By speeding up execution and reducing bottlenecks, the Modern Evaluator helps dataflows scale to larger volumes with greater stability. Customers can expect more consistent refresh durations and fewer timeout issues on large dataflows when using the new engine.

## How to enable the Modern Evaluator

> [!NOTE]
> The Modern Evaluator is enabled by default in new Dataflow Gen2 (CI/CD) items.
> If you encounter any issues, you can disable the option to fall back to the standard evaluation engine.

Follow these steps to turn on the Modern Query Evaluation Engine for a dataflow:

1. **Open your dataflow for editing**: In Fabric Data Factory, navigate to your Dataflow Gen2 (CI/CD) item and open it in the Power Query editor.

1. **Go to Options (Scale settings)**: In the dataflow editor, select the Options menu. In the Options dialog, select on the Scale tab.

1. **Enable the Modern Evaluator**: Find the setting for Modern query evaluation engine (Preview). Turn this option On (check or toggle it).

    :::image type="content" source="media/dataflow-gen2-modern-evaluator/modern-evaluator-option.png" alt-text="Screenshot of the options dialog in a Dataflow Gen2 with CI/CD displaying the modern query evaluator setting." lightbox="media/dataflow-gen2-modern-evaluator/modern-evaluator-option.png":::

1. **Save and run**: Save the dataflow settings. The next time you run the dataflow, it will use the Modern Evaluator for supported connectors.

## Performance considerations

When using modern evaluation engine, you should observe faster refresh times especially for data-intensive flows. For example, data transformations that previously took an hour might complete in roughly half the time with the Modern Evaluator enabled (actual results vary based on your scenarios). This performance boost helps in scenarios such as:

- **Large data volumes**: When dealing with millions of rows or large files, the new engine’s optimizations can shorten processing time and reduce memory usage.

- **Complex transformations**: Dataflows with many transformation steps or heavy operations (like joins across large tables) benefit from the engine’s improved execution plan, leading to smoother and faster completion.

- **Frequent run schedules**: If your dataflows run multiple times a day, the time savings per refresh accumulate, allowing you to deliver up-to-date data to users more quickly.

## Supported connectors

The Modern Query Evaluation Engine supports a varierty of data connectors. Ensure your dataflow’s data sources are among the supported types to take advantage of the new engine. Currently supported connectors include:

- Acterys
- Adobe Analytics
- ADP Analytics
- Anaplan
- Aptix Insights
- Asana
- Assemble Views
- Autodesk Construction Cloud
- Automation Anywhere
- Automy Data Analytics
- [Azure Blob Storage](connector-azure-blob-storage-overview.md)
- Azure Cost Management
- [Azure Data Explorer (Kusto)](connector-azure-data-explorer.md)
- [Azure Data Lake Storage Gen2](connector-azure-data-lake-storage-gen2-overview.md)
- Azure Resource Graph
- AzureTables
- BI 360
- BitSightSecurityRatings
- Bloomberg
- BQE Core
- Building Connected
- CCH Tagetik
- CData Connect Cloud
- Cds
- Celonis
- Cherwell
- CloudBluePSA
- Cognite
- CogniteDataSource
- CustomerInsights
- DCWInsights
- DeltaSharing
- Dynamics 365 Business Central
- DynatraceGrail
- Eduframe
- Emigo
- EntersoftBusinessSuite
- EQuIS
- eWayCRM
- Fabric AI Functions
- [Fabric Lakehouse](connector-lakehouse-overview.md)
- [Fabric Warehouse](connector-data-warehouse-overview.md)
- FactSet Analytics
- FactSet RMS
- Funnel
- Google Analytics
- Google Sheets
- HexagonSmartApi
- IndustrialAppStore
- InformationGrid
- Intune
- inwink
- JamfPro
- Kognitwin
- kxkdbinsightsenterprise
- LEAP
- Linkar
- LinkedIn Learning
- Microstrategy Dataset
- [OData](connector-odata-overview.md)
- OneStream
- Paxata
- PlanviewOKR
- PlanviewProjectplace
- [Power Platform Dataflows](connector-dataflows-overview.md)
- Profisee
- Quickbase
- Roamler
- Salesforce
- Samsara
- SDMX
- [SharePoint folder](connector-sharepoint-folder-overview.md)
- [SharePoint Online List](connector-sharepoint-online-list-overview.md)
- ShortcutsBI
- SiteImprove
- SmartsheetGlobal
- SoftOneBI
- SolarwindsServiceDesk
- Spigit
- SumTotal
- Supermetrics
- SurveyMonkey
- TeamDesk
- Tenforce
- Usercube
- Vena
- VesselInsight
- VivaInsights
- [Web](connector-web-overview.md)
- WebtrendsAnalytics
- Windsor
- Witivio
- Wrike
- Zendesk Data
- Zoho Creator
- Zucchetti

If a dataflow uses connectors not in this list, those queries continue to run with the standard (legacy) engine. Support for more connectors will expand over time as the feature moves toward general availability.