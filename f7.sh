#! /bin/bash

read  -p "enter elements of the array :" -a a1

for i in "${!a1[@]}"
do
  echo "${a1[i]} is the element at index $i"
done  

#  echo " ${!a1[@]} "