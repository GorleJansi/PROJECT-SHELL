#! /bin/bash
a=(a b c d e f)
echo "${a[@]:1:5}"
echo "${a[@]:1}"
echo "${a[@]::3}"