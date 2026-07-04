#!/bin/bash

y="\e[33m"
g="\e[32m"
r="\e[31m"
n="\e[0m"

read -p "enter your name to login: " name
read -s -p "enter your password: " pass
echo

if [ "$name" == "jansi" ]; then
    if [ "$pass" == "jansi123" ]; then
        echo -e "Hi Jansi ..! $g Welcome to devops class $n"
    else
        echo -e "$r Password incorrect.. $n Try again"
    fi
else
    echo -e "$r name incorrect.. $n"
fi