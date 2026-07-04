#! bin/bash
str="jansi"
rev=""
for (( i=${#str};i>=0;i-- ))
do
rev="$rev${str:$i:1}"
done
echo "reverse of $str is $rev"