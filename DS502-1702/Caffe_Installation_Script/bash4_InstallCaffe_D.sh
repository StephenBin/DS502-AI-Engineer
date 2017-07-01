#!/bin/bash

export TERM=xterm

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

cd ~/caffe/python && echo " --> " && python -c "import caffe; print caffe.__version__"

echo "======================================="
echo -e "step7:\n[NOTE]如成功编译、安装并测试成功，上面会显示 caffe 的版本号。例如：1.0.0。\n请在新窗口中继续执行脚本 bash5_InstallCaffe-E.sh"

exit




