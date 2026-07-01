#! /bin/bash
user= $(id -u)
validate(){
if [$1 -ne 0 ]; then
    echo "ERROR: Failed to install $2"
    exit 1
else
    echo "SUCCESS: $2 is installed successfully"    
fi
}
dnf install nginx -y
validate $? "nginx"
dnf install php -y
validate $? "php"