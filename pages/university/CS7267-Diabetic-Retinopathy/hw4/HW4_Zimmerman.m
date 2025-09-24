
%{
---------------------------------------------------------------------------
CS7267 MACHINE LEARNING
PROJECT 4
Trevor Zimmerman
000667964
11/28/23

This script retrains inceptionv3 11 different times.
The data given is divided into 5 class (Class 0 - Class 4)

The first time the CNN is retrained, all classes are used.
A probability matrix is created.

The next 10 times the CNN is retrained, only a combination of 2 classes are
used as train/test data.
The new probabilities are added to the 1st probability matrix.

After retraining 11 times, each sample is classified by the highest 
probability score.

Then a pdf report is generated from this information:
HW4_Report_Zimmerman.pdf
---------------------------------------------------------------------------
%}

close all;
clear;
clc;

response = question();

if response == 1
    [probability_matrix, accuracy_matrix] = buildMatrix();
else
    load('HW4_Zimmerman_Report_WS.mat')
end

[known, predicted] = predictions(probability_matrix);

[final] = buildReport(probability_matrix, accuracy_matrix, ...
    known, predicted, response);

disp(final)
disp(' ')