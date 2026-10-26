#!/bin/bash

# This script demonstrates the use of pipes in bash scripting.

direc_count(){

if [[ $# -eq 0 ]]
    then 
    echo "No directory provided"
    return 1
    fi

local directory=$1

local file_count=$(ls "$directory" | wc -l)

echo $file_count
}

direc_count "./"