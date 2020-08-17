#!/bin/bash
#Author:liukai
#Time:2020-08-17 16:35:48
#Description:continue跳出本次循环，继续下次循环

while read -p "what file do you want to test? > " filename;do
    if [ ! -e "$filename" ];then
        echo "The file does not exist"
        continue
    fi

    echo "You entered a valid file"
    break
done
