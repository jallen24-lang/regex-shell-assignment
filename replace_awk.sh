#!/bin/bash

# Name: Joshua Allen
# Script: replace_awk.sh
# Purpose: Replace delimiters using regular expressions with awk.
# Input: A delimiter regular expression and replacement text.
# Output: All input lines with delimiters replaced.

# Check that two arguments were provided.
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 'delimiter_pattern' 'replacement'" >&2
    exit 1
fi

# Replace every matching delimiter on each input line.
awk -v pattern="$1" -v replacement="$2" '
{
    gsub(pattern, replacement)
    print
}'
