#! /bin/bash

str3=""
str5 
str4="a"
read -p "enter a string1 :" str1
read -p "entera string2 :" str2
if [ "$str1" == "$str2" ]; then
    echo "$str1 and $str2 are same"
fi
if [ "$str1" != "$str2" ]; then
    echo "$str1 and $str2 are not same"
    
fi
if [ -z "$str3" ];then
    echo "string $str3 is empty"
    echo "size of string "$str3" is: ${#str3}"
fi

if [ -n "str4" ]; then
    echo "string $str4 is not empty
    echo "size of string "$str4" is: ${#str4}"
fi    

echo "size of string "$str5" is: ${#str5}"