%{
---------------------------------------------------------------------------
This function makes an .xlsx spreadsheet from the data. This spreadsheet
was used to create data.pdf. data.pdf is added to the final pdf report. If
the CNNs are not retrained the script does not run and data.pdf is used in
the final report. If the CNNs are retrained, this function runs and saves
the .xlsx document. The document is not put into the final report but can 
be viewed in the main folder. The data.pdf is excluded from the final pdf
because the data would not match the confusion matrix or final bar graph.
---------------------------------------------------------------------------
%}
function probablityMatrixPage(probM, hyp);

data = cat(2,probM, str2num(hyp));
%order of data is:
% 0, 1, 2, 3, 4, sample, label, prediction
idx = [6 1 2 3 4 5 7 8];
data = data(:,idx);

filename = 'Data_From_HW4_Zimmerman.xlsx';
vars = ["Sample No", "Class0", "Class1", "Class2", "Class3", "Class4", ...
    "Label", "Predict"];
writematrix(vars, filename, 'Sheet',1, 'Range', 'A1:H1');
writematrix(data, filename, 'Sheet',1, 'Range', 'A2:H104');

end