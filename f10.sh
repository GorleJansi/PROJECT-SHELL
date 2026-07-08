read -p "enter a number to get square of :" n
square(){
   echo $(( $1 * $1 ))
 
}

result=$(square "$n")
echo "square of $n : $result"