#!/bin/bash

# The script creates a txt file and moves there all the files from home directory

mkdir ~/TXT # Creating a new directory (named TXT) in home directory (with the help of '~' instead of '/home/jovyan')
mv *.txt ~/TXT # With mv command moving files with .txt extension (*.txt) in the TXT file that is in the home directiry
moved_files=$(ls ~/TXT | wc -l) # Counting the number of moved files by assigning the output to 'moved_files' variable; with 'ls ~/TXT' I listed all files inside TXT directory, and with 'wc -l' I counted the number of lines that were outputted of 'ls ~/TXT' (and because every file is listed on a separate line this command will successfully count number of files in TXT directory)
echo "$moved_files txt files moved" # Printing the message