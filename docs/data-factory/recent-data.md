---
title: Recent data in Fabric (Preview)
description: Learn how to use the Recent data module to quickly access your most frequently used tables, files, folders, databases, and sheets in Microsoft Fabric.
author: xupzhou
ms.author: xupzhou
ms.service: fabric
ms.subservice: data-factory
ms.topic: how-to
ms.date: 02/07/2026

#customer intent: As a data engineer, I want to quickly access my recently used data sources so that I can reduce navigation time when working with data in Fabric.
---

# Recent data in Fabric (Preview)

Recent data is a feature that helps you work more efficiently by providing quick access to your most frequently used data items. The feature remembers the specific items you've worked with—including tables, files, folders, databases, and sheets, etc., so you can return to them without navigating through connection dialogs and folder structures.


This feature is currently in Preview in Data flow gen2 and will be avilable in more Fabric artifacts in the future.
Before you begin, make sure you have the following setup:

- A Microsoft Fabric tenant account with an active subscription. [Create a free account](https://www.microsoft.com/microsoft-fabric).
- A Microsoft Fabric enabled workspace. [Create a workspace](https://learn.microsoft.com/fabric/fundamentals/create-workspaces).
- A Dataflow Gen2 item, or permissions to create one. [Create a Dataflow Gen2](https://learn.microsoft.com/fabric/data-factory/create-first-dataflow-gen2).

## Supported recent items

Recent data tracks the following types of data items you work with:

- **Table**: Tables from databases or data sources
- **Sheet**: Worksheets from Excel files 
- **Database**: Database instances from various data sources
- **Schema**: Database schemas containing collections of related tables
- **Folder**: Folders containing files or other data items. Folders in Lakehouse from Fabric workspaces.
- **View**: Database views that present data from one or more tables
- **Function**: Custom or built-in functions from data sources

When you access any of these item types in your Fabric hosts, they appear in your Recent data list for quick access in future sessions.

## Access recent data from the Power Query ribbon

You can access your recent data directly from the Power Query ribbon when working in a Dataflow Gen2.

1. In your Fabric workspace, open an existing Dataflow Gen2 or create a new one.

1. In the Power Query editor, select **Recent data** from the ribbon.

1. Review the list of recently used items. The list includes tables, files, folders, databases, and sheets from your previous dataflow sessions.

1. Select an item to load it into the Power Query editor. The data loads immediately, ready for transformation.

 :::image type="content" source="media/recent-data/RecentDataPQRibbon.jpg" alt-text="Screenshot showing how to access recent-data in Power Query ribbon":::

## Access recent data from Modern Get Data

You can also access recent data through the Modern Get Data experience when adding data sources to your dataflow.

1. In your Fabric workspace, open an existing Dataflow Gen2 or create a new one.

1. In the Power Query editor, select **Get data**.

1. In the Modern Get Data dialog, select the **Recent data** module.

1. Review the list of recently used items. The list includes tables, files, folders, databases, and sheets from your previous dataflow sessions.

1. Select an item to load it into the Power Query editor. The data loads immediately, ready for transformation.

   :::image type="content" source="media/recent-data/RecentDataInMGD.jpg" alt-text="Screenshot showing how to access recent-data inside Modern Get Data":::

## Browse location for related items

After accessing Recent data, you can use the Browse location option to explore other items in the same folder or database.

1. After loading an item from Recent data, select **Browse location** in the Power Query editor.

1. The navigation pane displays other tables, files, or items available at the same location.

1. Select additional items to include in your dataflow. Each item you select creates a new query in the Power Query editor.

1. Apply transformations, merge queries, or configure your dataflow as needed.

This option helps you discover related data without leaving the Power Query editor or reconfiguring connections.

## Related content

- [What is Data Factory in Microsoft Fabric?](https://learn.microsoft.com/en-us/fabric/data-factory/data-factory-overview)
- [Create your first Dataflow Gen2](https://learn.microsoft.com/en-us/fabric/data-factory/create-first-dataflow-gen2)

