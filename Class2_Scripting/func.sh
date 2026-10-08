#!/bin/bash

# Note: $? == the exit code. If you return a 1 in a function, then $? will be 1.
# 1 is used to indicate an error. 0 is used to indicate success.
# remember, echo is an output, return is an exit code.
# echo can be used to output a value to the terminal or output a result from a function.

# To assign a value to a variable from a function, you can use the following syntax:
# variable=$(function_name)

fnc(){
    name=$1
    echo "Hello $name"
    echo "Hello $1"
}

fnc "jelly"

greet_user(){
    
    if [[ $# -ne 0 ]]
    then
        for ((i=0; i<=$#; i++))
            do
                echo "Hello ${!i}"
                if [[ $i -eq $# ]]; 
                    then 
                    return 0
                    fi
            done
        
    else
        echo "What is your name?"
        read name

        if [[ $name =~ ^([0-9]) ]]
            then
                echo "Please enter a valid name"
                exit 1
            fi
        echo "Hello $name"

    code=$?
    echo $code
    if [[ $code -eq 1 ]]
        then
            echo "There was no parameters set"
        else
            echo "Success"
        fi
    fi
    
   


}

addition(){
    echo 2
}

test=$(addition)

echo $test
greet_user 