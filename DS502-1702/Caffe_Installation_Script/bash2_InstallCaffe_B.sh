#!/bin/bash

export TERM=xterm

clear

echo "======================================="
echo "step1: "

conda install --yes python

echo "======================================="
echo "step2: "

conda install --yes hdf5 && brew uninstall hdf5

echo "======================================="
echo "step3: "

conda install --yes --channel https://conda.anaconda.org/conda-forge protobuf=3.3.0 

echo "======================================="
echo "step4: "

conda install --yes pydot

echo "======================================="
echo "step5: "

conda  install --yes graphviz

echo "======================================="
echo "step6: "

cd ~/caffe && cp Makefile.config.example Makefile.config

echo "======================================="
echo -e "step7:\n[NOTE]请在 ~/caffe/Makefile.config 中手动修改配置信息\n（ 可参考 Makefile_config.html 文件）"

open -a TextEdit ~/caffe/Makefile.config

echo "======================================="
echo -e "step8:\n[NOTE]请确认已在 ~/caffe/Makefile.config 中手动修改配置并保存，\n完成后请在新窗口中继续执行脚本 bash3_InstallCaffe-C.sh"

open -a terminal `pwd`

exit
