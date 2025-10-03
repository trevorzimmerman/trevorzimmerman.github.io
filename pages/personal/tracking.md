---
layout: page
title: "Vision-Guided Stepper Motor System"
permalink: /personal/tracking
---

# Motion Control – Python / C / OpenCV

This project was a **red object tracking system** I built using a webcam to control a 28BYJ-48 stepper motor in real time.  

The system was controlled by a **Cypress PSoC 5LP microcontroller**, which ran **C** code for stepper motor control, PWM signal generation, and UART communication with the PC.  

A **Python** script on a PC processed webcam images to **detect red objects**, computed motor speed and direction using a **PID algorithm**, and transmitted commands to the PSoC.  

The project combines **embedded control**, **digital logic design**, and **computer vision** in a compact prototype.

---

## Stepper Motor Digital Logic

Handwritten notes and diagrams describing the **digital logic applied to the stepper motor**.  
- Shows 8-step sequence for a 28BYJ-48 stepper (orange, yellow, pink, blue coils).  
- Timing chart for 3 PWM signals (alpha, beta, gamma).  
- Simplified digital logic equations for each coil.

![Stepper Digital Logic](/assets/projects/tracking/0-stepper-digital-logic.jpg)

---

## PSoC Circuit Design

Circuit diagram created in Cypress software showing:  
- Clock input driving 3 PWM blocks.  
- Logic gates implementing the simplified stepper equations.  
- Outputs connected to 4 stepper coils (O, Y, P, B).  
- UART and LCD blocks integrated for communication and display.

<iframe src="/assets/projects/tracking/1-digital-circuit.pdf#view=FitH&toolbar=1&navpanes=0" 
        width="100%" height="500px">
    Your browser does not support PDFs. 
        <a href="/assets/projects/tracking/1-digital-circuit.pdf">View PDF</a>.
</iframe>

---

## Python Object Tracking

Python script processes webcam frames to isolate red objects, calculate horizontal position, and compute motor speed/direction using a **proportional controller**. Commands are sent to the PSoC in **3-byte UART format**.

<iframe src="/assets/projects/tracking/tracking-python.pdf#view=FitH&toolbar=1&navpanes=0" 
        width="100%" height="500px">
    Your browser does not support PDFs. 
        <a href="/assets/projects/tracking/tracking-python.pdf">View PDF</a>.
</iframe>

---

## Embedded C Stepper Control

C script running on the PSoC receives motor commands from the Python script and drives the stepper motor via **3 synchronized PWM signals**. The LCD shows current speed and direction.

<iframe src="/assets/projects/tracking/tracking-C-code.pdf#view=FitH&toolbar=1&navpanes=0" 
        width="100%" height="500px">
    Your browser does not support PDFs. 
        <a href="/assets/projects/tracking/tracking-C-code.pdf">View PDF</a>.
</iframe>

---

## Video Demonstration

The stepper motor tracks a moving red object in real time, including a twist-off bottle cap, a handheld red pen, and small, thrown pieces of wire, demonstrating the system’s ability to follow objects of varying size and speed.

<iframe width="100%" height="600" 
        src="https://www.youtube.com/embed/rut3NRivFuI?rel=0" 
        title="YouTube video player" 
        frameborder="0" allowfullscreen>
</iframe>

---

## Navigation

[← Back to Personal Projects](/personal)
