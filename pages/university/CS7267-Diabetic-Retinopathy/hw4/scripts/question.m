%{
---------------------------------------------------------------------------
This function allows the script to run without rebuilding the probability
matrix. 
---------------------------------------------------------------------------
%}

function reply = question()

disp(' ')
disp('To retrain the CNNs, it takes about 20-30 minutes for the script')
disp('to run.')
disp(' ')
disp('If retraining is skipped, default variables will be loaded to the')
disp('workspace. It takes seconds for the script to run.')
disp(' ')
disp('Which ever way the script is run, the result will be saved as')
disp('HW4_Report_Zimmerman.pdf')
disp(' ')
disp(' ')
prompt = "Do you want to retrain the CNNs? Y/N [N]: ";
txt = input(prompt,"s");
if isempty(txt)
    reply = 0;
elseif (txt == 'y' || txt == 'Y')
    reply = 1;
    disp(' ')
    disp('Please wait, the CNNs are being retrained.')
    disp(' ')
else
    reply = 0;
    disp(' ')
end

end