#! /bin/bash

name="jansi"
rolename="DevOps Engineer"
topicname="Shell Variables"
studyhours=14
learningtoday="yes"
tools=("linux" "git" "bash" "docker")
echo "Name: $name
Target Role: $rolename
Current Topic: $topicname
Tools to Learn:
- ${tools[0]}
- ${tools[1]}
- ${tools[2]}
- ${tools[3]}
Total study hours this week: $studyhours
Learning today: $learningtoday"
