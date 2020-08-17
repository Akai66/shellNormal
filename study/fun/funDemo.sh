#!/bin/bash
#Author:liukai
#Time:2020-08-17 17:18:20
#Description:函数

function hello(){
    echo "hello $1!"
}

function today(){
    echo "Today's date is: "$(date +"%A, %B %-d, %Y")
}

function alice(){
    echo "alice: $@"
    echo "arguments num : $#"
    for param in $@;do
        echo -n "$param "
    done
    echo
}

function log_msg(){
    echo "[ $(date +"%F %T") ]: $@ "
}

function return_value() {
    return 8
}

hello liukai

today

alice one two three four

log_msg "this is sample log message"

#可以用$?获取函数的返回值
return_value

echo "value returned by function is: $? "

declare -f    #查看当前shell已定义的所有函数,-f参数会同时输出函数名和函数定义

declare -F    #仅查看函数名
