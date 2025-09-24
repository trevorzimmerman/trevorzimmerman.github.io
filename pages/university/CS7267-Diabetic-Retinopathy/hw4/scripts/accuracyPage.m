%{
---------------------------------------------------------------------------
This function makes a bar graph displaying the classification accuracies
for each test data sets. The graph is saved as a pdf.
---------------------------------------------------------------------------
%}
function accuracyPage(acc)

x = ["ALL" "01" "02" "03" ...
    "04" "12" "13" "14" ...
    "23" "24" "34"];
y = acc;
figure;
a=bar(x,y);
title('Total Classification Accuracy of Each Deep Learning Combination');
xlabel('Label Combination');
ylabel('Accuracy');

set(gcf,'Units','inches');
set(gcf,...
    'PaperPosition',[0 0 11 8.5],...
    'PaperSize',[11 8.5],...
    'Visible','off');

pdfAcc = 'barTemp.pdf';
print('-vector', '-dpdf', pdfAcc);
end