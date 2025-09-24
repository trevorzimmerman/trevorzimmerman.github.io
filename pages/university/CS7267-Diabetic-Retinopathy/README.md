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

- `main.m` – entry point MATLAB script for training, testing, and report generation  
- `src/scripts/` – supporting MATLAB functions (confusion matrix, accuracy plots, PDF merge, etc.)  
- `src/pdf/` – PDF components used to assemble the final report  
- `src/workspace/default_WS.mat` – default workspace used when retraining is skipped  
- `Final_Report.pdf` – reference copy of the project report (kept outside `src/` so it is not overwritten by the script)  

## How to Run

1. Open MATLAB.  
2. Navigate to the repository folder.  
3. Run the main script:  
   ```matlab
   main
   ```
4. When prompted, enter **Y** to retrain the CNNs or **N** to use saved results.  

> The Deep Learning Toolbox Model for Inception-v3 Network add-on must be installed if retraining is selected.  

### Output

- If you choose **N**:  
  - The report is generated as `Final_Report.pdf` in the working folder.  

- If you choose **Y**:  
  - `Final_Report.pdf` is generated  
  - `PredictionResults.xlsx` is generated with the updated probability matrix
