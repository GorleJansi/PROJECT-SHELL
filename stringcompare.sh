#! /bin/bash

read -p "enter string1 :" str1
read -p "enter string 2 :" str2
if [ "$str1" == "$str2" ]; then
    echo "two strings $str1 and $str2 are equal"
else
    echo "two strings $str1 and $str2 are not equal"
fi    