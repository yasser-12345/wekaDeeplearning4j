#!/bin/bash

java -Xmx5g -cp ${WEKA_HOME}/weka.jar weka.Run \
     .Dl4jMlpClassifier \
     -S 1 \
     -iterator "weka.dl4j.iterators.instance.ImageInstanceIterator -height 32 -imagesLocation /home/slang/datasets/cifar10/train -numChannels 1 -width 32 -bs 32" \
     -zooModel "weka.dl4j.zoo.AlexNet" \
     -iteration-listener "weka.dl4j.listener.EpochListener" \
     -numEpochs 10 \
     -t /home/slang/datasets/cifar10/cifar10.arff \
     -split-percentage 66
