#!/bin/bash

# while loops are done by while [ condition ] then do and done.
# use double brackets for the condition. E.g while [[ $count -lt 5 ]] and for integer 
# arithmetics (()) can be used. E.g while (( $count < 5 )).
count=0

#while [[ $count -le 5 ]]
#do
#echo "count is $count"
#((count++))
#done

# to use an array in a while loop, use the following syntax.
# E.g while [[ $count -lt ${#array[@]} ]].
# example below

fruits=("apple" "banana" "cherry" "date" "elderberry")

#while [[ $count -lt ${#fruits[@]} ]]
#do
 #   echo "fruit is ${fruits[$count]}"
  #  ((count++))
   # done

#${#array[@]} is used to get the length of the array.
# In JS its Array.length. In Bash ir is ${#array[@]}.

## for loops

#for ((i=0;i<${#fruits[@]};i++))
 #   do
  #  echo $i
   # echo "fruit is ${fruits[i]}"
    #done

# A cleaner way to do this is For In - 

for fruit in ${fruits[@]}
    do
    
    echo "fruit is $fruit"
    if [[ $fruit == "date" ]]
    then
        break
    fi

    done
