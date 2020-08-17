#!/bin/bash
#Author:liukai
#Time:2020-08-17 18:09:34
#Description:函数的全局变量和局部变量

#特别注意：函数体内直接声明的变量，属于全局变量，整个脚本都可以读取

fn1(){
    foo=1
    echo "fn1: foo = $foo"
}
fn1
echo "global: foo = $foo"

#函数体内不仅可以声明全局变量，还可以修改全局变量
foo=1
fn2(){
    foo=2
    echo "fn2: foo = $foo"
}
fn2
echo "global: foo = $foo"

#函数体内可以用local命令声明局部变量
fn3(){
    local doo=1
    echo "fn3: doo = $doo"
}
fn3
echo "global: doo = $doo"
