# Robot Rescue Car

@Metadata {
    @PageImage(purpose: card, source: "RCCar_Firmware", alt: "The Robot Rescue Car in action")
}

The robot rescue car is my Secondary 4 Computing-Electronics project, designed to navigate through a map 
using line tracing and object recognition

## Overview

The backstory is that there was a natural disaster in an area, and we are tasked with creating a robot to be
a reconnaissance vehicle to help rescue teams. The robot must be able to navigate through a map, pick up "resources",
detect survivors (human figurines), ignore wildlife (dinosaur figurines), and assess risks (paper with fire prints)

The robotics rescue car has three tasks:
1. Go to Task 1 and bring a lego box back to home base
2. Go to Task 2 and detect if there is a human (human figurine, which may be slightly obstructed) or a dinosaur
(dinosaur figurine), or neither. The detection will be logged to the robot's file system for later reference.
3. Go to Task 3 and detect if there is a fire (paper with fire prints) or not. If there is fire, it turns on its "fan".
If not, it records the temperature.
