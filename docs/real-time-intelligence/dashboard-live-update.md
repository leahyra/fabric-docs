---
title: Live Update in Real-Time Dashboards
description: Learn how dashboards use live update to show the most current data in your visuals, and how to configure live update settings.
ms.reviewer: mibar
ms.topic: how-to
ms.collection: ce-skilling-ai-copilot
ms.subservice: rti-dashboard
ms.date: 02/22/2026
author: hzargari-ms
ms.author: v-hzargari
---

# Live update in Real-Time Dashboards

Real-Time Dashboards in Microsoft Fabric allow you to monitor live data and react to changes as they happen. To ensure your dashboard always reflects live data, Real-Time Dashboards support **Live update**.

**Live update** updates dashboard visuals when new data is ingested into the underlying source. For visuals that don't support ingestion detection, or are based on unsupported data sources, the dashboard uses a fallback refresh interval that the dashboard editor defines. Ingestion detection is more efficient than fixed-time intervals, as it queries the data only when the data changes.

**Live update** works well in the following scenarios: 

* **High-frequency data:** You need to see data the moment it arrives but want to avoid constant polling during "quiet" periods. 

* **Cost optimization:** You want to reduce the compute load and query costs associated with refreshing dashboards that didn't receive new data. 

* **Large-scale monitoring:** You're monitoring multiple sources and want the system to intelligently manage refresh triggers based on actual ingestion. 

## How Live update works

**Live update** uses a lightweight background query based on the ingestion_time() function. Instead of running heavy visual queries on a fixed schedule, the dashboard periodically checks the "high-water mark" of the data. 

If the detection query identifies that new data is ingested, the process triggers a refresh of the dashboard visual. If no new data is detected, no further queries are executed until the next check. 

## Configure Live update (Editor)

As a dashboard editor, you can configure how your dashboard stays fresh in the **Data update settings**. 

1. In your dashboard, select **Manage** from the top ribbon. 

1. Select **Data update settings**. 

1. Choose between the following options: 

    1. **Live update (Recommended):** Enables Live update. The dashboard monitors for new data and updates automatically. 

    1. **Manual update only:** The dashboard stays static. Visuals only update when a user select the Update button manually. 

1. **Fallback update interval:** If your dashboard includes visuals that the system can't check for Live update, it uses this interval to refresh those specific visuals. You can customize this frequency to balance freshness and performance. 

## Monitor and control refresh (Viewer)

Dashboard viewers can monitor the refresh status and pause updates if they need to analyze a specific point in time. 

The dashboard ribbon provides visual cues for the current refresh state: 

Live update (Enabled): The button is active. Hovering over the button shows a tooltip: *"Visuals update automatically as new data comes in."* 

Live update (Paused): The button appears with a strike-through. The tooltip indicates: *"Visuals don't update automatically."* 

## Pause or resume updates 

If you're investigating a specific data point and don't want the visuals to change, you can select the **Live update** button to turn live updates **Off** (Paused). While paused, the dashboard doesn't perform any automated refreshes. Toggle it back to **On** to resume live updating. 

## Considerations and limitations

* **Fallback behavior:** For unsupported tables or specific visual types, the dashboard uses the Fallback update interval defined in the editor settings. 

* **Compute usage:** While **Live update** is significantly more efficient than fixed-interval refreshing, the background detection queries still consume some resources.

## Related articles

* [Real-Time Dashboards overview](./dashboard-overview.md)
* [Create a Real-Time Dashboard](./dashboard-create.md)