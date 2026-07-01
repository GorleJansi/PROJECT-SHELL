#! /bin/bash
name=$1
city=$2
area=$3
age=24
echo "Hi my name is $name and age $age, i am from $city and i live near $area"
echo "this script name is : $0"
echo "pid of the script :$$"
echo "total number of arguments passed to this script is : $#"
echo "all the arguments passed to this script are : $*"
echo "the first argument passed to this script is : $1"
echo "the second argument passed to this script is : $2"
echo "the third argument passed to this script is : $3"
echo "the last argument passed to this script is : ${!#}"
echo "the second last argument passed to this script is : ${!#-1}"
echo "exit status of last command executed : $?"
ls 
echo "the process id of the last command executed in the foreground : $BASHPID"
sleep 10 &
echo "the process id of the last command executed in the background : $!"
echo "print password of the user $USER :"
read -s password
echo "the password of the user is : $password"
read -p "enter your name : " name
echo "the name entered by the user is : $name"