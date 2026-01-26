---
title: Deployment pipeline support for retired semantic model
description:  Find out deployment pipeline support for retired semantic models.
ms.reviewer: 
ms.author: billmath
author: billmath
ms.topic: overview
ms.custom:
ms.search.form:
ms.date: 01/26/2026
---

# Retirement of semantic model support for deployment pipelines

To improve reliability and consistency across deployment environments, Microsoft Fabric deployment pipelines will retire support for semantic models that haven't been upgraded to enhanced metadata (Git supports only the Enhanced Metadata format). This change supports strategic improvements in semantic model management, including XMLA read/write and Analysis Services migration, and ensures consistency across environments (see Using enhanced semantic model metadata). See below exempted Semantic Models of non -enhanced metadata which will remain supported.

 

>[!NOTE] 
> While this change affects Power BI semantic models, deployment pipelines are now part of the broader Microsoft Fabric platform. Microsoft Fabric unifies experiences across Power BI, Synapse, Data Factory, and other services. For consistency with platform branding, this post uses “Microsoft Fabric” in the title.

## When this will happen:

This retirement will take effect on February 12, 2026

## How this affects your organization:
Organizations using Microsoft Fabric deployment pipelines with semantic models that haven't yet been upgraded to enhanced metadata.

## What will happen:
 - Support for deploying semantic models with legacy metadata will be retired.
 - Attempting to deploy non-upgraded semantic models will result in deployment failure.
 - PBIX files (Power BI Desktop report files) opened in the latest version of Power BI Desktop are automatically upgraded to enhanced metadata.
- If a report has unapplied query changes or upgrade errors, users will see a warning and must manually upgrade the report.
- Some legacy queries may not convert correctly after upgrade, especially for SQL Server, Oracle, Teradata, and SAP HANA (High-Performance Analytic Appliance) connections. Power BI regenerates native queries at runtime for these sources, and unsupported transformations may result in errors such as:
"Unable to convert an M query in table 'Dimension City' into a native source query."

## Exemption:

Semantic Models using Live Connections  to external AS servers (aka ASLC models) are only available with non-enhanced metadata, and can't be upgraded to enhanced metadata. Microsoft Fabric deployment pipelines will continue to support these ASLC Semantic Models   

## What you can do to prepare:

Convert all source-stage semantic models from Default to Enhanced Metadata before February 2026.

## How to Detect Non-Upgraded Models

- **Deployment failure:** If a deployment fails and the error message states the semantic model wasn't upgraded, that model requires conversion.
- **Workspace check:** In the workspace, hover over ‘Open Semantic Model’ in the item’s menu (under 'More options'). If it’s grayed out and the tooltip indicates upgrade is needed, the model is probably not in Enhanced Metadata format.
 
 :::image type="content" source="media/retire-semantic-model/retire-1.png" alt-text="Diagram showing how to create your own fabric workload." lightbox="media/retire-semantic-model/retire-1.png":::

## How to Convert

**Recommended:** Republish from Power BI Desktop.
 1. Download the model from ALM source stage.
 2. Open in latest Power BI Desktop and save (converts to Enhanced).
 3. Republish to Power BI.

**Alternative:** Use XMLA Read/Write via SSMS.
1. Update existing  `compatibilityLevel` to 1520 and add `"defaultPowerBIDataSourceVersion": "powerBI_V3"` object  inside the "model" object (e.g., after the "culture" one). For details, see [Semantic model connectivity and management with the XMLA endpoint in Power BI](../../enterprise/powerbi/service-premium-connect-tools.md)

>[!NOTE]
> After the conversion is executed successfully, the Workspace check will still have the "Open Semantic Model"  grayed out. But the deployment won't fail anymore.

 
## Additional considerations

- Communicate this change to helpdesk staff. 
- Update internal documentation to reflect the new deployment requirements.
- Review known limitations and troubleshooting guidance: [Using enhanced semantic model metadata](/power-bi/connect-data/desktop-enhanced-dataset-metadata)
 

