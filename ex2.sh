# ...existing code...
#!/bin/bash
if [ "$(id -u)" -ne 0 ]; then
  echo "ERROR:Please run this script as root."
  exit 1
fi

dnf install -y nginx && \
  systemctl enable --now nginx && \
  systemctl status nginx --no-pager

if [ $? -eq 0 ]; then
  echo "nginx is installed and running"
else
  echo "Failed to install or start nginx" >&2
  exit 1
fi
# ...existing code...