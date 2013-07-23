#!/bin/bash
# script to find and remove duplicate files
# removeDuplicates.sh, original code found in http://pastebin.com/EGEUfkx6
# Modified to compare contents from different folders and to make that filenames (equal or different) do not matter
# TODO: How to invoke paths with whitespaces from .sh; check against nested directories with whitespaces in their names (though I think it works)

# Declare variables for the two directories to be compared and fill them with paths provided by user when invoking .sh
<<<<<<< HEAD
files_dir1="$1"
files_dir2="$2"
=======
files_dir1=$1
files_dir2=$2
>>>>>>> fa18598bbc8be7a95c7be7e3418f9f76a06b4f6b

# Set error messages when directories are not specified when invoking the .sh
if [[ -z "$files_dir1" ]]; then
    echo "Error: dir 1 is undefined"
fi

if [[ -z "$files_dir2" ]]; then
    echo "Error: dir2 is undefined"
fi

# Create two variables and load them with contents of directories
files1="$( find ${files_dir1} -type f )" 
files2="$( find ${files_dir2} -type f )" 

# Create file report
touch remove_duplicates.txt

<<<<<<< HEAD
# <<COMMENT_END
=======

>>>>>>> fa18598bbc8be7a95c7be7e3418f9f76a06b4f6b
# Loop through each file in the first directory
printf %s "$files1" | while IFS= read -r filename1; do
# Compare it against each file in the second directory
    printf %s "$files2" | while IFS= read -r filename2; do
# Output work in progress message to screen    
        echo "checking $filename1 and $filename2"
# Line from original script, intended to make sure that files are compared only when their names differ        
    #    if [[ "$filename1" != "$filename2" && -e "$filename1" && -e "$filename2" ]]; then
# Actual comparison between files
            if diff "$filename1" "$filename2" > /dev/null; then
# Write result to file report            
                echo "$filename1 and $filename2 are duplicates" >> remove_duplicates.txt
            fi
<<<<<<< HEAD
    #	    fi
    done
done
# COMMENT_END
=======
    #      fi
    done
done

>>>>>>> fa18598bbc8be7a95c7be7e3418f9f76a06b4f6b
