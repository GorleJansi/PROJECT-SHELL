#! /bin/bash
start_time=$(date +%s)
echo "script started executing..."
sleep 10 
end_time=$(date +%s)
echo "script stopped executing..."
total_time=$(($end_time-$start_time))
echo "Time took by script to run is : $total_time"