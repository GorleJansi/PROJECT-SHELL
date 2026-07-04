#!/bin/bash

disk_usage=$(df -hP | grep -v Filesystem)
disk_threshold=10

while IFS= read -r line
do
    usage=$(echo "$line" | awk '{print $5}' | cut -d "%" -f 1)
    partition=$(echo "$line" | awk '{print $6}')

    if [ "$usage" -gt "$disk_threshold" ]; then
        echo "high disk usage on $partition :  $usage"
    fi
done <<< "$disk_usage"
