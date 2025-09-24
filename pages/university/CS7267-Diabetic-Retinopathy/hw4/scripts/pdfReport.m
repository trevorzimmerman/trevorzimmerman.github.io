%{
---------------------------------------------------------------------------
This function uses the script mergePdfs.m written by not me.

This function combines all the pdf files into 1 pdf file and deletes the
generated temp pdfs.
---------------------------------------------------------------------------
%}

function [pdfFinal] = pdfReport(REPLY)
set(gcf,'Units','inches');
set(gcf,...
    'PaperPosition',[0 0 11 8.5],...
    'PaperSize',[11 8.5],...
    'Visible','off');

pdfFinal = 'HW4_Report_Zimmerman.pdf';
pg1 = 'Cover.pdf';
pg2 = 'pg2.pdf';
pg3 = 'cmTemp.pdf';
pg4 = 'data.pdf';       
pg5 = 'barTemp.pdf';

if REPLY == 0
    mergeFiles = {pg1, pg2, pg3, pg4, pg5};
else
    mergeFiles = {pg1, pg2, pg3 pg5};
end
mergePdfs(mergeFiles, pdfFinal);
delete *Temp.pdf;
pdfFinal = [pdfFinal,' completed!'];
end