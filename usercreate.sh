#! /bin/bash

read -p "enter number of users to create :" num
i=1
while [ "$i" -le "$num" ]
do
    user="jansi$i"

    if id "$user" >/dev/null 2>&1; then
        echo "$user already exists"
    elif sudo useradd "$user"; then
        echo "created user $user"
    else
        echo "failed to create user $user"
    fi

    ((++i))
done