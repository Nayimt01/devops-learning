#!/bin/bash

# set -e
## set -e exits the script the first instance a command fails.

## set -u exits the script if an undefined variable is used.

## set -x exits the script and prints each command before executing it.
## set +x can be used to turn off the -x option.

## set -eux can be used to combine all three options.
set -u

echo "before the script $poo"

noneexitsdem

echo "after the script"