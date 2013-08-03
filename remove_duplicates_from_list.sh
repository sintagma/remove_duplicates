#!/bin/bash
# Script to remove duplicate files from a list

file_list=$1

duplicate_files=$(cat "$file_list")
# Set error messages when directories are not specified when invoking the .sh
if [[ -z "$duplicate_files" ]]; then
    echo "Error: file to read from is undefined"
fi
echo "$duplicate_files"
# Loop through each line in file list   
printf %s "$duplicate_files" | while IFS= read -r filename; do
# Delete each duplicate file found in list
                rm "$filename"
# Report to screen when duplicate file is deleted
                echo "$filename deleted!" >> remove_duplicates_report.txt
       done
