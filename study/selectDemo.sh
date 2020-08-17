#!/bin/bash
#Author:liukai
#Time:2020-08-17 16:48:17
#Description:select结构

#1.select 生成一个菜单，内容是列表list的每一项，并且每一项前面还有一个数字编号
#2.bash提示用户选择一项，输入它的编号
#3.用户输入以后，Bash会将该项内容存在变量name，该项编号存入环境变量REPLY。如果用户没有输入，就按回车键，Bash会重新输出菜单，让用户选择。
#4.执行命令体commands
#5.执行结束后，回到第一步，重复这个过程

select brand in Samsung Sony iphone huawei xiaomi;do
    echo "You have chosen $brand"
    break
done

echo "Which Operating System do you like? "
select os in Ubuntu LinuxMint Windows8 Windows7 WindowsXP;do
    case $os in
        "Ubuntu" | "LinuxMint" )
            echo "I also use $os"
            ;;
        "Windows8" | "Windows7" | "WindowsXP" )
            echo "Why don't you try Linux?"
            ;;
        * )
            echo "Invalid entry"
            break
            ;;
    esac
done
