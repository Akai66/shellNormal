#!/bin/bash
#Author:liukai
#Time:2020-08-17 14:54:07
#Description:for ... in 循环

#遍历单词列表
for i in word1 word2 word3;do
    echo $i
done

#列表可以由通配符产生
for i in *.png;do
    ls -l $i
done

count=0
#列表可以由子命令产生
for i in $(cat ~/.bash_profile);do
    count=$((count+1))
    echo "Word $count ($i) contains $(echo -n $i | wc -c) characters"
done

#列表可以来自命令行参数$@
for param in $@;do
    echo $param
done

