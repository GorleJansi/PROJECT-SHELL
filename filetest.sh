#! /bin/bash
read -p  "enter a file to check:" file
if [ -e "$file" ];then
    echo "file  exist"
else
    echo "file doesnt exist"   
fi

if [ -r "$file" ];then
    echo "file is readable"
else
    echo "file is not readable"   
fi
if [ -r "$file" ];then
    echo "file is writablee"
else
    echo "file is not writeable"   
fi