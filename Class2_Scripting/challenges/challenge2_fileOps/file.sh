#!/bin/bash

## This script will create a directory and place a file inside of it.
# Create a directory called bash_demo
# Navigate into the directory and create a txt file
# write text within the file
#

mkdir bash_demo
cd bash_demo
touch demo.txt
today=$(date +%Y-%m-%d)
echo "This is a demo file created using bash scripting. Date is $today" >> demo.txt
cat demo.txt