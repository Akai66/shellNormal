#!/bin/bash
#Author:liukai
#Time:2020-08-13 19:23:08
#Description:test

echo -n "please,enter your firstname and lastname > "
read FN LN
echo "hi $FN $LN"

echo -n "please,enter one or more values > "
read
echo "REPLY = $REPLY"

filename='/etc/hosts'
while read myline;do
    echo $myline
done < $filename

#-t参数,设置超时的秒数
echo -n "输入一些文本 >"
if read -t 3 response;then
    echo "用户已经输入了,内容为:$response"
else
    echo "用户没有输入"
fi

#-p参数,指定用户输入的提示信息
read -p "enter one or more values >"
echo "REPLY = $REPLY"

#-a参数,将用户的输入赋值给一个数组，索引从0开始
read -p "input people names >" -a people
echo ${people[2]}

#-s参数,使用户的输入不显示在屏幕上
read -p "input your passport >" -s ps
echo -e "\nps:$ps"

FILE=/etc/passwd
read -p "enter a username >" username
info=$(grep "^$username:" $FILE)
if [ -n "$info" ];then
    IFS=":" read user pw uid gid name home shell <<< "$info"
    echo "User = '$user'"
    echo "UID = '$uid'"
    echo "GID = '$gid'"
    echo "Full Name = '$name'"
    echo "Home Dir = '$home'"
    echo "Shell = '$shell'"
else
    echo "No such user '$username'" >&2
    exit 1
fi
