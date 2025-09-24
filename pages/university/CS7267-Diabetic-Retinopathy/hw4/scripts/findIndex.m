%{
---------------------------------------------------------------------------
This script could be written better. 

It provides the index numbers needed to update the probability matrix being
created. c1 and c2 are the 2 column positions need for the set of data
that was trained, the r's are the 4 rows needed.

Example: ind == 6 is using data from the folder testing images with labels
1 and 2. The columns associated with these labels are 2 and 3. The rows
associated with them are 35-39 and 40-71.
---------------------------------------------------------------------------
%}

function [c1, c2, r1, r2, r3, r4] = findIndex(ind)
    if ind == 2             %01
        c1 = 1; c2 = 2;
        r1 = 1; r2 = 34;
        r3 = 35; r4 = 39;
    elseif ind == 3         %02
        c1 = 1; c2 = 3;
        r1 = 1; r2 = 34;
        r3 = 40; r4 = 71;   
    elseif ind == 4         %03
        c1 = 1; c2 = 4;
        r1 = 1; r2 = 34;
        r3 = 72; r4 = 90;    
    elseif ind == 5         %04
        c1 = 1; c2 = 5;
        r1 = 1; r2 = 34;
        r3 = 91; r4 = 103;  %      
    elseif ind == 6         %12
        c1 = 2; c2 = 3;
        r1 = 35; r2 = 39;
        r3 = 40; r4 = 71;
    elseif ind == 7         %13
        c1 = 2; c2 = 4;
        r1 = 35; r2 = 39;
        r3 = 72; r4 = 90; 
    elseif ind == 8         %14
        c1 = 2; c2 = 5;
        r1 = 35; r2 = 39;
        r3 = 91; r4 = 103;
    elseif ind == 9         %23
        c1 = 3; c2 = 4;
        r1 = 40; r2 = 71;
        r3 = 72; r4 = 90;
    elseif ind == 10        %24
        c1 = 3; c2 = 5;
        r1 = 40; r2 = 71;
        r3 = 91; r4 = 103;
    elseif ind == 11        %34
        c1 = 4; c2 = 5;
        r1 = 72; r2 = 90;
        r3 = 91; r4 = 103;
    end
end