# Caffe 安装脚本

本安装脚本适用于：  Caffe + Anaconda2 + macOS`10.12.5` without GPU or CUDA

## 安装路径

本安装脚本会将 Caffe 和 Anaconda2 默认安装在 ~/ 目录下（当前登陆用户的 Home 目录）。

caffe module 路径为：~/python/caffe

## 用户环境变量

以下环境变量在脚本执行过程中会自动添加到 ~/.bash_profile ：

`# added by Anaconda2 4.4.0 installer`
export PATH="/Users/OliverMacBook/anaconda2/bin:$PATH"

`# added the caffe python module directory to $PYTHONPATH`
export PYTHONPATH=~/python:$PYTHONPATH

## 预先准备

请预先安装好 [Homebrew](https://brew.sh/) 、[curl](http://macappstore.org/curl/) 和 git。

安装方法：

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null`

`brew install curl`

`brew install git`

建议安装 VPN：

国内通过 `git clone https://github.com/BVLC/caffe.git` 下载 caffe 可能龟速到 hung up，建议开 `VPN`（fanqiang）。

## 脚本清单

bash0_RemoveCaffe.sh

bash1_InstallCaffe_A.sh

bash2_InstallCaffe_B.sh

bash3_InstallCaffe_C.sh

bash4_InstallCaffe_D.sh

bash5_InstallCaffe_E.sh

Makefile_config.html

README.md

## 清单说明

`bash0_RemoveCaffe.sh`：卸载、删除所有 package、Caffe、Anaconda2 以及环境变量。

`bash1_InstallCaffe_A.sh` ～ `bash4_InstallCaffe_D.sh`：下载、安装相关 package、Caffe、Anaconda2，编译、安装及测试 Caffe。

`bash5_InstallCaffe_E.sh`：将 ~/caffe/python 路径下的 caffe 文件夹（caffe module） 复制到 ~/python 路径下，并设置好环境变量。

`Makefile_config.html`：可作为配置 `Makefile.config` 文件的参考（ 适用于 Anaconda2 + 1 CPU without GPU ）。

## 脚本执行顺序

按 bash0 ～ bash5 顺序执行 

## 脚本执行方法

方法一：在 terminal.app(终端) 中键入 `bash` 加`空格` ，将要执行的 .sh 脚本文件直接拖进 terminal，`回车`。

方法二：在 PyCharm 中安装 bash 插件，然后点击右键，选择`Run`执行 .sh 脚本

## 脚本执行时间

耗时较长脚本如下：

`bash1_InstallCaffe-A.sh` 耗时较长（ 大约需要 90 min ）

`bash4_InstallCaffe-D.sh` 耗时较长 ( 大约需要 10 min)

## 脚本提示

`bash0_RemoveCaffee.sh`     运行到 `step14`，会提示在 `.bash_profile` 中删除环境变量。
                            运行到 `step15`，会弹出新的 terminal 窗口，并提示在新终端中执行脚本 `bash1_InstallCaffe-A.sh`。

`bash1_InstallCaffe-A.sh`   运行到 `step11` ( 完成前 10 步大约需要 60 min) 会提示用户安装 anaconda2，需要用户确认：license（`yes`）、安装路径（直接`回车`即可）以及添加环境变量（`yes`）。
                            运行到 `step13`，会弹出新的 terminal 窗口，并提示在新终端中执行脚本 `bash2_InstallCaffe-B.sh`。
                            

`bash2_InstallCaffe-B.sh`   运行到 `step7`，会提示修改配置文件 `Makefile.config`。
                            运行到 `step8`，会弹出新的 terminal 窗口，并提示在新终端中执行脚本 `bash3_InstallCaffe-C.sh`。

`bash3_InstallCaffe-C.sh`   运行到 `step3`，会提示将 `CMakeCache.txt` 文本中的 `CPU_ONLY` 的值由 `OFF` 改为 `ON`。
                            运行到 `step4`，会弹出新的 terminal 窗口，并提示在新终端中执行脚本 `bash4_InstallCaffe-D.sh`。
                            
`bash4_InstallCaffe-D.sh`   运行到 `step7`，会显示`caffe version` 。如成功编译、安装并测试成功，这里会显示 caffe 的版本号。例如：1.0.0。另外，还会弹出新的 terminal 窗口，并提示在新终端中执行脚本 `bash5_InstallCaffe-E.sh`。

`bash5_InstallCaffe-E.sh`   运行到 `step8`，会显示`caffe version`。如环境变量设置正确，这里会显示 caffe 的版本号。例如：1.0.0。
