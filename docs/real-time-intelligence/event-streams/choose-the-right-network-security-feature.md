---
title: Choose the right network security feature for Eventstream
description: Learn how to select the appropriate network security feature for Eventstream, including managed private endpoints, tenant-level private links, and workspace-level private links.
ms.reviewer: spelluru
ms.author: zhenxilin
author: alexlzx
ms.topic: concept-article
ms.date: 12/25/2025
ms.search.form: fabric's network security
ai-usage: ai-assisted

#customer intent: As a Fabric administrator, I want to understand the network security options for Eventstream so that I can choose the right feature to secure my data streaming.

---

# Choose the right network security feature for Eventstream

Secure data streaming is critical for protecting sensitive information as it moves between your systems and Fabric platform. Eventstream provides multiple network security features that help you control how data ingest into and out of Fabric. Understanding the differences between these features and when to use each one ensures your data remains protected while meeting your organization's security requirements.

This article helps you understand the available network security features in Eventstream and choose the right one for your scenario. You learn about the three types of network traffic, explore the main security features, and discover which feature best fits your needs.

## Understand the three types of network traffic

Network traffic in Eventstream operates in three ways: **internal calls**, **inbound**, and **outbound**. Understanding these traffic types helps you determine whether you need additional network security features and, if so, which one to choose.

### Internal calls: Secure by default

Internal calls refer to traffic between Eventstream and other Fabric-native items within the same Fabric environment. This traffic stays within Fabric's security boundary and doesn't cross any network perimeters. Internal calls don't require additional network security features because they're already protected by Fabric's built-in security model.

Sources and destinations that use internal calls include:

**Fabric-native sources:**
- Fabric Workspace Item events
- Fabric OneLake events
- Fabric Job events
- Fabric capacity overview events
- Sample data e.g., Bicycle, Taxi
- Real-time weather data
- HTTP connector

**Fabric-native destinations:**
- Lakehouse
- Eventhouse
- Data Activator

Internal calls are secure by default and protected by Microsoft Entra ID authentication, workspace permission model, and encryption at rest and in transit. The network security features described in this article apply only to external traffic—inbound and outbound connections between Eventstream and resources outside the Fabric platform.

### Inbound traffic

Inbound traffic refers to data coming into Eventstream from external sources outside the Fabric platform. When you configure inbound security, you control who can send data to your Eventstream and from which networks. This protects your Eventstream from unauthorized access and ensures that only approved sources can stream data into your environment.

Examples of inbound scenarios include:
- Custom applications sending events to Eventstream through custom endpoints source
- Custom applications pulling events from Eventstream through custom endpoints destination
- Azure resources pushing system events to Eventstream through the Azure Event Grid source

Inbound security features restrict access to Eventstream itself, ensuring that only traffic from approved networks can reach your streaming environment.

### Outbound traffic

Outbound traffic refers to connections that Eventstream makes to external data sources outside the Fabric platform. When you configure outbound security, you control how Eventstream connects to Azure resources and other external systems. This ensures that data flowing from external sources into Eventstream travels over secure, private connections.

Examples of outbound scenarios include:
- Eventstream connecting to Azure Event Hubs source to retrieve events
- Eventstream accessing Azure IoT Hub to stream device data
- Eventstream connecting to Azure SQL Database to capture database change events

Outbound security features ensure that when Eventstream reaches out to external data sources, those connections remain private and don't traverse the public internet.

## Network security features for Eventstream

Eventstream supports three main network security features. Each feature serves a different purpose and operates at a different scope within your Fabric environment.

### Managed Private Endpoints

Managed private endpoints enable Eventstream to securely connect to Azure resources that are behind a firewall or not accessible from the public internet. When you create a managed private endpoint, Fabric automatically provisions a managed virtual network for your Eventstream, allowing outbound connections to Azure resources over a private network.

**Direction:** Outbound (Eventstream connecting to external resources)

**Use case:** Use managed private endpoints when your Azure resources (such as Azure Event Hubs or Azure IoT Hub) have public access disabled or are protected by firewall rules. The private endpoint ensures that data flows from these Azure resources to Eventstream without traversing the public internet.

