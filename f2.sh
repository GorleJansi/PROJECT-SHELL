#! /bin/bash

read -p " enter array elements : " -a arr

x=("${arr[@]/2/4}")

echo " array after  search and replace is : ${x[@]}"