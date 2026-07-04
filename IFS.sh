#! /bin/bash
line="hi:jansi:how:r:u"
IFS=:
set $line
echo $1
echo $2