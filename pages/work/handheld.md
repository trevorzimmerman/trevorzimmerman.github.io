---
layout: page
title: "Handheld Sewing Controls"
permalink: /work/handheld-sewing-controls
---

**Type:** Microcontroller Interface / Arduino  
**Role:** Lead Engineer

Designed a handheld device to allow sewing operators who cannot use a foot pedal to control a Juki LU-1510N-7 sewing machine. The device fits comfortably in the operator’s hand and includes a thumb joystick and magnetic ring for secure, flexible use.

---

## System Overview

The joystick controls sewing speed, lifts the presser foot, and triggers the thread-cutting mechanism, functioning like a foot treadle. The joystick is enclosed in a 3D-printed shell, and its position and maximum speed can be adjusted by the operator. This design provides an accessible alternative for operators with limited mobility, enabling them to work efficiently and safely.

<iframe width="100%" height="600" 
        src="https://www.youtube.com/embed/412ms-ErHYA?rel=0" 
        title="YouTube video player" 
        frameborder="0" allowfullscreen>
</iframe>

---

## Proof of Concept

A secondary video demonstrates an alternative interface using a touch screen. This proof-of-concept shows that the same operations can be controlled via touch input, offering flexibility for potential future setups.

<iframe width="100%" height="600" 
        src="https://www.youtube.com/embed/gdpZgFyb50k?rel=0" 
        title="YouTube video player" 
        frameborder="0" allowfullscreen>
</iframe>

---

## Software / Programming

The handheld device uses a **Seeed Studio Xiao microcontroller**, programmed using the **Arduino IDE**. The microcontroller interprets the joystick’s analog and digital button inputs and sends commands to the sewing machine, controlling speed, presser foot position, and thread cutting. Speed profiles and button-based adjustments allow operators to customize maximum speed on the fly.

---

## Navigation

[← Back to Work Projects](/work)
