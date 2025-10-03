---
layout: page
title: "USD Coin Counter"
permalink: /university/machine-vision
---
# Machine Vision - Python/Roboflow

This project implements a real-time machine vision system to detect and count U.S. coins using an Android smartphone camera and a custom Roboflow-trained model.  

## Overview

- **Trained** a Roboflow model to detect and classify U.S. coins.  
- **Streamed** images from an Android camera to a Python script running on a PC.  
- **Detected** and **labeled** coins in real time, calculating the total value and overlaying bounding boxes.  
- **Captured** snapshots or video of the live output for analysis.

## Demonstration Video

The following video shows multiple test runs using the Python script, demonstrating real-time detection, labeling, and coin value calculation:

<iframe width="100%" height="600" 
  src="https://www.youtube.com/embed/J19z-QP_urg?rel=0" 
  title="YouTube video player" 
  frameborder="0" allowfullscreen>
</iframe>

## Try the Model (Prototype)

You can experiment with the Roboflow-trained model directly from your device using this QR code:  

<div align="center">
  <img src="/assets/projects/machine-vision/qr-code.PNG" alt="QR Code" width="200"/>
</div>

*Note: This live model is a prototype. For best results, use consistent lighting and maintain a moderate camera distance. The full Python script is included in the repository for reproducibility.*

## Project Files

The complete source code is available on GitHub:  

[→ usd-coin-counter Repository](https://github.com/trevorzimmerman/usd-coin-counter)

---

## Navigation

[← Back to University Projects](/university)
