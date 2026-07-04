#! /bin/bash

arr=(1 2 3 4 5)
echo "${arr[0]}"
echo "${arr[1]}"
echo "all elements in arra : ${arr[@]}"
arr[5]=6
arr[0]=10
arr+=(7)
echo "all elements in arra : ${arr[@]}"
arr+=(8 9)
echo "all elements in arra : ${arr[@]}"
#echo "last ele is : ${arr[-1]}"
echo "num of ele in array: ${#arr[@]}"
last_index=$((${#arr[@]} - 1))
echo "last ele is : ${arr[$last_index]}"



arr1=(a ba cb)
echo "${arr1[0]}"
echo "${arr1[1]}"
echo "${arr1[@]}"
arr1[0]=ac
echo "${arr1[@]}"
unset arr1[0]
echo "old array a[1]:${arr1[1]}"
arr_new=("${arr1[@]}")
echo "rearrange array from old array : ${arr_new[@]}"
echo "new array a[0]:${arr1[1]}"