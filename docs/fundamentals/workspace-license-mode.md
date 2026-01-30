---
title: Reassign a workspace to a different capacity
description: This article explains the meanings of workspace types and how to reassign the workspace to a different capacity.
author: SnehaGunda
ms.author: sngun
ms.reviewer: liud
ms.topic: overview
ms.date: 01/29/2026
ai-usage: ai-assisted
#customer intent: As workspace admin, I want to understand what the workspace type options are and how to reassign the workspace to a different capacity.
---
# Reassign a workspace to a different capacity

> [!NOTE]
> The term "license mode" has been renamed to "workspace type" in the Microsoft Fabric UI and documentation. This is a terminology change only—there are no functional changes.

When you create a workspace, it's assigned to a [capacity](../enterprise/licenses.md#capacity). The capacity that new workspaces are assigned to by default is determined by the capacity type and/or by the configuration of Fabric or capacity administrators. After a workspace is created, you can reassign it to another available capacity if you have the [workspace admin role](roles-workspaces.md) and the capacity admin or capacity contributor role. You reassign workspaces to other capacities by changing the workspace type.

## Workspace types and capacity types

Workspace types refer to different capacity types. Workspace types are now grouped into two categories:

### Power BI workspace types

These workspace types are optimized for Power BI workloads and are hosted on system reserved capacity or per-user shared pools:

- **Power BI Pro**: Basic Power BI features for collaboration on reports, dashboards, and scorecards.
- **Power BI Premium Per User (PPU)**: Access to most Power BI Premium features on a per-user basis.
- **Power BI Embedded**: Power BI content embedded in applications using Azure capacity (A or EM SKUs).

### Fabric workspace types

These workspace types support all Microsoft Fabric experiences and are hosted on a capacity that has been purchased or is a trial:

- **Fabric capacity**: Full Fabric capabilities using F SKUs.
- **Fabric Trial**: Try Fabric features for 60 days using Trial SKUs.
- **Power BI Premium**: Power BI Premium capacity using P SKUs (supports all Fabric experiences when Fabric is enabled).

These capacities are divided into stock keeping units (SKUs). Each SKU provides a different number of capacity units (CUs), which are used to calculate the capacity's compute power.

The Fabric workspace type options are related to several [capacity types](../admin/capacity-settings.md?tabs=power-bi-premium#view-your-capacity):

* **Premium capacity**: Premium capacity refers to a capacity that was bought as part of a Power BI Premium subscription. These capacities use P SKUs.

    > [!NOTE]
    > Premium capacities are transitioning to Fabric. For more information, see [Power BI Premium transition to Microsoft Fabric](/power-bi/enterprise/service-premium-faq#power-bi-premium-transition-to-microsoft-fabric).

* **Embedded**: Embedded refers to capacity that was bought as part of a Power BI Embedded subscription. These capacities use A or EM SKUs.

* **Trial**: Refers to a Microsoft Fabric trial capacity. These capacities use Trial SKUs.

* **Fabric capacity**: Fabric capacity refers to  Microsoft Fabric capacity. These capacities use F SKUs.

## Reassign a workspace to a different capacity

You can reassign a workspace to a different capacity via workspace types in the workspace settings.

1. Open the workspace settings and choose **License info** (or **Workspace type** in the updated UI). Information about the current workspace type is displayed.

1. Select **Edit**. The list of available workspace types appears.

1. Select the desired workspace type and specify the capacity the workspace will be hosted on.

    > [!NOTE]
    > You can choose specific capacities only when you select one of the Fabric workspace types. Fabric automatically reserves shared capacity for Power BI workspace types.

    > [!IMPORTANT]
    > The types of items contained in the workspace can affect the ability to change workspace types and/or move the workspace to a capacity in a different region. See [Moving data around](../admin/portal-workspaces.md#moving-data-around) for detail.

## Related content

* [Fabric licenses](/power-bi/enterprise/service-admin-licensing-organization#fabric-licenses)
* [Moving data around](../admin/portal-workspaces.md#moving-data-around)
* [Manage your Fabric capacity settings](../admin/capacity-settings.md?tabs=power-bi-premium#capacity-settings)
