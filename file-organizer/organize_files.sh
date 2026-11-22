#!/bin/bash

echo "================================"
echo "       FILE ORGANIZER"
echo "================================"

while IFS= read -r filename
do
    case "$filename" in
        *.pdf|*.doc|*.docx|*.txt)
            category="Documents"
            ;;
        *.jpg|*.jpeg|*.png|*.gif)
            category="Images"
            ;;
        *.mp3|*.wav)
            category="Audio"
            ;;
        *)
            category="Other"
            ;;
    esac

    echo "$filename  -->  $category"
done < sample_files.txt

echo "================================"
echo "File organization complete!"
