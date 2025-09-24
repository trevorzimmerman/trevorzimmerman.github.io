%{
---------------------------------------------------------------------------
This function classifies each sample based off of the probability matrix
created in the buildMatrix() function.

1st it saves the labels from the matrix, then removes the names and labels
columns (6 and 7)

The remaining 5 coloumns are the probabilities for each class, for each 
sample. Column 1 is class 0, column 2 is class 1.. column 5 is class 4. 
Row 1 is sample 1, row 2 is sample 2 ...

maxProb is the highest probability of the 5 columns(classes), ind is the 
column(class).

guesses are the predicted values.
---------------------------------------------------------------------------
%}

function [labels, guesses] = predictions(probMat)

labels = num2str(probMat(:,7));

probMat(:,6:7) = [];

[maxProb,ind] = max(probMat, [], 2);

guesses = num2str(ind - 1);
end