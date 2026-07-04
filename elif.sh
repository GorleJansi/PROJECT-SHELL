read -p "name of student : " name
read -p "age of the student : " age

if [ "$name" == "jansi" ] && [ "$age" -gt 24 ]; then
   echo "Welcome $name"
elif [ "$name" == "munni" ] && [ "$age" -lt 25 ]; then
   echo "Welcome $name"
else
   echo "$name Not a member"
fi