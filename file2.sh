#! /bin/bash
 read -p  "enter a file to check : " file
 if [ -s "$file" ]; then
    echo "$file is a file and not empty"
 else
    echo "$file is a empty file"
 fi      