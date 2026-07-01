#! /bin/bash
red=$'\e[31m'
green=$'\e[32m'
yellow=$'\e[33m'
normal=$'\e[0m'
read -p "Enter package to install : " $toinstall
user=$(id -u)
rootaccess(){
    if [ $user -ne 0 ];then
        echo -e "$red ERROR $normal: Please run this script as root."
        exit 1
    fi
}
validate(){
    if [ $1 -ne 0 ]; then
        echo -e "$red ERROR $normal: Failed to install $2"
        exit 1
    else    
        echo -e "$green SUCCESS $normal: $2 is installed"    
    fi
}
dnf list installed $toinstall &> /dev/null
if [ $? -eq 0 ]; then
    echo -e "$green SUCCESS $normal $toinstall is already installed"
else
    rootaccess 
    dnf install $toinstall -y &> /dev/null
    validate $? $toinstall
fi