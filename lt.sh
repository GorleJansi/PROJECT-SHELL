#! /bin/bash

read -p "enter a num :" n
if (( n < 10)); then
    echo "$n is less than 10"
else
    echo "$n is greater than 10"    
fi