#!/bin/bash

# Author: JOSHUA ALLEN
# Assignment: Data Normalization Part 3
# Purpose: Identify the first 12 chemical elements in scraped text
# and output organized CSV records.

# Check for input file.
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 raw_data.txt" >&2
    exit 1
fi

# Check that input file exists.
if [ ! -f "$1" ]; then
    echo "Input file not found." >&2
    exit 1
fi

# Print CSV headings.
echo "AtomicNumber,ElementName,Symbol"

# Check whether each element name appears in the scraped text.
while read -r number name symbol; do

    if grep -Eiq "(^|[^[:alpha:]])${name}([^[:alpha:]]|$)" "$1"; then
        echo "$number,$name,$symbol"
    fi

done <<'DATA'
1 Hydrogen H
2 Helium He
3 Lithium Li
4 Beryllium Be
5 Boron B
6 Carbon C
7 Nitrogen N
8 Oxygen O
9 Fluorine F
10 Neon Ne
11 Sodium Na
12 Magnesium Mg
DATA

