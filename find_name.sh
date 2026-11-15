#!/bin/bash

# Name: Joshua Allen
# Script: find_name.sh
# Purpose: Search input lines for a name using grep.
# Input: A regular expression supplied as a command-line argument.
# Output: Lines matching the supplied name pattern.

# Check that a search pattern was provided.
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 'name_pattern'" >&2
    exit 1
fi

# Search standard input for matching lines.
grep -E -- "$1"
