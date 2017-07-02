#!/bin/bash

export TERM=xterm

clear

echo "======================================="
echo "step1: "

brew install -vd snappy leveldb

echo "======================================="
echo "step2: "

brew install -vd gflags glog

echo "======================================="
echo "step3: "

brew tap homebrew/science

echo "======================================="
echo "step4: "

brew install szip hdf5

echo "======================================="
echo "step5: "

brew install lmdb opencv

echo "======================================="
echo "step6: "

brew install --build-from-source --with-python -vd protobuf

echo "======================================="
echo "step7: "

brew install --build-from-source -vd boost boost-python

echo "======================================="
echo "step8: "

cd ~/ && git clone https://github.com/BVLC/caffe.git

echo "======================================="
echo "step9: "

brew install cmake

echo "======================================="
echo "step10: "

curl https://repo.continuum.io/archive/Anaconda2-4.4.0-MacOSX-x86_64.sh -o ~/Downloads/anaconda_installer.sh --progress

echo "======================================="
echo "step11: "

bash ~/Downloads/anaconda_installer.sh

echo "======================================="
echo "step12: "

rm ~/Downloads/anaconda_installer.sh

echo "======================================="
echo -e "step13:\n[NOTE]请在新窗口中继续执行脚本 bash2_InstallCaffe-B.sh"

open -a terminal `pwd`

exit
