#!/bin/bash

export TERM=xterm

clear

sudo -S ./binary

echo "======================================="
echo "step1: "

sudo rm -r ~/python

echo "======================================="
echo "step2: "

sudo rm -r ~/caffe

echo "======================================="
echo "step3: "

cd ~/ && git clone https://github.com/BVLC/caffe.git --progress

echo "======================================="
echo "step4: "

cd ~/caffe && cp Makefile.config.example Makefile.config

echo "======================================="
echo -e "step5:\n[NOTE]请在 ~/caffe/Makefile.config 中手动修改配置信息\n（ 可参考 Makefile_config.html 文件）"

open -a TextEdit ~/caffe/Makefile.config

echo "======================================="
echo -e "step6:\n[NOTE]请确认已在 ~/caffe/Makefile.config 中手动修改配置并保存，\n完成后请在新窗口中继续执行脚本 bash4_doCMake.sh"

open -a terminal `pwd`

exit
