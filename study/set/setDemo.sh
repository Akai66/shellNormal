#!/bin/bash
#Author:liukai
#Time:2020-08-18 17:34:37
#Description:set命令

#bash会默认忽略不存在的变量,但是set -u 可以改变这种行为，在脚本头部加上它，遇到不存在的变量就会报错，并停止执行
set -u 

    
#bash默认情况下，脚本执行后，只输出运行结果，有时候多个命令连续执行，产生的运行结果就会连续输出，有时会分不清某一段内容是什么命令产生的，set -x 用来在运行结果之前，先输出执行的那一行命令
set -x


#set -e 只要脚本执行错误，就停止执行，但是识别不了带管道符的命令
set -e

#set -o pipefail 解决set -e 不适用于管道命令的情况，任何一个子命令失败，就会停止执行


#以上命令+u +x +e +o 就是取消的意思
set +e  #取消 
command1
command2

set -e  #恢复


#一般这么使用
set -euxo pipefail
