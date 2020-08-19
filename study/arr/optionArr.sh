#!/bin/bash
#Author:liukai
#Time:2020-08-18 11:52:01
#Description:操作数组

#数组的长度
arr=(a brand c d)
echo ${#arr[@]} #输出数组的长度
echo ${#arr[1]} #输出数组下标为1的元素的长度

#提取数组序号
arr=([4]=a [7]=b [9]=c)
echo ${!arr[@]}
for i in ${!arr[@]};do
    echo ${arr[i]}
done

#提取数组成员
food=(apples bananas cucumbers dates eggs fajitas grapes)
echo ${food[@]:1:1}
echo ${food[@]:1:3}
echo ${food[@]:4}

#追加数组成员
foo=(a b c)
echo ${foo[@]}
foo+=(d e f)
echo ${foo[@]}

#删除数组及元素
arr=(a b c d e f)
echo "删除前:"${arr[@]}";索引:"${!arr[@]}";长度:"${#arr[@]}
unset arr[1]
echo "删除后:"${arr[@]}";索引:"${!arr[@]}";长度:"${#arr[@]}

#隐藏数组的成员，但是长度和索引不变
arr=(a b c d e f)
echo "隐藏前:"${arr[@]}";索引:"${!arr[@]}";长度:"${#arr[@]}
arr[1]=""
echo "隐藏后:"${arr[@]}";索引:"${!arr[@]}";长度:"${#arr[@]}

#清空数组
unset arr
echo ${arr[@]}

#关联数组 只有新版本支持
#declare -A colors
#colors["red"]="#ff0000"
#colors["green"]="#00ff00"
#colors["blue"]="#0000ff"
#echo ${colors["red"]}
