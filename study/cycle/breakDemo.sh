#!/bin/bash
#Author:liukai
#Time:2020-08-17 16:33:43
#Description:break跳出循环

for i in 1 2 3 4 5;do
    echo $i
    if [ $i -eq 3 ];then
        break
    fi
done
