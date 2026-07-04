#! /bin/bash

str="jansi gorle"
str1=""

echo "string1 is $str"
echo "string2 is $str1"

 if [ "$str"=="$str1" ];then
    echo "string match"
 else
    echo "string mismatch"
 fi      