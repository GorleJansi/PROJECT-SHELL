#! /bin/bash

validate(){
    if [ $1 -ne 0 ]; then
        echo "ERROR: Failed to install $2"
        exit 1
    else    
        echo "SUCCESS: $2 is installed"    
    fi
}
dnf list installed git 
if [ $? -eq 0 ]; then
    echo "SUCCESS: git is already installed"
else
    dnf install nginx -y
    validate $? "nginx" 
fi