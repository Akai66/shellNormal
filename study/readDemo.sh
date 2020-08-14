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

#-t参数 
