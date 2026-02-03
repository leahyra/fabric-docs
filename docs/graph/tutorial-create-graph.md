---
title: "Tutorial: Create a graph"
description: Learn how to create a graph by loading data from OneLake into your graph model.
ms.topic: tutorial
ms.date: 02/02/2026
author: lorihollasch
ms.author: loriwhip
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Create a graph
---

# Tutorial: Create a graph

[!INCLUDE [feature-preview](./includes/feature-preview-note.md)]

In this tutorial step, you learn how to load data from OneLake into your graph model. This step connects your graph to the underlying data that you use to create nodes and edges.

## Load data into the graph

To load data into your graph from OneLake, follow these steps:

1. In your graph model, select **Get data**.
1. From the OneLake catalog, select the data from Fabric that you want to use in your graph.

   :::image type="content" source="./media/quickstart/graph-data-select.png" alt-text="Screenshot showing the data selection menu in OneLake." lightbox="./media/quickstart/graph-data-select.png":::

1. Select **Connect**.
1. Select the data tables you want to use. In this tutorial, select all the Adventure Works tables you previously loaded into your lakehouse. Then select **Load**.

You should now see the data available for use in your graph.

   :::image type="content" source="./media/quickstart/graph-data-view.png" alt-text="Screenshot showing the data view in the graph model." lightbox="./media/quickstart/graph-data-view.png":::

## Supported data types

Graph in Microsoft Fabric currently supports the following data types:

| Data type | Description |
| --------- | ----------- |
| Boolean | Values are `true` and `false` |
| Double | Values are 64-bit floating point numbers |
| Integer | Values are 64-bit signed integers |
| String | Values are Unicode character strings |
| Zoned DateTime | Values are timestamps together with a timeshift for the time zone |

## Next step

> [!div class="nextstepaction"]
> [Add nodes to your graph](tutorial-model-nodes.md)
