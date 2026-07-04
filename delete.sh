#! /bin/bash
 read -p "enter a file to delete..:" file
 if rm -rf $file
 then
    echo "$file is deleted..!"
 fi   