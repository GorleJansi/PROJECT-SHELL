#! /bin/bash

x=( 11 23 32 41 57)

for i in ${x[@]}
do
    if [ "$i" -gt 30 ];then 
        break
    fi
    echo "value : $i "
done