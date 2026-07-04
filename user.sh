#! /bin/bash
 read -p "enter user name :" user
 
#  id $user > /dev/null
#  if [ $? -eq 0 ]; then
#     echo "user exists..!!"
#  else
#     echo "user does not exist ..!!"
#  fi       


cat /etc/passwd| grep -w "$user" > /dev/null
if [ $? -eq 0 ]; then
    echo "user exists..!!"
 else
    echo "user does not exist ..!!"
 fi  