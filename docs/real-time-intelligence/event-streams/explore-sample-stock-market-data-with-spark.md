---
title: Explore sample Stock Market data using Fabric Eventstream and Spark Structured Streaming
description: This article provides instruction on how to explore the sample Stock Market data in Fabric Eventstream using Spark Structured Streaming.
ms.reviewer: spelluru
ms.author: arindamc
author: arindamc
ms.topic: tutorial
ms.custom: sfi-image-nochange
ms.date: 12/22/2025
ms.search.form: Eventstreams Tutorials
---

# Tutorial: Explore and transform sample bike-sharing data in Fabric Eventstreams using Spark Structured Streaming

Eventstream is a streaming platform that enables you to ingest, transform, and route data streams to a variety of destinations including Lakehouse, Eventhouse, Activator and Derived Streams. In this tutorial, we explore how you can use Spark Structured Streaming in a Notebook to process the streaming sample data. 

## Prerequisites

* Access to a workspace with Contributor or above permissions where your Eventstream is located.

## Create an eventstream 
Follow these steps to create an eventstream in your workspace:

[!INCLUDE [create-an-eventstream](./includes/create-an-eventstream.md)]


## Add sample stock market data to an Eventstream

1. On the Eventstream canvas, expand **New source** and select **Sample data**. Give a name to the source and select **Stock Market (high data-rate)** as the sample data.

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/select-stock-market-sample.png" alt-text="Screenshot that shows how to add stock market sample data in eventstream." lightbox="./media/explore-sample-stock-data-with-spark/select-stock-market-sample.png":::

2. You can preview the data in eventstream to verify if the sample stock market data is added successfully.

## Create a Fabric Notebook and connect to an Eventstream

1. From your workspace view, click on **New item** and create a new **Notebook**. Enter a name for the Notebook.

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/create-new-notebook.png" alt-text="Screenshot that shows how to create a new Notebook." lightbox="./media/explore-sample-stock-data-with-spark/create-new-notebook.png":::

2. In the left Explorer pane, click on **Add data item**, and select the option to add **From Real-Time Hub**. This action opens a new dialog box where you will be able to select an existing eventstream or create a new one.

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/add-from-real-time-hub.png" alt-text="Screenshot that shows the Notebook explorer pane from where the Real-time hub can be selected." lightbox="./media/explore-sample-stock-data-with-spark/add-from-real-time-hub.png":::

3. Search for and select the eventstream that you want to connect to.

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/select-sample-stock-eventstream.png" alt-text="Screenshot that shows the list of evenstreams to choose from." lightbox="./media/explore-sample-stock-data-with-spark/select-sample-stock-eventstream.png":::

4. After selecting an eventstream, you can preview the data. Click **Next** when you are ready.

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/select-stock-sample-preview-next.png" alt-text="Screenshot that shows how to preview the data in the selected eventstream." lightbox="./media/explore-sample-stock-data-with-spark/select-stock-sample-preview-next.png":::

5. Back in the Notebook, click on your Eventstream in the **Explorer** pane, right-click on the default stream and choose **Read with Spark**.  

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/notebook-read-with-spark.png" alt-text="Screenshot that shows how to select the option to read an eventstream with Spark." lightbox="./media/explore-sample-stock-data-with-spark/notebook-read-with-spark.png":::

6. Notebook automatically generates the **Spark Structured Streaming** in **PySpark**. You can see the eventstream item and data source ids that the Notebook retrieved for you. You can also review the code that reads from the eventstream, and writes it out to console.

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/spark-auto-code-snippet-and-run.png" alt-text="Screenshot that shows the automatically generated PySpark code." lightbox="./media/explore-sample-stock-data-with-spark/spark-auto-code-snippet-and-run.png":::

5. Finally, when you are ready, click on **Run all** to start the Streaming job.

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/spark-notebook-data-preview.png" alt-text="Screenshot that shows the console output from the running streaming job." lightbox="./media/explore-sample-stock-data-with-spark/spark-notebook-data-preview.png":::

## Open the Eventstream to see the new Notebook destination

The Spark Notebook has now been added to the Eventstream as a destination. Review this by opening the eventstream.

    :::image type="content" source="./media/explore-sample-stock-data-with-spark/eventstream-new-notebook-destination.png" alt-text="Screenshot that shows the new Notebook added to the eventstream as a destination." lightbox="./media/explore-sample-stock-data-with-spark/eventstream-new-notebook-destination.png":::

Congratulations!

You have successfully completed the tutorial on exploring streaming stock market data using Eventstream and Spark Structured Streaming with Notebooks. Keep exploring Eventstream's capabilities and continue your journey with real-time data processing.

## Related content

To learn more about ingesting and processing data streams using Eventstream, check out the following resources:

- [Introduction to Microsoft Fabric event streams](./overview.md)
- [Ingest, filter, and transform real-time events and send them to a Microsoft Fabric lakehouse](./transform-and-stream-real-time-events-to-lakehouse.md)
