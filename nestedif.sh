#! /bin/bash
read -p "enter a number :" n
if ((n <100));then
    echo "$n is less than 100"
    if ((n <50));then
        echo "$n is less than 50"   
    else
    echo "$n is greater to 50 and less than 100"
    fi      
fi    