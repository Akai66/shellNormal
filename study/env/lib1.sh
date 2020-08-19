#!/bin/bash
#Author:liukai
#Time:2020-08-18 19:56:38
#Description:lib1

#测试BASH_SOURCE环境变量
#BASH_SOURCE 返回一个数组，内容是当前的脚本调用堆栈，该数组的0号成员是当前执行的脚本，1号成员是调用当前脚本的脚本，以此类推

set -euxo pipefail

function func1(){
    echo "func1:BASH_SOURCE0 is ${BASH_SOURCE[0]}"
    echo "func1:BASH_SOURCE1 is ${BASH_SOURCE[1]}"
    #echo "func1:BASH_SOURCE2 is ${BASH_SOURCE[2]}"
    func2
}   
