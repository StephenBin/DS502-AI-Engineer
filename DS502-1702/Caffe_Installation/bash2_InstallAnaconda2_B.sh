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
echo -e "step6:\n[NOTE]完成后请在新窗口中继续执行脚本 bash3_installCaffe.sh"

open -a terminal `pwd`

exit
