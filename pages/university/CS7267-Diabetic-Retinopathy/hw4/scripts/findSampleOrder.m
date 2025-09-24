%{
---------------------------------------------------------------------------
Matlab was not used to put the data in the correct file structure. This
created a problem keeping track of the original samples. This script was
created so the final probability matrix has the correct sample names 
associated with the results.

Essentially, it returns 103 x 1 array of the test data sample names.

For example: 
inside the folder ...\scripts\data\TestData\0 is all the data with the 
labels 0. This script copies each name as a number:
[29 30 37 ... 99 103]
Then does the same thing to the remaining folders and concatenates all the 
folders' order array.
---------------------------------------------------------------------------
%}

function matOrder = findSampleOrder()
    fInfo = dir('../hw4/scripts/data/TestData/0');
    for i = 1:(height(fInfo)-2)
        str0(i) = extractBetween([fInfo(i+2).name], "D_", "_-");
        matOrder0(i,1) = str2num(cell2mat(str0(1,i)));
    end
    fInfo = dir('../hw4/scripts/data/TestData/1');
    for i = 1:(height(fInfo)-2)
        str1(i) = extractBetween([fInfo(i+2).name], "D_", "_-");
        matOrder1(i,1) = str2num(cell2mat(str1(1,i)));
    end
    fInfo = dir('../hw4/scripts/data/TestData/2');
    for i = 1:(height(fInfo)-2)
        str2(i) = extractBetween([fInfo(i+2).name], "D_", "_-");
        matOrder2(i,1) = str2num(cell2mat(str2(1,i)));
    end
    fInfo = dir('../hw4/scripts/data/TestData/3');
    for i = 1:(height(fInfo)-2)
        str3(i) = extractBetween([fInfo(i+2).name], "D_", "_-");
        matOrder3(i,1) = str2num(cell2mat(str3(1,i)));
    end
    fInfo = dir('../hw4/scripts/data/TestData/4');
    for i = 1:(height(fInfo)-2)
        str4(i) = extractBetween([fInfo(i+2).name], "D_", "_-");
        matOrder4(i,1) = str2num(cell2mat(str4(1,i)));
    end
    matOrder = cat(1,matOrder0, matOrder1, matOrder2, matOrder3, matOrder4);
end