#! /bin/bash

r=$(printf '\033[31m')
g=$(printf '\033[32m')
n=$(printf '\033[0m')

printf " enter ur name and age:"
read -r name age 

eligibility(){
    if [ "$age" -gt 18 ]; then
      printf "%s Congrats %s ur eligible to apply %s %s\n" "$g" "$name" "$1" "$n"
    else
      printf "%s Sorry %s you are not eligible to apply %s %s\n" "$r" "$name" "$1" "$n"
      exit 1
    fi  
}

eligibility "IELTS"
echo "Prepare the documents to write exam "
