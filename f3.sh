#! /bin/bash 

x=10
(x=20)  #child process wont effect main 
echo " value of x is $x "