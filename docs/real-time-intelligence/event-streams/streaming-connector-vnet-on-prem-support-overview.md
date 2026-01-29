---
title: Eventstream Streaming Connector Virtual Network and On-Prem Support Overview
description: Learn how Eventstream streaming connectors securely access streaming sources in virtual networks and on‑premises environments with a streaming virtual network data gateway.
ms.reviewer: spelluru
ms.author: xujiang1
author: xujxu
ms.topic: how-to
ms.custom: sfi-image-nochange, sfi-ropc-nochange
ms.date: 01/27/2026
ms.search.form: Streaming Virtual Network
---

# Eventstream Streaming Connector Virtual Network and On-Prem Support Overview

Real-Time Intelligence Eventstream is designed to bring real-time data from diverse sources, transforming it, and effortlessly routing it to various destinations. For sources that run in private network environments, such as cloud virtual network or on-premises infrastructures, a secure method is required to enable Eventstream to access the source.

The streaming connector’s support for virtual networks (vNet) and on-premises environments offers a secure, managed pathway, enabling Eventstream to reliably connect with these private-network streaming sources.

## Architecture

To enable data transfer from a source within a private network into Eventstream, it's necessary to establish an Azure managed virtual network as an intermediary bridge, as illustrated in the diagram below. The Azure virtual network should be connected to the private network hosting the data source using appropriate methods, such as VPN or ExpressRoute for on-premises scenarios, and private endpoints or network peering for Azure sources. Then, the Eventstream streaming connector instance is injected into this virtual network through vNet injection, allowing secure connectivity between the connector and the data source located within the private network.

:::image type="content" source="media/streaming-connector-vnet-on-prem-support-overview/overview.png" alt-text="Screenshot of showing the overview of the architecture." lightbox="media/streaming-connector-vnet-on-prem-support-overview/overview.png":::

## What is a streaming virtual network data gateway

To facilitate streaming connector vNet injection into an Azure virtual network created by you, Fabric provides a centralized location for network engineers or data engineers to manage the references to Azure virtual network resources. The streaming virtual network data gateway in Fabric serves this purpose for Eventstream. Specifically, the streaming virtual network data gateway:

- Refers to the Azure virtual network resource in Fabric, **storing customer Azure virtual network resource**.
- Is used **exclusively** in Eventstream to pass the Azure virtual network resource information for streaming connector vNet injection.
- Can be created and managed via the ‘**Manage Connections and Gateways**’ page in Fabric.
- Can be selected when setting up streaming connections for Eventstream sources using the Get Events wizard.
- Unlike 'Virtual network data gateways' and 'On-premises data gateways', it doesn't require cluster provisioning or additional capacity. However, the user experience across all three gateway types remains largely similar.

To learn more about how to create and manage the streaming virtual network data gateway, refer to [Create and manage streaming virtual network data gateways](create-manage-streaming-virtual-network-data-gateways.md).

:::image type="content" source="media/streaming-connector-vnet-on-prem-support-overview/data-gateway.png" alt-text="Screenshot of showing what is streaming virtual network data gateway." lightbox="media/streaming-connector-vnet-on-prem-support-overview/data-gateway.png":::

## Supported sources

[!INCLUDE [streaming-connector-vnet-supported-sources](./includes/streaming-connector-vnet-supported-sources.md)]

## Next steps

To get the detailed step-to-step configuration guide, check out the [Streaming Connector Private Network Support Guide](streaming-connector-vnet-on-prem-support.md).

## Limitations

- **Data preview on sources in private network is not supported**.  
    Some connector sources support previewing the data, such as the database CDC sources, Confluent, AWS Kinesis, etc. if they are in a public network. When they are in private network, the data preview on these sources cannot work. It shows errors when previewing it in either Edit mode or Live mode. 

- **The source with vNet/Subnet configured cannot be updated after this eventstream is published**.  
    Once vNet/Subnet is configured in your eventstream source, it won’t be updated later. It's also recommended not to update your virtual network or subnet setting when connector is running.  

- **Custom DNS Server is not supported yet**  
    If your source is located in a private network with a custom DNS server configured, the injected streaming connector within your Azure virtual network may not be able to resolve the source server’s address. There are three options to work around this:

    1. Create and link a [Private DNS Zone](/azure/dns/private-dns-privatednszone) to your injected virtual network and add an A record resolving your data source DNS name to the private IP address.
    1. Create a [DNS Private Resolver](/azure/dns/dns-private-resolver-overview) which forwards DNS traffic to your custom DNS server.
    1. Configure the private IP address directly when creating your connector. This option won't work for connectors that require a fully qualified domain name.

- **Race condition issue may occur when creating and deleting vNet connector with same virtual network’s subnet configured at same time**  
    If you delete a connector source with a virtual network subnet configured and add a new connector source with the same subnet in Eventstream's edit mode, publishing both changes may cause race condition conflicts. To prevent this, follow these steps: delete the connector source with vNet in Edit mode -> publish the eventstream -> re-enter edit mode -> add the new connector source with vNet -> and publish again.