**How it works:**
1. You create a managed private endpoint in your Fabric workspace
2. Fabric provisions a managed virtual network dedicated to your workspace
3. Eventstream connects to your Azure resource through this private network
4. The Azure resource administrator approves the private endpoint connection
5. Data flows securely between the Azure resource and Eventstream

Managed private endpoints are ideal when you need to pull data from Azure Event Hubs or Azure IoT Hub that are configured with network restrictions.

### Tenant and Workspace-level Private Links

Tenant-level private links provide network security for your entire Fabric tenant. When enabled, they restrict all inbound access to Fabric, ensuring that only traffic from approved Azure virtual networks can access Fabric resources, including Eventstream.

**Direction:** Inbound (controlling access to Fabric and Eventstream)

**Use case:** Use tenant-level private links when your organization requires a comprehensive security policy that applies to all workspaces and all users. This feature blocks public internet access to Fabric entirely, ensuring that all access comes through approved private endpoints.

**How it works:**
1. A Fabric administrator enables private links at the tenant level
2. All Fabric resources, including Eventstream, become accessible only through private endpoints
3. Users and applications must connect from an approved Azure virtual network
4. Public internet access to Fabric is blocked

Tenant-level private links are ideal when your organization has strict security policies that require all data and access to remain within private networks.

### Connector VNet

Workspace-level private links provide granular network security for specific workspaces. Unlike tenant-level private links, they let you secure individual workspaces while leaving other workspaces accessible from the public internet.

**Direction:** Outbound (Eventstream connecting to external resources)

**Use case:** Use Connector VNet when you need to connect Eventstream to external streaming platforms (like Confluent Cloud, Amazon Kinesis, Google Pub/Sub, MQTT) or database CDC sources (PostgreSQL, MySQL, SQL Server) that reside in private networks.

**How it works:**
1. Configure virtual network settings for your Eventstream workspace
2. Eventstream's connectors establish secure connections through the configured virtual network
3. Data flows from sources in private networks to Eventstream over secure channels
4. No exposure to the public internet

Connector VNet is ideal when you need to stream data from non-Azure sources or databases that are behind firewalls or in private networks.

### Tenant and Workspace-level Private Links

## Choose the right network security feature

Selecting the right network security feature depends on your specific scenario and requirements. Use the following guidance to determine which feature best fits your needs.

### Decision criteria

Ask yourself these questions:

1. **Is your source or destination within Fabric?**
   - If you're using Fabric-native sources (like Workspace Item events, OneLake events, Sample data) or Fabric-native destinations (like Lakehouse, Eventhouse, Data Activator), these are **secure by default**—no additional network security features are needed
   - If you're connecting to external Azure resources or custom applications, continue to the next questions

2. **Is your data source sit in a protected network?**
   - If your data source is publicly accessible and needs to send data to Eventstream, no action required.
   - If your data source sits behind a firewall and not publicly accessible, continue to the next questions.

3. **What direction does the traffic flow?**
   - If external sources need to push data to Eventstream (inbound), use **Private Links**
   - If Eventstream needs to connect to external Azure resources (outbound), continue to the next questions.

3. **Is your data source an Azure Event Hub or Azure IoT Hub?**
   - If yes, use **Managed Private Endpoint**
   - For other external data sources, use **Connector VNET**

### Decision matrix

#### Sources

| Category        | Examples                                                     | Direction | Network Security Feature | Stage & Release  |
| --------------- | ------------------------------------------------------------ | --------- | ------------------------ | ---------------- |
| Samples         | Bicycle, Stock market, Taxi                                  | Internal  | Secure by default        | -                |
| Public feeds    | Weather, HTTP                                                | Internal  | Secure by default        | -                |
| Fabric events   | Fabric Workspace item, Fabric OneLake events, Fabric Job events | Internal  | Secure by default        | -                |
| Azure streams   | Azure Event Hub, Azure IoT Hub                               | Outbound  | Managed Private Endpoint | GA (2025 July)   |
| External        | Confluent Cloud, Amazon Kinesis, Google Pub/Sub, MQTT        | Outbound  | Connector VNet           | PrPr (2025 June) |
| Database CDC    | PostgreSQL, MySQL, SQL Server                                | Outbound  | Connector VNet           | PrPr (2025 June) |
| Azure events    | Azure Blob Storage events, Azure Event Grid namespace        | Inbound   | Private Links            | Not supported    |
| Custom Endpoint | -                                                            | Inbound   | Private Links            | Not supported    |

