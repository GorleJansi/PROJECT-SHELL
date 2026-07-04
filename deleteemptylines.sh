#! /bin/bash
read -p "enter a filename :" file
grep -v "^$" $file > newfile
mv newfile $file
echo "empty lines are deleted successfully..!"
