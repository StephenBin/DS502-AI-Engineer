#!/bin/bash

export TERM=xterm

clear

sudo -S ./binary

echo "======================================="
echo "step1: "

brew uninstall leveldb snappy

echo "======================================="
echo "step2: "

brew uninstall glog gflags

echo "======================================="
echo "step3: "

brew uninstall hdf5 szip

echo "======================================="
echo "step4: "

brew uninstall lmdb opencv

echo "======================================="
echo "step5: "

brew uninstall protobuf

echo "======================================="
echo "step6: "

brew uninstall boost-python boost

echo "======================================="
echo "step7: "

sudo sudo rm -r ~/python

echo "======================================="
echo "step8: "

sudo rm -r ~/caffe

echo "======================================="
echo "step9: "

brew uninstall cmake

echo "======================================="
echo "step10: "

conda install --yes anaconda-clean && anaconda-clean --yes

echo "======================================="
echo "step11: "

rm -r ~/anaconda2

echo "======================================="
echo "step12: "

rm -r ~/.anaconda_backup

echo "======================================="
echo "step13: "

rm ~/Downloads/anaconda_installer.sh

echo "======================================="
echo -e "step14:\n[NOTE]请在 ～／.bash_profile 中手动删去以下环境变量： \n\n# added by Anaconda2 4.4.0 installer \nexport PATH=\"/Users/$(whoami)/anaconda2/bin:\$PATH\" "
echo -e "\n# added the caffe python module directory to \$PYTHONPATH \nexport PYTHONPATH=~/python:\$PYTHONPATH"

open -a TextEdit ~/.bash_profile

echo "======================================="
echo -e "step15:\n[NOTE]请确认已将 ～／.bash_profile 中 anaconda2 的环境变量删除并保存，\n完成后请在新窗口中继续执行脚本 bash1_InstallCaffe-A.sh"

open -a terminal `pwd`

exit

