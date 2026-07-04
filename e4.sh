#! /bin/bash

x=("a" "b" "c" "d")
for i in "${!x[@]}"
do
    echo "value at index $i : ${x[i]}"
done
