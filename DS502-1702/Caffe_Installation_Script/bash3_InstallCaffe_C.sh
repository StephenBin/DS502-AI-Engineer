#!/bin/bash

export TERM=xterm

clear

echo "======================================="
echo "step1: "

cd ~/caffe && mkdir build

echo "======================================="
echo "step2: "

cd ~/caffe/build && cmake ..

echo "======================================="
echo -e "step3:\n[NOTE]请在 ~/caffe/build/CMakeCache.txt 文本中搜索 \"CPU_ONLY\",\n手动将 \"OFF\" 改为 \"ON\"，如下所示： \n//Build Caffe without CUDA support\nCPU_ONLY:BOOL=ON"

open -a TextEdit ~/caffe/build/CMakeCache.txt

echo "======================================="
echo -e "step4:\n[NOTE]请确认已将 ~/caffe/build/CMakeCache.txt 文本中 \"CPU_ONLY\" 的值由 \"OFF\" 改为 \"ON\" 并保存，\n完成后请在新窗口中继续执行脚本 bash4_InstallCaffe-D.sh"

open -a terminal `pwd`

exit



