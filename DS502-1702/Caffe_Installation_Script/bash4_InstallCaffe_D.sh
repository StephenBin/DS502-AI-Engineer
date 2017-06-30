#!/bin/bash

clear

echo "======================================="
echo "step1: "

cd ~/caffe/build && make clean

echo "======================================="
echo "step2: "

cd ~/caffe/build && make all

echo "======================================="
echo "step3: "

cd ~/caffe/build && make install

echo "======================================="
echo "step4: "

cd ~/caffe/build && make runtest

echo "======================================="
echo "step5: "

cd ~/caffe/build && make pytest

echo "======================================="
echo -e "step6:\n[NOTE]caffe version："

cd ~/caffe/python && python -c "import caffe; print caffe.__version__"

exit




