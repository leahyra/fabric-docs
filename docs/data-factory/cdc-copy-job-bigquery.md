---
title: Change data capture from Google BigQuery using Copy job
description: This tutorial guides you through how to use CDC in copy job to move data from Google BigQuery.
ms.reviewer: yexu
ms.topic: tutorial
ms.date: 02/10/2026
ms.search.form: copy-job-tutorials
ms.custom: copy-job, ai-generated, ai-assisted
---

# Change data capture from Google BigQuery using Copy job (Preview)

This tutorial describes how to use change data capture (CDC) in Copy job to efficiently replicate data changes from Google BigQuery to a destination. This ensures your destination data stays up to date automatically.

## Prerequisites

Before you begin, ensure you have the following:

- A Google Cloud Platform (GCP) account with a BigQuery project.
- Appropriate permissions in BigQuery to enable change data capture.
- A Fabric workspace with the necessary permissions to create a Copy job.
- A destination data store supported by Copy job for CDC replication.

### Enable change data capture in Google BigQuery

Google BigQuery uses change data capture through table change streams. Follow these steps to enable CDC on your BigQuery tables:

1. Sign in to the [Google Cloud Console](https://console.cloud.google.com/).

1. Navigate to your BigQuery project and select the dataset containing the tables you want to track.

1. Enable change data capture on a table using one of the following methods:

   **Using the BigQuery Console:**
   
   1. Select the table you want to enable CDC on.
   1. Select **Edit schema**.
   1. Under **Advanced options**, enable **Change data capture**.
   1. Configure the change history retention period (default is 7 days, maximum is 90 days).
   1. Select **Save**.

   **Using SQL (DDL):**
   
   Create a new table with CDC enabled:

   ```sql
   CREATE TABLE `project_id.dataset_id.table_name`
   (
     column1 STRING,
     column2 INT64,
     column3 TIMESTAMP
   )
   OPTIONS(
     max_staleness=INTERVAL "0" DAY,
     enable_change_history=TRUE
   );
   ```

   Or alter an existing table to enable CDC:

   ```sql
   ALTER TABLE `project_id.dataset_id.table_name`
   SET OPTIONS (
     max_staleness=INTERVAL "0" DAY,
     enable_change_history=TRUE
   );
   ```

   Replace `project_id`, `dataset_id`, and `table_name` with your actual project, dataset, and table names.

1. Verify that change data capture is enabled. Run the following query:

   ```sql
   SELECT
     table_catalog,
     table_schema,
     table_name,
     option_name,
     option_value
   FROM
     `project_id.dataset_id.INFORMATION_SCHEMA.TABLE_OPTIONS`
   WHERE
     table_name = 'table_name'
     AND option_name = 'enable_change_history';
   ```

   The query should return `TRUE` for the `option_value` if CDC is enabled.

> [!NOTE]
> - BigQuery change data capture tracks INSERT, UPDATE, and DELETE operations.
> - The change history retention period determines how long change data is available. Ensure this period is longer than your scheduled Copy job interval.
> - Change data capture might incur additional storage costs in BigQuery.
> - You need the `bigquery.tables.update` permission to enable CDC on tables.

For more information about BigQuery change data capture, see [Google BigQuery Documentation - Change data capture](https://cloud.google.com/bigquery/docs/change-data-capture).

## Create a Copy job with Google BigQuery CDC

Complete the following steps to create a new Copy job to ingest data from Google BigQuery via CDC to a destination:

1. Select **+ New Item**, choose the **Copy job** icon, name your Copy job, and select **Create**.

   :::image type="content" source="media/copy-job/create-new-copy-job.png" alt-text="Screenshot showing where to navigate to the Data Factory home page and create a new Copy job.":::

1. Choose the data store to copy data from. In this example, choose **Google BigQuery**.

   :::image type="content" source="media/copy-job/choose-data-source.png" alt-text="Screenshot showing where to choose a data source for the Copy job.":::

1. Enter your **connection details** and **credentials** to connect to Google BigQuery. You need to provide your Google Cloud project ID and authentication credentials.

   :::image type="content" source="media/copy-job/enter-credentials-data-source.png" alt-text="Screenshot showing where to enter credentials.":::

1. You should have clear visibility of which source tables have CDC enabled. Select the **tables with CDC enabled** to copy.

   Tables with CDC enabled:
   :::image type="content" source="media/copy-job/cdc-table-icon.png" alt-text="Screenshot showing cdc table icon.":::

   Tables without CDC enabled:
   :::image type="content" source="media/copy-job/none-cdc-table-icon.png" alt-text="Screenshot showing none cdc table icon.":::

   :::image type="content" source="media/copy-job/select-cdc-tables.png" alt-text="Screenshot showing where to select cdc tables for the Copy job.":::

1. Select your destination store. Choose a destination that supports CDC operations for optimal CDC replication.

   :::image type="content" source="media/copy-job/select-destination-store.png" alt-text="Screenshot showing where to select the destination store for the Copy job.":::

   > [!NOTE]
   > Based on the supported connectors, Google BigQuery as a CDC source can replicate to destinations that support incremental copy. Review the [supported connectors for CDC](cdc-copy-job.md#supported-connectors) to choose an appropriate destination.

1. Configure the copy settings. For Google BigQuery CDC sources, the Copy job automatically detects changes and applies them to the destination.

1. Select **Incremental copy** and you'll see no Incremental column for each table is required to be input to track changes.

   > [!NOTE]
   > Copy job initially performs a full load and subsequently carries out incremental copies in subsequent runs via CDC.

   :::image type="content" source="media/copy-job/copy-job-cdc-mode.png" alt-text="Screenshot showing where to select the CDC.":::

1. Review the job summary, set the run option to on schedule, and select **Save + Run**.

   :::image type="content" source="media/copy-job/cdc-review-save.png" alt-text="Screenshot showing where to review and save the newly created Copy job.":::

   > [!NOTE]
   > Ensure that your BigQuery change history retention period is longer than the interval between scheduled runs; otherwise, the changed data might be lost if not processed within the retention period.

1. Your copy job starts immediately. The first run copies an initial full snapshot.

   :::image type="content" source="media/copy-job/monitor-cdc-initial-run.png" alt-text="Screenshot showing the Copy job panel where you can monitor initial full snapshot.":::

1. Update your source tables in BigQuery by inserting, updating, or deleting rows.

1. Run the Copy job again to capture and replicate all changes, including inserted, updated, and deleted rows, to the destination.

   :::image type="content" source="media/copy-job/monitor-cdc-second-run.png" alt-text="Screenshot showing the Copy job panel where you can monitor capturing and replicating all changes.":::

## Next steps

- [Change data capture (CDC) in Copy job](cdc-copy-job.md)
- [What is the Copy job in Data Factory](what-is-copy-job.md)
- [How to monitor a Copy job](monitor-copy-job.md)
- [Google BigQuery connector overview](connector-google-bigquery-overview.md)
