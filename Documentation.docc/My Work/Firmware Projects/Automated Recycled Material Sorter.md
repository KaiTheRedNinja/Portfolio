# Automated Recycled Material Sorter

@Metadata {
    @PageImage(purpose: card, source: "TrashSorter_Firmware", alt: "Top view of the recycled material sorter")
}

The automated recycled material sorter is designed as a proof-of-concept for sorting recycled 
materials based on their physical properties

## Overview

The automated recycled material sorter was built for the <doc:ARTC-SIMTech-SST-Innovation-Camp> 
competition, where it won the Design Excellence Award. It sorts between metal cans, plastic bottles, 
metal cans, and paper.

The sorter is designed to sort recycled materials based on their physical properties, such as 
size, shape, and color. The sorter uses a combination of sensors and actuators to identify and 
sort different types of materials.

## Sorting Mechanism
The trash enters the sorter through a conveyor belt. It then passes through several "stations", 
which sort out one material each.

### Metal
The first station uses an infrared sensor to detect opaque objects. In our (albeit limited) sample
of recycled materials, the only opaque objects are cans, so they are sorted out by means of a
"puncher" that pushes them off the conveyor belt into a bin.

### Plastic
Due to the light nature of plastic as opposed to glass, we place a small fan about 15cm above the
belt to tip over plastic bottles into a separate bin.

### Glass and Paper
At this stage, only glass and paper remain. Paper is usually flat, so we use a solid sheet at an
angle, with a gap at the bottom. Glass bottles will hit the sheet and be redirected into a bin,
and glass will fall through the gap into the final bin.

## Shortfalls
- Can only sort from limited materials
- The puncher is very aggressive, and a misfire on glass may cause the puncher to shatter it
- The sorter is not very fast, and can only sort about 1 item per second
- The sorter is not very accurate, and may misclassify items
- The sorter requires ideal conditions to work properly, such as upright plastic bottles (which are
almost never the case in real life)