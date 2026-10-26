#!/bin/bash

echo "Path is" $PATH

echo "Home is" $HOME

echo "Shell is" $SHELL


# This is a test to read files using a function and a while loop

process_file(){

    local file=$1

cat "$file" | while IFS= read -r line
    do
        echo $line
    done

}

process_file "./holder.txt"



# Side note, to group two commands together you can use () in the terminal, seperated by ;.
# e.g. (echo ""; ls) >> holder.txt

process_md5(){

local file=$1
    md5sum "$file"
}

process_md5 "./holder.txt"