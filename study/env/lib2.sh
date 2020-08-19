#!/bin/bash
#Author:liukai
#Time:2020-08-18 20:01:39
#Description:test

set -euxo pipefail

function func2(){
    echo "func2:BASH_SOURCE0 is ${BASH_SOURCE[0]}"
    echo "func2:BASH_SOURCE1 is ${BASH_SOURCE[1]}"
    echo "func2:BASH_SOURCE2 is ${BASH_SOURCE[2]}"
}

