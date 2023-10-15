# 1. Write a shell script that reads the contents in a text file and removes all the blank spaces in them.

#!/bin/bash
echo "Enter the path to the file:"
read file_path

# Check if the file exists
if [ ! -f "$file_path" ]; then
  echo "Error: File not found."
  exit 1
fi

# Read the file contents and remove blank spaces
file_contents=$(cat "$file_path" | tr -d ' ')

# Print the modified contents
echo "Modified file contents:"
echo "$file_contents"
