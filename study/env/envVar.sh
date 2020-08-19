#!/bin/bash
#Author:liukai
#Time:2020-08-18 19:41:33
#Description:环境变量

set -euxo pipefail
#LINENO
echo "This is line $LINENO"

#FUNCNAME 是一个数组，内容是当前的函数调用栈，该数组的0号成员是当前调用函数，1号成员是调用当前函数的函数，以此类推
function func1(){
    echo "func1:FUNCNAME0 is ${FUNCNAME[0]}"
    echo "func1:FUNCNAME1 is ${FUNCNAME[1]}"
#    echo "func1:FUNCNAME2 is ${FUNCNAME[2]}"
    func2
}

function func2(){
    echo "func2:FUNCNAME0 is ${FUNCNAME[0]}"
    echo "func2:FUNCNAME1 is ${FUNCNAME[1]}"
    echo "func2:FUNCNAME2 is ${FUNCNAME[2]}"
}

func1
