---
title: Tilesets in Fabric Maps 
description: Learn about tilesets in Microsoft Fabric Maps.
ms.reviewer: smunk
author: sipa
ms.author: sipa
ms.topic: concept-article
ms.custom:
ms.date: 02/16/2026
ms.search.form: 
---

# What is a tileset in Fabric Maps? (preview)

Microsoft Fabric Maps supports tilesets to efficiently visualize large static spatial datasets. Tilesets divide geographic data into smaller, preprocessed pieces that can be rendered quickly across different zoom levels, enabling smooth interaction even with very large datasets.

This article explains the core concepts behind tiles, tilesets, and PMTiles in Fabric Maps, and when to use a tileset instead of rendering raw spatial data directly.

## Introduction to tiles and tilesets

### Tiles

**Tiles** are small, square sections of a map that represent geographic data for a specific area and zoom level. Instead of rendering an entire map as a single image, Map divides it into tiles to improve performance and scalability. Each tile contains data such as points, lines, and polygons relevant to its geographic area.

#### Map tile types

There are two main types of tiles supported in Microsoft Fabric Maps:

- **Raster tiles**: Pre-rendered image tiles (such as PNG or JPEG) that provide fixed map visuals.
- **Vector tiles**: Data packets containing geographic features, rendered dynamically for customizable styling.

> [!NOTE]
> Microsoft Fabric Maps supports PMTiles created from both raster and vector tiles, but currently only supports the creation of PMTiles using vector tiles.

##### Map tile type comparison

| Feature         | Raster tiles                          | Vector tiles                               |
|-----------------|---------------------------------------|--------------------------------------------|
| **Format**      | Pre-rendered images (PNG, JPEG)       | Data packets (geometry + attributes)       |
| **Styling**     | Fixed, cannot be changed client-side  | Dynamic, customizable on the client        |
| **Performance** | Larger files, slower zoom transitions | Smaller payloads, smooth zoom and rotation |
| **Use Cases**   | Static imagery (satellite, terrain)   | Interactive maps with dynamic styling      |

### Tilesets

A Map **Tileset** is a structured collection of tiles that represent geographic data for a larger area—such as a city, country/region, or the entire globe. Each tile contains only the data relevant to its specific location, and tilesets are organized by [zoom levels](#understanding-zoom-levels-in-tilesets) and tile coordinates. This structure allows mapping software to load only the necessary tiles for the current view, significantly improving rendering speed, scalability, and overall performance.

> [!NOTE]
> A format of tileset called [**PMTiles**](https://github.com/protomaps/PMTiles/blob/main/spec/v3/spec.md) is a modern, portable tileset for storing and delivering tiles. Unlike traditional tilesets that consist of thousands of small files organized in folders, PMTiles packages all tiles into a **single archive file**. This makes it easier to manage, distribute, and stream map data, especially for large datasets.

Fabric Maps currently supports PMTiles as the format for its tilesets, which can be created using raster or vector tiles. It also allows generating PMTiles from valid GeoJSON files using vector tiles, as described in the article [create tileset](create-tile-sets.md). For more information on using PMTiles in Fabric Maps, see [Add data to the map - PMTiles](create-map.md#add-data-to-the-map---pmtiles) in the *Create a map* article.

### Understanding zoom levels in tilesets

Zoom levels define how much geographic detail is shown on a map at different scales. In a tileset, spatial data is organized into tiles across multiple zoom levels so that Fabric Maps can load only the data needed for the current view. Lower zoom levels display broader areas with less detail, while higher zoom levels show smaller areas with greater detail, helping balance performance and visual clarity.

Zoom levels are defined when you [Create a tileset](create-tile-sets.md#create-a-tileset). Fabric Maps supports zoom levels from 5 through 18, which balance visual detail, performance, and tileset size.

| Zoom level | Typical view | Approximate distance range |
|--|--|--|
| 0-2 | Entire globe | Thousands of kilometers |
| 3-5 | Continents, large countries/regions, major rivers | Hundreds to thousands of kilometers |
| 6-8 | countries/regions, major cities | Tens to hundreds of kilometers |
| 9-11 | Cities, towns, highways | 5-50 kilometers |
| 12-14 | Neighborhoods, streets | 1-5 kilometers |
| 15-17 | Buildings, parks, detailed street layouts | 100 meters to 1 kilometer |
| 18-20 | Individual houses, entrances, trees | Less than 100 meters|

For more information on zoom levels, see [Zoom levels and tile grid in
Microsoft Azure Maps](/azure/azure-maps/zoom-levels-and-tile-grid?tabs=csharp).

### PMTiles in Fabric Maps

Fabric Maps uses PMTiles, a single-file tileset format that packages all tiles into one portable archive. PMTiles simplifies storage, distribution, and streaming compared to traditional folder-based tilesets. [Spatial Jo...soft Learn | External]
Fabric Maps can:

- Consume PMTiles created externally
- Generate PMTiles from valid GeoJSON files using vector tiles

For information on adding PMTiles to a map, see [Add data to the map – PMTiles](create-map.md#add-data-to-the-map---pmtiles) in the Create a map article.

## Why use tilesets?

Large static spatial datasets—such as road networks, buildings, or environmental boundaries—can be expensive to render directly. Tilesets improve performance by:

- Loading only the data relevant to the current map view
- Reducing client-side rendering overhead
- Supporting smooth zooming and panning at different levels of detail.

Tilesets are designed to efficiently render large spatial datasets by loading only the data needed for the current map view.

## Next steps

> [!div class="nextstepaction"]
> [Create a tileset](create-tile-sets.md)
