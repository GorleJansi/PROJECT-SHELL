#! /bin/bash

num1=$1
num2=$2
sum=$((num1 + num2))
echo "the sum of $num1 and $num2 is : $sum"
if [ $# -eq 0 ]; then
    echo "No arguments passed to the script"
else
    echo "Total number of arguments passed to the script is : $#"
    echo "All the arguments passed to the script are : $*"
fi