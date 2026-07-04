#! /bin/bash

for file in /etc/*
do
    if [ $file == "/etc/resolv.conf" ]; then
            count=$(grep -c nameserver $file)
    fi
done
echo "count of name servers is : $count"