#!/bin/bash

## This script we will check if a file exists based on a user prompt.

echo "Please enter the name of the file you want to check:"
read filename

if [[ -f "$filename" ]]; then

    echo "the file '$filename' exists."
    perms=$(stat -c %A "$filename")
    echo $perms
        if [[ "$perms" =~ r ]]; then
            echo "the file '$filename' is readable."
            else
            echo "the file '$filename' is not readable."
            fi
        if [[ "$perms" =~ w ]]; then
            echo "the file '$filename' is writable."
            else
            echo "the file '$filename' is not writable."
            fi
        if [[ "$perms" =~ x ]]; then
            echo "the file '$filename' is executable."
            else
            echo "the file '$filename' is not executable."
        fi
        
    !

    else
    echo "the file '$filename' does not exist."

fi
