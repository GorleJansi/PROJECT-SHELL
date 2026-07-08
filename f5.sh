#! /bin/bash

# count=1
# while [ "$count" -le 5 ]
# do
#   echo "${count}"
#   ((++count))
# done  

# count=1
# until [ "$count" -gt 5 ]
# do
#   echo "${count}"
#   ((++count))
# done  

for i in {1..10}
do
  if [ "$i" -eq 2 ]; then
    continue
  fi  
  echo "element : $i"  
done