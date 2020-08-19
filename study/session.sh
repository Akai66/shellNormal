#!/bin/bash
#Author:liukai
#Time:2020-08-19 10:30:30
#Description:bash启动环境说明


1.Session
用户每次使用shell，都会开启一个与shell的Session
Session有两种类型：登录Session和非登录Session

1.1登录Session
登录Session是用户登录系统后，系统为用户开启的原始Session，通常需要用户输入用户名和密码进行登录
登录Session一般进行整个系统环境的初始化，启动的初始化脚本依次如下：
/etc/profile：所有用户的全局配置脚本
/etc/profile.d 目录里面所有的.sh文件
~/.bash_profile：用户的个人配置脚本，如果该脚本存在，则执行完就不再往下执行

说明：
1.linux发行版更新的时候，会更新/etc里面的文件，比如/etc/profile，因此不要直接修改这个文件，如果想修改所有用户的登录环境，就在/etc/profile.d目录里面新建.sh脚本

2.如果想修改你个人的登录环境，一般是写在~/.bash_profile 里面,~/.bash_profile文件会执行~/.bashrc脚本


1.2非登录Session
非登录Session是用户进入系统以后，手动新建的Session，这时不会进行环境初始化，比如，在命令行执行bash命令，就会新建一个非登录Session
非登录Session的初始化脚本依次如下：
/etc/bash.bashrc：对全体用户有效
~/.bashrc：仅对当前用户有效

说明：
对用户来说，~/.bashrc 通常是最重要的脚本，非登录Session默认会执行它，而登录Session一般也会通过调用执行它，每次新建一个bash窗口，就相当于新建一个非登录Session，所以~/.bashrc每次都会执行,注意，执行脚本相当于新建一个非互动的bash环境，但是这种情况不会调用~/.bashrc

