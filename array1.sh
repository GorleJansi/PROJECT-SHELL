#! /bin/bash

read -p "enter values of array:" -a arr1
echo "values of array are : ${arr1[@]}"
echo "1st ele is : ${arr1[0]}"
lastindex=$((${#arr1[@]} - 1))
echo "last ele is : ${arr1[$lastindex]}"