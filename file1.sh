#! /bin/bash
 read -p  "enter a file to check : " file
 if [ -f $file ]; then
    echo "$file is a file"
 else
    echo "$file is not a file"
 fi      