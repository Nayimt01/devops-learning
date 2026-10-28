#!/bin/bash

# This script is used to backup files from a directory and move it to a backup location.

echo "Please enter the source directory to backup:"
read source_dir

if [[ "$source_dir" == "" ||  ! -d "$source_dir" || ! -d "$(pwd)/"$source_dir"" ]]; then
    echo "Invalid source directory provided. Exiting."
    exit 1
fi

if [[ ! -d "backup" ]]; then
    mkdir "backup"
    else
        echo "backup directory already exists."
fi

 cp -r "$source_dir"/* backup/

 echo "Backup of '$source_dir' completed successfully to 'backup' directory."

