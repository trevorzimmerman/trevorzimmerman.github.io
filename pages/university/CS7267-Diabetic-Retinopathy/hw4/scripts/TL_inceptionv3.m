%{
---------------------------------------------------------------------------
This function is almost a copy of this tutorial:
https://www.mathworks.com/help/deeplearning/ug/train-deep-learning-network-to-classify-new-images.html

The pretrained network inception3v is used instead of googlenet.

This was removed from the example script:
analyzeNetwork(net) was removed. The fig was removed. The plot was removed 
from options.

This was added to the script:
trainFile and testFile are the paths were the data is saved. mbs is the
miniBatchSize variable. Rotation was added to imageDataAugmenter. The
function returns a probability array (probs) and the overall accuracy
of the validation (accuracy).
---------------------------------------------------------------------------
%}

function [probs, accuracy] = TL_inceptionv3(trainFile,testFile, mbs)

imdsTrain = imageDatastore([trainFile], ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames'); 

imdsValidation = imageDatastore(testFile, ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames'); 

net = inceptionv3;

net.Layers(1);
inputSize = net.Layers(1).InputSize;

lgraph = layerGraph(net);

[learnableLayer,classLayer] = findLayersToReplace(lgraph); 

numClasses = numel(categories(imdsTrain.Labels));

if isa(learnableLayer,'nnet.cnn.layer.FullyConnectedLayer')
    newLearnableLayer = fullyConnectedLayer(numClasses, ...
        'Name','new_fc', ...
        'WeightLearnRateFactor',10, ...
        'BiasLearnRateFactor',10);
    
elseif isa(learnableLayer,'nnet.cnn.layer.Convolution2DLayer')
    newLearnableLayer = convolution2dLayer(1,numClasses, ...
        'Name','new_conv', ...
        'WeightLearnRateFactor',10, ...
        'BiasLearnRateFactor',10);
end

lgraph = replaceLayer(lgraph,learnableLayer.Name,newLearnableLayer);

newClassLayer = classificationLayer('Name','new_classoutput');
lgraph = replaceLayer(lgraph,classLayer.Name,newClassLayer);

layers = lgraph.Layers;
connections = lgraph.Connections;

layers(1:10) = freezeWeights(layers(1:10));
lgraph = createLgraphUsingConnections(layers,connections);

pixelRange = [-30 30];
scaleRange = [0.9 1.1];

imageAugmenter = imageDataAugmenter( ...
    'RandRotation',[0 360], ...
    'RandXReflection',true, ...
    'RandXTranslation',pixelRange, ...
    'RandYTranslation',pixelRange, ...
    'RandXScale',scaleRange, ...
    'RandYScale',scaleRange);
augimdsTrain = augmentedImageDatastore(inputSize(1:2),imdsTrain, ...
    'DataAugmentation',imageAugmenter);

augimdsValidation = augmentedImageDatastore(inputSize(1:2),imdsValidation);

miniBatchSize = mbs;
valFrequency = floor(numel(augimdsTrain.Files)/miniBatchSize);
options = trainingOptions('sgdm', ...
    'MiniBatchSize',miniBatchSize, ...
    'MaxEpochs',6, ...
    'InitialLearnRate',3e-4, ...
    'Shuffle','every-epoch', ...
    'ValidationData',augimdsValidation, ...
    'ValidationFrequency',valFrequency, ...
    'Verbose',false);

net = trainNetwork(augimdsTrain,lgraph,options);

[YPred,probs] = classify(net,augimdsValidation);
accuracy = mean(YPred == imdsValidation.Labels);

end