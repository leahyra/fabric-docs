---
title: "Tutorial: Add nodes to your graph"
description: Learn how to add nodes to your graph model in Microsoft Fabric.
ms.topic: tutorial
ms.date: 02/02/2026
author: lorihollasch
ms.author: loriwhip
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Add nodes to your graph
---

# Tutorial: Add nodes to your graph

[!INCLUDE [feature-preview](./includes/feature-preview-note.md)]

In this tutorial step, you learn how to add nodes to your graph model. Nodes represent entities in your data, such as customers, products, or orders. Later, you connect these nodes with edges to define relationships between them.

## Adventure Works node mappings

In the Adventure Works data model, create nodes for each entity. The following table shows the node mappings. Use this information to add nodes to your graph:

| Label              | Mapping table                       | ID of mapping column |
| ------------------ | ----------------------------------- | -------------------- |
| Customer           | adventureworks_customers            | CustomerID_K         |
| Employee           | adventureworks_employees            | EmployeeID_K         |
| Order              | adventureworks_orders               | SalesOrderDetailID_K |
| ProductCategory    | adventureworks_productcategories    | CategoryID_K         |
| Product            | adventureworks_products             | ProductID_K          |
| ProductSubcategory | adventureworks_productsubcategories | SubcategoryID_K      |
| VendorProduct      | adventureworks_vendorproduct        | ProductID_FK         |
| Vendor             | adventureworks_vendors              | VendorID_K           |

## Add nodes to the graph

To add nodes to your graph, follow these steps:

1. In your graph model, select **Add node** to add a new node to your graph.
1. In the **Add node to graph** dialog, enter a **Label** name and select the appropriate **Mapping table** and **ID** of the mapping column.

    :::image type="content" source="./media/quickstart/node-add-customer.png" alt-text="Screenshot showing the Add node to graph dialog." lightbox="./media/quickstart/node-add-customer.png":::

    For example, for the first node, use these values:
    - **Label**: Customer
    - **Mapping table**: *adventureworks_customers*
    - **ID** of the mapping column: CustomerID_K

1. Select **Confirm** to add the node to your graph.
1. Repeat the process for all other nodes in the Adventure Works data model:

    | Label              | Mapping table                       | ID of mapping column |
    | ------------------ | ----------------------------------- | -------------------- |
    | Employee           | adventureworks_employees            | EmployeeID_K         |
    | Order              | adventureworks_orders               | SalesOrderDetailID_K |
    | ProductCategory    | adventureworks_productcategories    | CategoryID_K         |
    | Product            | adventureworks_products             | ProductID_K          |
    | ProductSubcategory | adventureworks_productsubcategories | SubcategoryID_K      |
    | VendorProduct      | adventureworks_vendorproducts       | ProductID_K          |
    | Vendor             | adventureworks_vendors              | VendorID_K           |

1. You should see all the nodes represented in your graph.

    :::image type="content" source="./media/quickstart/node-add-completed.png" alt-text="Screenshot showing all of the nodes added to the graph." lightbox="./media/quickstart/node-add-completed.png":::

1. Select **Save** to save your progress.

Now that you added nodes to your graph, the next step is to add edges to define the relationships between these nodes.

## Next step

> [!div class="nextstepaction"]
> [Add edges to your graph](tutorial-model-edges.md)
