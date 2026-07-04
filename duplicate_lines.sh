#! /bin/bash
 read -p "enter a file: " file
 sort $file|uniq  > temp
 mv temp $file
 echo "file duplicate lines are deleted ..!"