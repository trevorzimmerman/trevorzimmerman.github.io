# CS 7267 – Diabetic Retinopathy Image Classification (MATLAB)

This project implements a deep learning algorithm in MATLAB to classify diabetic retinopathy images using **transfer learning** on the InceptionV3 convolutional neural network (CNN).

## Project Overview

- **Objective:** Classify diabetic retinopathy images into 5 severity classes.  
- **Dataset:** IDRiD dataset – 516 images (413 training, 103 testing).  
- **Methodology:**  
  - Retrained InceptionV3 CNN 11 times:  
    - Once using all classes  
    - Ten times using combinations of 2 classes  
  - Combined predicted probabilities across retrainings  
  - Classified each sample by selecting the class with the highest total probability  

## Results

- Achieved over **90% classification accuracy** on the test set.  
- Misclassifications occurred mostly in smaller classes; the correct class was often the second-highest probability.  
- Confusion matrices, probability tables, and accuracy graphs are included in the report.  

## Files Included

- `HW4_Zimmerman.m` – main MATLAB script for training and testing  
- `HW4_Report_Zimmerman.pdf` – final report summarizing methods and results  
- `scripts/` – supporting MATLAB functions (confusion matrix, accuracy plots, PDF merge, etc.)  
- `Cover.pdf`, `pg2.pdf`, `data.pdf`, and `HW4_Zimmerman_Report_WS.mat` – required input files for the report to generate correctly  

## How to Run

1. Open MATLAB.  
2. Navigate to the `hw4/` folder.  
3. Run the main script:  
   ```matlab
   HW4_Zimmerman
4. When prompted, enter Y to retrain the CNNs or N to use saved results.

> Note: The **Deep Learning Toolbox Model for Inception-v3 Network** add-on must be installed if retraining is selected.

### Output

- If you choose **N**:  
  - `hw4/HW4_Report_Zimmerman.pdf`  

- If you choose **Y**:  
  - `hw4/HW4_Report_Zimmerman.pdf`  
  - `hw4/Data_From_HW4_Zimmerman.xlsx`  