#### Destinations

| Category                           | Direction | Network Security Feature | Stage & Release |
| ---------------------------------- | --------- | ------------------------ | --------------- |
| Lakehouse                          | Internal  | Secure by default        | -               |
| Eventhouse (direct ingestion mode) | Internal  | Secure by default        | -               |
| Eventhouse (preprocessing mode)    | Internal  | Secure by default        | -               |
| Activator                          | Internal  | Secure by default        | -               |
| Custom Endpoint                    | Inbound   | Private Links            | Not supported   |

## Common scenarios

The following scenarios demonstrate when to use each network security feature.

### Scenario 1: Connect to Azure Event Hubs behind a firewall

Your organization stores streaming data in Azure Event Hubs, and your security policy requires that Event Hubs don't accept public internet traffic. You need to stream this data into Eventstream for processing.

**Solution:** Use **Managed Private Endpoints**

Managed private endpoints allow Eventstream to connect to your Event Hubs over a private network. You create a managed private endpoint in your Fabric workspace, provide the Event Hubs resource ID, and after approval from your Azure resource networking, Eventstream can securely retrieve events without the data traversing the public internet.

### Scenario 2: Restrict Eventstream access to corporate network

Your organization requires that users and applications can only access Eventstream from the corporate network. You want to ensure that no one can send data to Eventstream from outside your approved virtual networks.

**Solution:** Use **Tenant or Workspace-level Private Links**

If this requirement applies to all workspaces, use tenant-level private links to block public access across your entire Fabric tenant. If only specific workspaces need this restriction, use workspace-level private links to secure those workspaces individually while keeping others accessible from the public internet.

### Scenario 3: Connect to Confluent Cloud in a private network

Your organization uses Confluent Cloud for Apache Kafka as your streaming platform, and your Confluent cluster is deployed within a private network for security reasons. You need to stream data from Confluent Cloud into Eventstream for real-time processing and analytics in Fabric.

**Solution:** Use **Connector VNet** (Private Preview)

Connector VNet enables Eventstream to securely connect to Confluent Cloud through your virtual network. Configure the virtual network settings in your Eventstream workspace to establish a private connection to your Confluent cluster. Once configured, Eventstream can retrieve streaming data from Confluent Cloud without exposing traffic to the public internet.

## Limitations and considerations

When choosing a network security feature, keep these limitations in mind:

### Managed Private Endpoints limitations

- Currently supported only for Azure Event Hubs and Azure IoT Hub sources
- Data preview might not be available for sources connected through managed private endpoints
- Requires approval from the Azure resource administrator
- Available for Fabric trial and all Fabric F SKU capacities

### Private Links limitations

- When tenant or workspace level private links are enabled, you can only create and manage Eventstream using Fabric REST APIs
- Some Eventstream sources and destinations aren't supported with private links enabled (see [Supported scenarios](set-up-tenant-workspace-private-links.md#supported-scenarios))
- Custom endpoints aren't supported with private links
- Eventhouse destinations with direct ingestion mode aren't supported

### General considerations

- Network security features require Azure resources (virtual networks, private endpoints)
- You need appropriate permissions in both Fabric and Azure
- Setup complexity increases with the scope of the security requirement
- Private links require coordination between Fabric administrators and Azure network administrators

## Related content

- [Connect to Azure resources securely using managed private endpoints](set-up-private-endpoint.md)
- [Secure inbound connections with Tenant and Workspace Private Links](set-up-tenant-workspace-private-links.md)
- [Security in Microsoft Fabric](../../security/security-overview.md)
- [Overview of managed private endpoints](../../security/security-managed-private-endpoints-overview.md)
- [Private links for Fabric tenants](../../security/security-private-links-overview.md)
- [Private links for Fabric workspaces](../../security/security-workspace-level-private-links-overview.md)
