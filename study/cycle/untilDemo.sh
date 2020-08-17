#!/bin/bash
#Author:liukai
#Time:2020-08-17 14:36:53
#Description:until循环

number=0
until [ $number -ge 10 ];do
    echo "number=$number"
    number=$((number+1))
done
