#! /bin/bash

for i in *
if [ ! -s $i ]; then
    rm -rf $i
    echo "empty file $i is deleted" 
fi