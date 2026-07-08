#! /bin/bash
 read -p "enter a numer : " num

#  if [ $num -gt 15 ]; then
if (( num > 15 )); then
    echo "$num is greater than 15"
 else
    echo "$num is lesser than 15"   
 fi   