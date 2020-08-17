#!/bin/bash
#Author:liukai
#Time:2020-08-14 10:33:21
#Description:条件判断

read -p "输入一个1到3之间的数字 > " number
if [ "$number" == "1" ];then
    echo 1
elif [ "$number" == "2" ];then
    echo 2
elif [ "$number" == "3" ];then
    echo 3
else
    echo "输入不符合要求"
fi

#文件判断
File=~/.bash_profile  #这里不能加双引号，否则会识别为字符串
if [ -e "$File" ];then
    if [ -f "$File" ];then
        echo "$File is a regular file"
    fi

    if [ -d "$File" ];then
        echo "$File is a directory"
    fi

    if [ -L "$File" ];then
        echo "$File is a link"
    fi

    if [ -r "$File" ];then
        echo "$File is readable"
    fi

    if [ -w "$File" ];then
        echo "$File is writable"
    fi

    if [ -x "$File" ];then
        echo "$File is executable"
    fi
else
    echo "$File does not exist"
    exit 1
fi

#字符串判断
read -p "input your answer,yes/no/maybe > " answer
if [ -z "$answer" ];then
    echo "there is no answer" >&2 #重定向到标准错误，>和&之间不能有空格
    exit 1
fi

if [ "$answer" == "yes" ];then
    echo "the answer is yes"
elif [ "$answer" == "no" ];then
    echo "the answer is no"
elif [ "$answer" == "maybe" ];then
    echo "the answer is maybe"
else 
    echo "the answer is unknown"
fi

if [ "a" '>' 'b' ];then    #字符串比较>需要加单引号
    echo "a > b"
else
    echo "a < b"
fi


#整数判断 -eq:等于 -ne:不等于 -le:小于等于 -lt:小于 -ge:大于等于 -gt:大于
read -p "input a number > " num
if [ -z "$num" ];then
    echo "num is empty" >&2
fi

if [ $num -eq 0 ];then
    echo "num is zero"
fi

if [ $num -lt 0 ];then
    echo "num is negative"
else
    echo "num is positive"
fi

if [ $(($num%2)) -ne 0 ];then
    echo "num is odd"   #奇数
else
    echo "num is even"  #偶数
fi

#正则判断,只能在[[ expression ]]中语法中使用
INT=-5
if [[ "$INT" =~ ^-?[0-9]+$ ]];then
    echo "INT is an integer"
else
    echo "INT is not an integer " >&2
    exit 1
fi

MIN_VAL=1
MAX_VAL=100
INT=50

if [[ "$INT" =~ ^-?[0-9]+$ ]];then
    if [[ $INT -ge MIN_VAL && $INT -le MAX_VAL ]];then
        echo "$INT is within $MIN_VAL to $MAX_VAL "
    else
        echo "$INT is out of range"
    fi
else
    echo "INT is not an integer" >&2
    exit 1
fi

#test内部使用圆括号，必须转义,这种写法，只能用[ expression ]形式，并且&&要换成-a
if [ ! \( $INT -ge $MIN_VAL -a $INT -le $MAX_VAL \) ];then
    echo "$INT is outside $MIN_VAL to $MAX_VAL"
else
    echo "$INT is in range"
fi


#算数判断
INT=-5
if [[ "$INT" =~ ^-?[0-9]+$ ]];then
    if (( $INT == 0 ));then
        echo "INT is zero"
    else
        if (( $INT < 0 ));then
            echo "INT is negative"
        else
            echo "INT is positive"
        fi
        if (( $INT%2 == 0 ));then
            echo "INT is even"
        else
            echo "INT is odd"
        fi
    fi
else
    echo "INT is not an integer" >&2
fi

#case结构 bash4.0之前，case结构只能匹配一个条件，然后就会退出case结构，bash4.0之后，允许匹配多个条件，但是需要使用;;&来结束每个条件块
read -p "请输入一个1到3之间的数字 > " character
case $character in
    1 ) 
        echo 1
        ;;
    2 )
        echo 2
        ;;
    3 )
        echo 3
        ;;
    * )
        echo "输入不符合要求"
esac

OS=$(uname -s)
case "$OS" in
    FreeBSD )
        echo "This is FreeBSD"
        ;;
    Darwin )
        echo "This is Max OSX"
        ;;
    AIX )
        echo "This is AIX"
        ;;
    Minix )
        echo "This is Minix"
        ;;
    Linux )
        echo "This is Linux"
        ;;
    * )
        echo "Failed to identify this OS"
        ;;
esac

#case的匹配模式可以使用各种通配符
read -p "请输入一个字母或数字 > " character
case $character in
    [[:lower:]] | [[:upper:]] ) 
        echo "输入了字母:$character"
        ;;
    [0-9] )
        echo "输入了数字:$character"
        ;;
    * )
        echo "输入不符合要求"
        ;;
esac

#read -p "Type a character > " character
#case $character in 
#    [[:upper:]] )
#        echo "$character is upper case"
#        ;;&
#    [[:lower:]] )
#        echo "$character is lower case"
#        ;;&
#    [[:alpha:]] )
#        echo "$character is alphabetic"
#        ;;&
#    [[:digit:]] )
#        echo "$character is digit"
#        ;;&
#    [[:graph:]] )
#        echo "$character is a visible character"
#        ;;&
#    [[:space:]] )
#        echo "$character is a whitespace character"
#        ;;&
#    [[:xdigit:]] ) 
#        echo "$character is a hexadecimal digit"
#        ;;&
#    * )
#        echo "no type match"
#        ;;&
#esac








