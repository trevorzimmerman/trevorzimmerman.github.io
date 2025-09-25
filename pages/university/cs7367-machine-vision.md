---
layout: page
title: "USD Coin Counter – Machine Vision (CS 7367, Python/Roboflow)"
permalink: /university/cs7367-machine-vision
---

This research project developed a computer vision system to count U.S. coins using an Android smartphone camera and a custom Roboflow-trained model.  

## Overview

- Trained a Roboflow model to detect and classify U.S. coins.  
- Used an Android camera to stream images to a Python script on a PC.  
- The script performs inference, identifies and labels each coin, calculates the total value, and overlays bounding boxes.  
- Users can capture snapshots or record video of the live output.

## Demonstration Video

The following video compiles several test runs using the Python script.  
It shows the system detecting, labeling, and summing coin values in real time.

<iframe width="560" height="315" src="https://www.youtube.com/embed/D6WUL7I_PqM?rel=0" title="YouTube video player" frameborder="0" allowfullscreen> </iframe>

## Try the Model (Prototype)

You can experiment with the Roboflow-trained model directly from your device using this QR code:  

<img src="/assets/projects/cs7367-coin/qr-code.PNG" alt="QR Code" width="200"/>  

*Note: The live model is a prototype and works best with consistent lighting and moderate camera distance. The repository includes the full Python script for reproducible results.*

## Project Files

The full project source code is available on GitHub:  

[→ CS7367-Coin-Counter Repository](https://github.com/trevorzimmerman/CS7367-Coin-Counter)

---

## Navigation

[← Back to University Projects](/university)
