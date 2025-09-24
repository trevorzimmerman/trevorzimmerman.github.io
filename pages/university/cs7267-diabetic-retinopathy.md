---
layout: page
title: "CS 7267 – Diabetic Retinopathy Image Classification (MATLAB)"
permalink: /university/cs7267-diabetic-retinopathy
---

This project implements a deep learning algorithm in MATLAB to classify diabetic retinopathy images using **transfer learning** on the InceptionV3 convolutional neural network (CNN).

## Overview

- Classified diabetic retinopathy images into 5 severity classes using the IDRiD dataset (516 images).  
- Retrained InceptionV3 multiple times and combined predictions across runs.  
- Achieved over **90% accuracy** on the test set.  
- Results include confusion matrices, probability tables, and accuracy graphs.

## Methodology

- The CNN is retrained 11 times: once on all classes and 10 times on combinations of 2 classes.  
- Predicted probabilities from each retraining are summed to produce a final probability matrix for classification.  
- Each sample is assigned the class with the highest total probability.  
- Misclassifications usually occur in smaller classes; the correct class is often the second-highest probability.  
- Output includes a detailed Excel file (`PredictionResults.xlsx`) when retraining is performed.

## Report

<iframe src="/assets/projects/cs7267-retinopathy/Final_Report.pdf" 
        width="100%" height="600px">
  Your browser does not support PDFs. 
  <a href="/assets/projects/cs7267-retinopathy/Final_Report.pdf">View PDF</a>.
</iframe>

## Project Files

The full project, including MATLAB scripts and supporting files, is available on GitHub:  

[→ CS7267-Diabetic-Retinopathy Repository](https://github.com/trevorzimmerman/CS7267-Diabetic-Retinopathy)

For setup instructions, see the [README.md](https://github.com/trevorzimmerman/CS7267-Diabetic-Retinopathy/blob/main/README.md).

---

## Navigation

[← Back to University Projects](/university)
