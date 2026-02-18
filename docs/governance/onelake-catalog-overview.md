---
title: OneLake catalog overview
description: Learn about the Microsoft Fabric's OneLake catalog and the capabilities it offers.
author: msmimart
ms.author: mimart
ms.reviewer: yaronc
ms.topic: overview
ms.date: 02/18/2026
#customer intent: As data engineer, data scientist, analyst, decision maker, or business user, I want to learn about the OneLake catelog and the capabilities it offers.
---

# OneLake catalog overview

OneLake catalog is a centralized place that helps you find, explore, and use the Fabric items you need, and govern the data you own. The catalog is embedded in Microsoft Teams, Microsoft Excel, and Microsoft Copilot Studio, so users can discover and act on items directly from these applications. It features three tabs:

* **[Explore tab](./onelake-catalog-explore.md)**: The explore tab has an items list with an in-context item details view that makes it possible to browse through and explore items without losing your list context. It provides domain and subdomain scoping, advanced filters and tags, endorsements, workspace navigation, rich metadata (lineage, permissions, monitoring), subitem exploration, and Copilot-generated summaries for semantic models. Supported item types include lakehouses, warehouses, databases, and mirrored items. By default, the OneLake catalog opens on the Explore tab. Along with the OneLake catalog, you can open and work across multiple workspaces side by side using the [object explorer](../fundamentals/fabric-home.md#multitask-with-tabs-and-object-explorer).

* **[Govern tab](./onelake-catalog-govern.md)**: The Govern tab provides insights into your data governance posture across Fabric. It includes curation completeness, endorsements, sensitivity labels, usage patterns, and Data Loss Prevention coverage, with tenant-wide visibility across items, workspaces, capacities, and domains. Copilot-assisted exploration and customizable reports are available.

* **[Secure tab](./secure-your-data.md)**: The Secure tab centralizes security management by providing a unified view of workspace roles and OneLake security roles across items. It enables admins to audit workspace access and OneLake security roles, and manage Row-Level Security (RLS) and Column-Level Security (CLS) from a single location. Related previews include granular OneLake security APIs and fine-grained read/write access.

## Open the OneLake catalog

To open the OneLake catalog, select the OneLake icon in the Fabric navigation pane. Select the tab you're interested if it isn't displayed by default.

:::image type="content" source="./media/onelake-catalog-overview/onelake-catalog-overview-general-view.png" alt-text="Screenshot showing the OneLake catalog." lightbox="./media/onelake-catalog-overview/onelake-catalog-overview-general-view.png":::

## Related content

* [Discover and explore Fabric items in the OneLake catalog](./onelake-catalog-explore.md)
* [View item details](./onelake-catalog-item-details.md)
* [Govern your data in Fabric](./onelake-catalog-govern.md)
* [Endorsement](./endorsement-overview.md)
* [Fabric domains](./domains.md)
* [Lineage in Fabric](./lineage.md)
* [Monitor hub](../admin/monitoring-hub.md)
