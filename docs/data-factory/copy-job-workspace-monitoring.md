---
title: Workspace Monitoring for Copy Job in Microsoft Fabric
description: Learn how workspace monitoring captures Copy job run details and activity-level logs for diagnostics and performance analysis using KQL.
ms.reviewer: yexu
ms.date: 02/14/2026
ms.topic: how-to
ai-usage: ai-assisted
---

# Workspace monitoring for Copy job in Microsoft Fabric

Workspace monitoring gives you log-level visibility into Copy job runs in a workspace. It stores execution logs in a monitoring eventhouse so you can query and analyze them using KQL (Kusto Query Language). Copy job produces two monitoring tables: **CopyJobRunDetailsLogs** for job-level details and **CopyJobActivityRunDetailsLogs** for per-activity run details with source and destination table mappings.

## Prerequisites

Before you can use workspace monitoring for Copy job, you need to enable workspace monitoring in your workspace. For steps on how to enable it, see [Enable workspace monitoring in Microsoft Fabric](workspace-monitoring.md).

## CopyJobRunDetailsLogs

The **CopyJobRunDetailsLogs** table captures run-level details for each Copy job execution. Use this table to monitor overall run status, throughput, and data movement metrics.

### CopyJobRunDetailsLogs schema

The following table describes the schema of `CopyJobRunDetailsLogs`:

| **Column name** | **Column type** | **Description** |
|----|----|----|
| Timestamp | datetime | The timestamp (UTC) when the log entry was generated. |
| ItemId | string | Unique ID of the Copy job item. |
| ItemKind | string | Type of item that's logging the operation. |
| ItemName | string | The name of the Copy job item. |
| WorkspaceId | string | Unique identifier of the Fabric workspace that contains the item. |
| WorkspaceName | string | The name of the workspace that contains the item. |
| CapacityId | string | Unique identifier of the capacity that hosts the item. |
| CapacityName | string | The name of the capacity that hosts the item. |
| Region | string | The Azure region where the operation was executed. |
| Identity | string | The identity associated with the operation. |
| CustomerTenantId | string | The tenant ID of the customer. |
| WorkspaceMonitoringTableName | string | The name of the table where records belong. |
| DurationMs | long | Amount of time in milliseconds taken by the job run. |
| Status | string | Status of the Copy job run. |
| RunId | string | Unique identifier of the job run. |
| CopyJobMode | string | The mode of the Copy job (for example, full or incremental). |
| CopyJobTriggerType | string | How the Copy job was triggered (for example, on demand or scheduled). |
| ScheduledTime | datetime | Scheduled start time for the job run. |
| StartTime | datetime | Actual start time of the job run. |
| EndTime | datetime | Actual end time of the job run. |
| SourceConnectionType | string | The connection type of the data source. |
| SourceName | string | The name of the data source. |
| DestinationConnectionType | string | The connection type of the data destination. |
| DestinationName | string | The name of the data destination. |
| RowsRead | long | Number of rows read from the source. |
| RowsWritten | long | Number of rows written to the destination. |
| FilesRead | long | Number of files read from the source. |
| FilesWritten | long | Number of files written to the destination. |
| DataReadKB | long | Amount of data read in kilobytes. |
| DataWrittenKB | long | Amount of data written in kilobytes. |
| ThroughputBytesPerSec | long | Data throughput in bytes per second. |

### Example KQL queries for CopyJobRunDetailsLogs

#### Summarize Copy job runs by status

```kql
CopyJobRunDetailsLogs
| summarize count() by Status
```

#### Identify failed Copy job runs

```kql
CopyJobRunDetailsLogs
| where Status == "Failed"
| order by Timestamp desc
| project Timestamp, ItemName, WorkspaceName, StartTime, EndTime, Status, SourceName, DestinationName
```

#### Analyze Copy job throughput

```kql
CopyJobRunDetailsLogs
| where Status == "Succeeded"
| project Timestamp, ItemName, DurationMs, DataReadKB, DataWrittenKB, ThroughputBytesPerSec, RowsRead, RowsWritten
| order by Timestamp desc
```

## CopyJobActivityRunDetailsLogs

