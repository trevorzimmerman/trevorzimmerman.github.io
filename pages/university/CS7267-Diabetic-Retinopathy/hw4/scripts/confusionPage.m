%{
---------------------------------------------------------------------------
Confusion chart is created and saved as a pdf page.
---------------------------------------------------------------------------
%}

function confusionPage(truth, hyp)

cc = confusionchart(truth, hyp);
cc.Title = 'Diabetic Retinopathy Classification Using Deep Learning';
cc.RowSummary = 'row-normalized';
cc.ColumnSummary = 'column-normalized';

set(gcf,'Units','inches');
set(gcf,...
    'PaperPosition',[0 0 11 8.5],...
    'PaperSize',[11 8.5],...
    'Visible','off');

pdfConf = 'cmTemp.pdf';
print('-vector','-dpdf',pdfConf);

end