#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
for i in {1..5}; do mkdir "dir${i}"; done

# 2. How would you verify the creation of all 5 directories?
for i in {1..5}; do ls "dir${i}"; done

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
for i in {1..5}; do
    # Change into the directory
    cd "dir${i}"

    # Use a loop to create each text file and write a sentence in it
    for j in {1..5}; do
        echo "I love data." > "text${j}.txt"
    done

    # Change back to the parent directory
    cd ..
done

# 4. How would you verify the presence of all 5 files?
for i in {1..5}; do
    echo "Contents of dir${i}:"
    # List the contents of the directory
    ls "dir${i}"
    echo  # Add an empty line 
done

# 5. How would you append to one of the existing files " and machine learning!"?
# to replace the punctuation mark in the end of the sentence with ' and machine learning!'
sed -i '' 's/[[:punct:]]\([^[:punct:]]*\)$/ and machine learning!\1/' dir2/text3.txt

# 6. How would you verify that the text was indeed appended to the existing file?
# to display the content of the file
cat dir2/text3.txt

# 7. How would you delete all files except for the one with the appended text?
# Loop through directories 1 to 5
for i in {1..5}; do
    # Check if the directory is dir2 
    if [ "$i" -eq 2 ]; then
        # Delete all files in dir2 except text3.txt
        find . -type f ! -path "./dir2/text3.txt" -delete
        # Skip the rest and go to the next iteration
        continue
    fi

    # Delete the files
    rm -f dir${i}/*
done

# 8. How would you navigate back to the parent directory containing all the directories?
# cd ..
# working in the parent directory for the previous commands, so if use cd .., it will go to the directory that contains this current parent directory.

# 9. How would you remove each directory along with its contents?
# Loop through directories 1 to 5
for i in {1..5}; do
    # Delete the directory and its contents
    rm -rf dir${i}
done

# 10. How would you verify that all directories and files have been deleted?
for i in {1..5}; do ls "dir${i}"; done


