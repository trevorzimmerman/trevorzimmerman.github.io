---
layout: page
title: "SCARA Robot with Computer Vision"
permalink: /personal/scara
---

# Robotics – Python / C / OpenCV

This project was a SCARA-style robotic arm I built using two hobby servos, a DC motor with encoder, and a webcam.  

The system was controlled by a **Cypress PSoC 5LP microcontroller**, which ran **C** code for servo control, DC motor motion, and encoder feedback, in coordination with a **Python** script on PC that used OpenCV for image processing and UART communication with the PSoC.  

A **homogeneous transformation matrix** was used to convert object coordinates from the camera frame into the robot’s base frame, and **inverse kinematics** determined the required servo angles to position the end effector.  

This project combined embedded control, computer vision, and robotics mathematics to create a functional **prototype**. 

---

## Pre-SCARA Calculations

Handwritten notes deriving the homogeneous transformation matrix and initial inverse kinematics equations for a 2-DOF pan-tilt configuration.

![Pre SCARA Calculations](/assets/projects/scara/0-pre-scara-calculations.jpg)

---

## Pan-Tilt Testing

Early motor testing in a pan-tilt configuration, moving to extreme positions.

<iframe width="100%" height="600" 
        src="https://www.youtube.com/embed/otFQmu6s6xQ?rel=0" 
        title="YouTube video player" 
        frameborder="0" allowfullscreen>
</iframe>

---

## SCARA Inverse Kinematics Equations

Handwritten derivations for the SCARA linkage inverse kinematics equations.

![SCARA IK Equations](/assets/projects/scara/2-scara-inverse-kinematics.jpg)

---

## SCARA Equation Testing

Testing the SCARA kinematics: the robot moves to multiple positions, lowering and raising the rack-and-pinion end effector each time.

<iframe width="100%" height="600" 
        src="https://www.youtube.com/embed/0pxDS9crcdE?rel=0" 
        title="YouTube video player" 
        frameborder="0" allowfullscreen>
</iframe>

---

## Final Webcam Integration

Final demonstration: the SCARA detects a black plastic nut dropped into the workspace multiple times and moves the end effector to the correct position.

<iframe width="100%" height="600" 
        src="https://www.youtube.com/embed/4OI3krC2zy4?rel=0" 
        title="YouTube video player" 
        frameborder="0" allowfullscreen>
</iframe>

---

## Code

The project included both embedded C code for the PSoC and Python code for computer vision and inverse kinematics.

**C Code (servo + DC motor control + UART on PSoC):**

<iframe src="/assets/projects/scara/scara-c-code.pdf#view=FitH&toolbar=1&navpanes=0" 
        width="100%" height="500px">
    Your browser does not support PDFs. 
        <a href="/assets/projects/scara/scara-c-code.pdf">View PDF</a>.
</iframe>

**Python Code (computer vision + HTM + IK + UART):**

<iframe src="/assets/projects/scara/scara-python-code.pdf#view=FitH&toolbar=1&navpanes=0" 
        width="100%" height="500px">
    Your browser does not support PDFs. 
        <a href="/assets/projects/scara/scara-python-code.pdf">View PDF</a>.
</iframe>

---

## Navigation

[← Back to Personal Projects](/personal)
