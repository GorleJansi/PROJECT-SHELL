USERID=$(id -u)
if [ $USER -ne 0 ]; then
  echo "ERROR: Please run this script as root."
  exit 1
fi
dnf install -y nginx
if [ $? -ne 0 ]; then
    echo " EROOR: Failed to install nginx"
    exit 1
else
    systemctl enable --now nginx
    if [ $? -ne 0 ]; then
        echo "ERROR: Failed to start nginx"
        exit 1
    else
        echo "nginx is installed and running"
    fi    
fi