The **CopyJobActivityRunDetailsLogs** table captures per-activity run details for each Copy job execution, including source and destination table mappings. Use this table to diagnose issues at the individual table mapping level and understand exactly which tables were involved in a Copy job run.

### CopyJobActivityRunDetailsLogs schema

The following table describes the schema of `CopyJobActivityRunDetailsLogs`:

| **Column name** | **Column type** | **Description** |
|----|----|----|
| Timestamp | datetime | The timestamp (UTC) when the log entry was generated. |
| ItemId | string | Unique ID of the Copy job item. |
| ItemKind | string | Type of item that's logging the operation. |
| ItemName | string | The name of the Copy job item. |
| CopyJobRunId | string | Unique identifier of the parent Copy job run. |
| WorkspaceId | string | Unique identifier of the Fabric workspace that contains the item. |
| WorkspaceName | string | The name of the workspace that contains the item. |
| CapacityId | string | Unique identifier of the capacity that hosts the item. |
| CapacityName | string | The name of the capacity that hosts the item. |
| Region | string | The Azure region where the operation was executed. |
| Identity | string | The identity associated with the operation. |
| CustomerTenantId | string | The tenant ID of the customer. |
| WorkspaceMonitoringTableName | string | The name of the table where records belong. |
| DurationMs | long | Amount of time in milliseconds taken by the activity run. |
| Status | string | Status of the activity run. |
| RunId | string | Unique identifier of the activity run. |
| ScheduledTime | datetime | Scheduled start time for the activity run. |
| StartTime | datetime | Actual start time of the activity run. |
| EndTime | datetime | Actual end time of the activity run. |
| SourceConnectionType | string | The connection type of the data source. |
| SourceType | string | The type of the data source. |
| SourceName | string | The name of the data source. |
| SourceSchemaName | string | The schema name in the data source. |
| SourceTableName | string | The table name in the data source. |
| SourceFolderPath | string | The folder path in the data source. |
| SourceFileName | string | The file name in the data source. |
| DestinationConnectionType | string | The connection type of the data destination. |
| DestinationType | string | The type of the data destination. |
| DestinationName | string | The name of the data destination. |
| DestinationSchemaName | string | The schema name in the data destination. |
| DestinationTableName | string | The table name in the data destination. |
| DestinationFolderPath | string | The folder path in the data destination. |
| DestinationFileName | string | The file name in the data destination. |
| RowsRead | long | Number of rows read from the source. |
| RowsWritten | long | Number of rows written to the destination. |
| FilesRead | long | Number of files read from the source. |
| FilesWritten | long | Number of files written to the destination. |
| DataReadKB | long | Amount of data read in kilobytes. |
| DataWrittenKB | long | Amount of data written in kilobytes. |
| ThroughputBytesPerSec | long | Data throughput in bytes per second. |
| ErrorCode | string | Error code if the activity run failed. |
| FailureType | string | The type of failure if the activity run failed. |

### Example KQL queries for CopyJobActivityRunDetailsLogs

#### View activity details for a specific Copy job run

```kql
CopyJobActivityRunDetailsLogs
| where CopyJobRunId == "<your-copy-job-run-id>"
| project Timestamp, SourceTableName, DestinationTableName, Status, DurationMs, RowsRead, RowsWritten, ErrorCode
| order by Timestamp asc
```

#### Find failed activities and their error codes

```kql
CopyJobActivityRunDetailsLogs
| where Status == "Failed"
| project Timestamp, ItemName, SourceTableName, DestinationTableName, ErrorCode, FailureType
| order by Timestamp desc
```

#### Analyze data movement per table mapping

```kql
CopyJobActivityRunDetailsLogs
| where Status == "Succeeded"
| project Timestamp, SourceTableName, DestinationTableName, RowsRead, RowsWritten, DataReadKB, DataWrittenKB, ThroughputBytesPerSec
| order by DataReadKB desc
```

## Related content

- [How to monitor a Copy job in Data Factory](monitor-copy-job.md)
- [Enable workspace monitoring in Microsoft Fabric](workspace-monitoring.md)
- [How to monitor pipeline runs](monitor-pipeline-runs.md)
