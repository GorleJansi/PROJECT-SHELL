#! /bin/bash
file1=test.txt
file2=test1.txt

x=$(cmp  $file1 $file2)

if [ -z "$x" ];then
    echo "$file1 and $file2 are same content"
else
    echo "$file1 and $file2 are not same content"
fi    