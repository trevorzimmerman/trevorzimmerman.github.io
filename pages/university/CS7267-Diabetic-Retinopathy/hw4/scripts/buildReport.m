%{
---------------------------------------------------------------------------
This function builds a report.
---------------------------------------------------------------------------
%}

function [msg] = buildReport(probMat, accMat, labels, guesses, reply)

confusionPage(labels, guesses);

if reply == 1
    probablityMatrixPage(probMat, guesses);
end

accuracyPage(accMat);

msg = pdfReport(reply);
end