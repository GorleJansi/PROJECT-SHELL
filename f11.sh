#! /bin/bash

ls -l .| grep "echo"|wc -l 

echo "pipstatus gives all exit status in pipe : ${PIPESTATUS[@]}"

echo " $? will give exit code only for last command in pipe "