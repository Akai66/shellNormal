#!/bin/bash
#Author:liukai
#Time:2020-08-17 14:23:00
#Description:while循环

number=0
while [ $number -lt 10 ];do
    echo "number=$number"
    number=$((number+1))
done
