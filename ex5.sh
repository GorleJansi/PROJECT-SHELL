#! /bin/bash
red=$'\e[31m'
green=$'\e[32m'
yellow=$'\e[33m'
normal=$'\e[0m'
validate(){
    if [ $1 -ne 0 ]; then
        echo -e "$red ERROR $normal: Failed to install $2"
        exit 1
    else    
        echo -e "$green SUCCESS $normal: $2 is installed"    
    fi
}
dnf list installed git 
if [ $? -eq 0 ]; then
    echo -e "$green SUCCESS $normal git is already installed"
else
    dnf install nginx -y
    validate $? "nginx" 
fi