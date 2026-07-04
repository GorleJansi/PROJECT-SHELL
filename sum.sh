#! /bin/bash
read -p "enter a number : " num
sum=""
for (( i=$num ;i>=0;i-- ))
do
   ((sum+=i))
done
echo "sum of all value from $num to 0 : $sum"