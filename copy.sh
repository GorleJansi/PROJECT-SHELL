#! /bin/bash

read -p "enter source and target files to copy :" source target
cp $source $target 
if [ $? -eq 0 ]; then
    echo "copied files to target directory..!"
fi    