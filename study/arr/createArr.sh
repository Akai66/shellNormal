#!/bin/bash
#Author:liukai
#Time:2020-08-17 19:04:59
#Description:数组

#创建数组
#采用逐个赋值的方式创建，数组下标从0开始
arr[0]=one
arr[1]=two
arr[2]=three

for i in "${arr[@]}";do
    echo $i
done

#采用一次性赋值的方式创建
arr=(value1 value2 value3)

#可以指定索引
arr=([2]=c [0]=a [1]=b)


#可以只为某些值指定位置,hatter是数组的0号位置，duchess是5号位置，alice是6号位置
names=(hatter [5]=duchess alice)

#可以使用通配符，定义数组
mp3s=(*.mp3)   #会将当前目录中所有.mp3结尾的文件，放进一个数组

#可以使用declare -a 命令定义数组
declare -a Arr


#read -a 命令将用户的输入，读入一个数组
read -a dice
