#!/bin/bash
#Author:liukai
#Time:2020-08-19 09:30:04
#Description:mktemp和trap命令用法

#trap命令指定退出时的清楚操作
trap 'rm -rf "$myTmpFile" "$myTmpDir" "$tmpFile3"' EXIT

myTmpFile=$(mktemp) || exit 1

echo "Our temp file is $myTmpFile"

myTmpDir=$(mktemp -d) || exit 1
echo "Our temp dir is $myTmpDir"

#mktemp -p 参数可以指定临时文件所在的目录，默认是使用$TMPDIR环境变量指定的目录，如果这个变量没设置，那么使用/tmp目录
#myTmpFile2=$(mktemp -p ~/)
#echo "tmpFile2 is $myTmpFile2"

#mktemp -t 参数指定临时文件的文件名模板

tmpFile3=$(mktemp -t mytemp)
echo "tmpFile3 is $tmpFile3"


#trap 命令用来在bash脚本中响应系统信号,比如：中断，退出等信号
#最常见的使用场景，就是在bash脚本中指定退出时执行的清理命令
#如果trap需要出发多条命令，可以封装一个bash函数
function egress(){
    command1
    command2
    command3
}

trap egress EXIT
