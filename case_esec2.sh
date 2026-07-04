#! /bin/
read -p "entera single character :" var
case $var in 
     [a-zA-Z])
      echo "albhabet"
      ;;
     [0-9])
       echo "numbers"
       ;;
     [^a-A-Z0-9])
        echo "special character"
        ;;
      *)
        echo "entered more than 1 character"
        ;;
    esac    