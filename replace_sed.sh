#!/bin/bash

# Name: Joshua Allen
# Script: replace_sed.sh
# Purpose: Replace delimiters using regular expressions with sed.
# Input: A delimiter regular expression and replacement text.
# Output: All input lines with delimiters replaced.

# Check that two arguments were provided.
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 'delimiter_pattern' 'replacement'" >&2
    exit 1
fi

# Replace all matching delimiters in standard input.
sed -E "s/${1}/${2}/g"
