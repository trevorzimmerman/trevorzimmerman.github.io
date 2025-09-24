---
layout: page
title: "CS 7267 – Diabetic Retinopathy Project"
permalink: /university/cs7267-diabetic-retinopathy
---

## CS 7267 – Diabetic Retinopathy Image Classification

This project implements a deep learning algorithm in MATLAB to classify diabetic retinopathy images using **transfer learning** on the InceptionV3 convolutional neural network (CNN).

**Project Objective:** Classify diabetic retinopathy images into 5 severity classes using the IDRiD dataset (516 images: 413 training, 103 testing).

**Methodology Highlights:**  
- Retrained InceptionV3 CNN 11 times (once for all classes, ten for class pairs)  
- Combined predicted probabilities across retrainings  
- Selected class with highest total probability for each sample  

**Results:**  
- Over **90% classification accuracy** on the test set  
- Misclassifications mostly occurred in smaller classes  
- Confusion matrices and probability tables included in the report  

---

## Project Files & Access

The entire project is contained within the [`hw4/` folder on GitHub](https://github.com/username/CS7267-Diabetic-Retinopathy/tree/main/hw4), which includes the MATLAB code, supporting scripts, and input files.

For detailed instructions and results, see:  
- [`README.md`](https://github.com/username/CS7267-Diabetic-Retinopathy/blob/main/README.md)  
- [`HW4_Report_Zimmerman.pdf`](https://github.com/username/CS7267-Diabetic-Retinopathy/blob/main/HW4_Report_Zimmerman.pdf)
