# CS 7267 – Diabetic Retinopathy Image Classification (MATLAB)

This project implements a deep learning algorithm in MATLAB to classify diabetic retinopathy images using **transfer learning** on the InceptionV3 convolutional neural network (CNN).

## Overview

- Classified diabetic retinopathy images into 5 severity classes using the IDRiD dataset (516 images).  
- Retrained InceptionV3 multiple times and combined predictions across runs.  
- Achieved over **90% accuracy** on the test set.  

## Project Files

The full project, including MATLAB scripts and supporting files, is included in this repository.  

For viewing the final report, please see the project page: [CS 7267 – Diabetic Retinopathy Project Page](https://trevorzimmerman.github.io/university/cs7267-diabetic-retinopathy)

---

## How to Run

1. Open MATLAB.  
2. Navigate to the `src/` folder.  
3. Run the main script:  
   ```matlab
   main
   ```
4. When prompted, enter **Y** to retrain the CNNs or **N** to use saved results. 

### Output

- If you choose **N**:  
  - The report is generated as `Final_Report.pdf` in the working folder.  

- If you choose **Y**:  
  - `Final_Report.pdf` is generated  
  - `PredictionResults.xlsx` is generated with the updated probability matrix
