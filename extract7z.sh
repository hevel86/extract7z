#!/bin/bash

# Loop through every .7z file in the current directory
for SOURCE_FILE in *.7z; do
    # Check if the file exists to avoid errors when no .7z files are present
    if [ -f "$SOURCE_FILE" ]; then
        # Unzip the .7z file
        7z x "$SOURCE_FILE"

        # Check if the unzip was successful
        if [ $? -eq 0 ]; then
            echo "Extraction successful, deleting the source file: $SOURCE_FILE"
            rm "$SOURCE_FILE"
        else
            echo "Extraction failed for $SOURCE_FILE"
        fi
    fi
done
