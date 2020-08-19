#!/bin/bash
#Author:liukai
#Time:2020-08-18 10:31:13
#Description:读取数组

#访问单个元素
arr=(a b c d)
echo ${arr[1]}

#遍历数组的所有元素
echo ${arr[@]}

for i in "${arr[@]}";do
    echo $i
done

#拷贝数组
arrCopy=("${arr[@]}")
echo ${arrCopy[@]}

#拷贝数组的同时，添加新元素
arrCopy2=("${arr[@]}" e)
echo ${arrCopy2[@]}

#默认位置
#赋值的时候不指定位置，实际上是给0位置赋值
declare -a foo
foo=1

#引用数组元素时，没有指定位置，结果返回的是0号位置的元素
echo $foo
