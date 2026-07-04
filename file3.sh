#! /bin/bash
read -p "enter a file :" file
if [ -f "$file" ]; then
    echo "$file is regular file"
    elif [ -d "$file" ]; then
      echo "$file is directory"
    else
       echo "$file is not file or directory"
fi         