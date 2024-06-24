# Fader

@Metadata {
    @PageImage(purpose: icon, source: "Fader_AppIcon", alt: "Fader Game Icon")
}

Fader is a platformer where the user can draw their own platforms, but they fade over time. This game 
won 5th place in the 2022 Buildergroop's Builderhacks hackathon.

## Overview

Fader's premise is a platformer that allows the user to draw their own platforms. There are two rules with
placing platforms:
1. The user cannot draw a platform with a larger perimeter than the number of "perimeter points" they have
2. The user cannot draw a platform further than 500 pixels away from the player

It also has several different types of platforms.
- Gray: Normal platforms
- Pink: Fadable platforms, similar to the ones that the player can draw
- Red: Lava platforms, which kill the player on contact
