---
layout: page
title: "Diabetic Retinopathy Image Classification"
permalink: /university/cs7267-diabetic-retinopathy
---
# Machine Learning - MATLAB

This project implements a deep learning algorithm in MATLAB to classify diabetic retinopathy images using **transfer learning** on the InceptionV3 convolutional neural network (CNN).

## Overview

- Classified diabetic retinopathy images into 5 severity classes using the IDRiD dataset (516 images).  
- Retrained InceptionV3 multiple times and combined predictions across runs.  
- Achieved over **90% accuracy** on the test set.  
- Results include a confusion matrix, a combined probability table, and an accuracy graph.

## Methodology

- Retrained InceptionV3 CNN 11 times: once on all classes and 10 times on combinations of 2 classes  
- Combined predicted probabilities from all retrainings to create a final probability matrix  
- Assigned each sample to the class with the highest total probability  
- Misclassifications typically occur in smaller classes; the correct class is often the second-highest probability 

## Report

<iframe src="/assets/projects/cs7267-retinopathy/Final_Report.pdf" 
        width="100%" height="600px">
  Your browser does not support PDFs. 
  <a href="/assets/projects/cs7267-retinopathy/Final_Report.pdf">View PDF</a>.
</iframe>

> Note: Running the MATLAB script without retraining the CNNs will produce this same report. Retraining the CNNs generates an updated PDF report and an Excel file with the new results.

## Project Files

The full project, including MATLAB scripts and supporting files, is available on GitHub:  

[→ CS7267-Diabetic-Retinopathy Repository](https://github.com/trevorzimmerman/CS7267-Diabetic-Retinopathy)

For a detailed description of the folder structure and file contents, please see the README.md in the repository.

---

## Navigation

[← Back to University Projects](/university)
