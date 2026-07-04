#! /bin/bash

read -p "enter values of array :" -a arr1
echo "all values in array are :${arr1[@]}"
arr1=("${arr1[@]/1/10}")
echo "all values in array after replacing are :${arr1[@]}"
arr1=("${arr1[@]/3/}")
echo "all values in array after replacing are :${arr1[@]}"
echo "${arr1[1]}"