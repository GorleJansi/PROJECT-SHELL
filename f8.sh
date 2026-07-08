#! /bin/bash

r=$'\033[31m'
g=$'\033[32m'
n=$'\033[0m'
read -p "enter ur name : " name

x=( 'jansi' 'munni' 'sree' 'varun')

for i in "${x[@]}"
do 
 if [ "$name" == "$i" ]; then
    printf "%s Hi %s welcome back ..! %s\n" "$g" "$name" "$n"
    exit 0
 fi
done
 
printf "%s Hi $name Please signup ...! %s\n" "$r" "$n"
