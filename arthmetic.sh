#! /bin/bash
read -r -p "enter a value :" a
read -r -p "enter b value :" b
add=$((a+b))
echo "addition of $a and $b :$add"
sub=$((a-b))
echo "substraction of $a and $b :$sub"
multiply=$((a*b))
echo "multiplication of $a and $b :$multiply"
div=$((a/b))
echo "division of $a and $b :$div"
mod=$((a%b))
echo "modulo of $a and $b :$mod"

in=$((++a))
echo "increament of a :$in"
de=$((--b))
echo "decreament of b is :$de" 