#!/bin/bash
#Author:liukai
#Time:2020-08-17 16:19:12
#Description:for循环

#循环条件放在双重圆括号中,另外,圆括号中使用变量，不必加上$符号
for (( i=0;i<5;i++));do
    echo $i
done

#省略for条件部分的三个语句，等同于无限循环
for ((;;));do
    read -p "input > " var
    if [ "$var" == "bye" ];then
        break
    fi
done
