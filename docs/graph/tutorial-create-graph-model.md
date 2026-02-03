---
title: "Tutorial: Create a graph model"
description: Learn how to create a graph model in Microsoft Fabric.
ms.topic: tutorial
ms.date: 02/02/2026
author: lorihollasch
ms.author: loriwhip
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Create a graph model
---

# Tutorial: Create a graph model

[!INCLUDE [feature-preview](./includes/feature-preview-note.md)]

In this tutorial step, you learn how to create a graph model in Microsoft Fabric. A graph model is the foundation for building your graph and defines the structure of your nodes and edges.

This step assumes you already [loaded the sample data](tutorial-load-data.md) into a lakehouse within your workspace.

To create a graph model in Microsoft Fabric, follow these steps:

1. In [Microsoft Fabric](https://fabric.microsoft.com/), select the workspace where you want to create the graph model.
1. Select **+ New item**.
1. Select **Analyze and train data** > **Graph model (preview)**.

    :::image type="content" source="./media/quickstart/new-item-graph-model.png" alt-text="Screenshot showing the new item menu with the option to select Graph model (preview)." lightbox="./media/quickstart/new-item-graph-model.png":::

    > [!TIP]
    > Alternatively, enter "graph" in the search box and press **Enter** to search for graph items.

1. Enter a name for your graph model (for example, "AdventureWorksGraph") and select **Create**.

After creating the graph model, you're taken to the graph view where you can see **Save**, **Get data**, **Add node**, and **Add edge** buttons. In the next step, you'll load data into your graph.

## Next step

> [!div class="nextstepaction"]
> [Create a graph](tutorial-create-graph.md)
