#! /bin/bash

count=10
while [ $count -gt 0 ]
do
   
   if [ $count -eq 5 ];then
    ((--count))
    continue
   fi

   echo $count
   ((--count))

done