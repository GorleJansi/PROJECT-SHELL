#! /bin/bash

x=(23 45 72 94 128)

for i in "${x[@]}"
do
    if (( i % 2 == 0 )); then
      echo "$i even number"
    else
      echo "$i odd number"  
    fi
    
done
