#!/bin/bash

red=$'\e[31m'
green=$'\e[32m'
normal=$'\e[0m'

folder="/var/log/shell-logs"
mkdir -p "$folder"

logfilename=$(echo $0|cut -d "." -f 1)
logfile="$folder/$logfilename.log"
touch "$logfile"

read -p "Enter package to install : " toinstall
user=$(id -u)

rootaccess(){
  if [ "$user" -ne 0 ]; then
    echo -e "${red}ERROR${normal}: Please run this script as root." | tee -a "$logfile"
    exit 1
  fi
}

validate(){
  if [ "$1" -ne 0 ]; then
    echo -e "${red}ERROR${normal}: Failed to install $2" | tee -a "$logfile"
    exit 1
  else
    echo -e "${green}SUCCESS${normal}: $2 is installed" | tee -a "$logfile"
  fi
}

if dnf list installed "$toinstall" &>> "$logfile"; then
  echo -e "${green}SUCCESS${normal}: $toinstall is already installed" | tee -a "$logfile"
else
  rootaccess
  dnf install "$toinstall" -y &>> "$logfile"
  validate $? "$toinstall"
fi