#!/bin/bash

red=$'\e[31m'
green=$'\e[32m'
yellow=$'\e[33m'
normal=$'\e[0m'

user=$(id -u)
if [ "$#" -eq 0 ]; then
    echo -e "$yellow INFO $normal: Usage: sudo bash $0 package1 package2 ..."
    exit 1
fi

if [ "$user" -ne 0 ]; then
    echo -e "$red ERROR $normal: Please run this script as root."
    exit 1
fi

folder="/var/log/shell-logs"
mkdir -p "$folder"
filename=$(basename "$0" .sh)
logfile="$folder/$filename.log"
touch "$logfile"

validate(){
    if [ "$1" -ne 0 ]; then
        echo -e "$red ERROR $normal: Failed to install $2"
        exit 1
    else
        echo -e "$green SUCCESS $normal: $2 is installed successfully"
    fi  
}  
for package in "$@"
do
    dnf list installed "$package" >> "$logfile" 2>&1
    if [ $? -ne 0 ]; then
        dnf install "$package" -y >> "$logfile" 2>&1
        validate $? "$package"
    else
        echo -e "$green SUCCESS $normal: $package is already installed"
    fi    
done
echo -e "$green SUCCESS $normal: All packages are installed successfully"
echo -e "$yellow INFO $normal: Please check the log file at $logfile for more details"
