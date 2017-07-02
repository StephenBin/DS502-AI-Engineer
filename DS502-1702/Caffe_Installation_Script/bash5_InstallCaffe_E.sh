#!/bin/bash

export TERM=xterm

clear

sudo -S ./binary

echo "======================================="
echo "step1: "

sudo rm -r ~/python

echo "======================================="
echo "step2: "

mkdir ~/python

echo "======================================="
echo "step3: "

cp -R ~/caffe/python/caffe ~/python

echo "======================================="
echo "step4: "

echo -e "\n# added the caffe python module directory to \$PYTHONPATH" >> ~/.bash_profile

echo "======================================="
echo "step5: "

echo -e "export PYTHONPATH=~/python:\$PYTHONPATH" >> ~/.bash_profile

echo "======================================="
echo "step6: "

source ~/.bash_profile

echo "======================================="
echo -e "step7:\n[NOTE]Try type python anywhere and import caffe.\ncaffe version："

cd ~/ && echo " --> " && python -c "import caffe; print caffe.__version__"

echo "======================================="
<<<<<<< HEAD
echo -e "step8:\n[NOTE]如环境变量设置正确，上面会显示 caffe 的版本号。例如：1.0.0。"
=======
echo -e "step7:\n[NOTE]如环境变量设置正确，上面会显示 caffe 的版本号。例如：1.0.0。"
>>>>>>> 4a7d29b4b6a95f7fd065509f193f688f36d69ded

exit
