%{
---------------------------------------------------------------------------
This script uses transfer learning to retrain a cnn to classify 11 sets of
images. 

10 sets are all the combinations of the data:
n=5, r=2, 5!/(3!*2!) = 10

1 set is all the data.

It returns 1 probability array that contains the summation of the 11 
predicted probabilities (prob_mat) and 1 accuracy array that contains the
classification accuracies of each of the 11 sets.
---------------------------------------------------------------------------
%}

function[prob_mat, Accuracy] = buildMatrix()

%{
---------------------------------------------------------------------------
train_file and test_file are the names of the folders where the data is
located. mini_Batch_Size is an array of the mini batch sizes used to train
the network.
---------------------------------------------------------------------------
%}
train_file = ["TrainData" "TrainData01" "TrainData02" "TrainData03" ...
    "TrainData04" "TrainData12" "TrainData13" "TrainData14" ...
    "TrainData23" "TrainData24" "TrainData34"];

test_file = ["TestData" "TestData01" "TestData02" "TestData03" ...
    "TestData04" "TestData12" "TestData13" "TestData14" "TestData23" ...
    "TestData24" "TestData34"];

mini_Batch_Size = [7 22 11 53 47 37 12 9 17 9 16];

%{
---------------------------------------------------------------------------
Each time this for loop runs (11 times), a new cnn is retrained.

The data in the folder '../hw4/scripts/data/' was put into this file 
structure using mD_2.py (this script can be found here: 
'../hw4/scripts/data/other/'

The 1st cycle of the for loop runs all the data. All data is given a 
probability.

After the 1st cycle, all remaining cycles only have 2 sets of data (else
statement). 
---------------------------------------------------------------------------
%}
for i = 1:(width(train_file))
    data_train = ['../hw4/scripts/data/' + train_file(i) ];
    data_test = ['../hw4/scripts/data/' + test_file(i) ];
    [x,y] = TL_inceptionv3(data_train, data_test, mini_Batch_Size(i));
    Accuracy(i) = y;
    if i == 1
        prob_mat = x;   
        sample_order = findSampleOrder();   % see function for more details
                                            % this is needed to keep track
                                            %of the sample names
        prob_mat = cat(2,prob_mat, sample_order);   %add sample name column
        for j = 1:34            % the for loops are adding a label colomn
            prob_mat(j,7) = 0;  
        end
        for j = 35:39
            prob_mat(j,7) = 1;
        end
        for j = 40:71
            prob_mat(j,7) = 2;
        end
        for j = 72:90
            prob_mat(j,7) = 3;
        end
        for j = 91:103
            prob_mat(j,7) = 4;
        end
    else
        %{
        -------------------------------------------------------------------
        This else statement adds the new probabilites to the final matrix 
        (prob_mat). prob_mat is a 103 x 7 array. All probability matrices
        being add to this array are of size: n x 2. The first for loop adds
        1 classes probabilities, the second for loop adds the other classes
        probabilities. See findIndex() script for details about variables.
        -------------------------------------------------------------------
        %}
        [C1, C2, R1, R2, R3, R4] = findIndex(i);
        k = 1;
        for j = R1:R2
            prob_mat(j,C1) = prob_mat(j,C1) + x(k,1);
            prob_mat(j,C2) = prob_mat(j,C2) + x(k,2);
            k = k + 1;
        end
        for j = R3:R4
            prob_mat(j,C1) = prob_mat(j,C1) + x(k,1);
            prob_mat(j,C2) = prob_mat(j,C2) + x(k,2);
            k = k + 1;
        end
    end
end
%{
---------------------------------------------------------------------------
The row order before the line below has been by labels/folders. The final 
step is to put the data in the original order, by name, before returning
the final array.
---------------------------------------------------------------------------
%}
prob_mat = sortrows(prob_mat,6);    
end