#!/bin/bash

# Check if the user provided a search string as a parameter
if [ -z "$1" ]; then
  echo "Usage: $0 <search_string. SHOULD ESCAPE SPECIAL CHARS LIKE PIPE etc>"
  exit 1
fi

# Assign the search string to a variable
search_string="$1"

# Find and search within .txt files, case-insensitive
find $ZOOM_CHAT -type f -name "*.txt" -exec grep -H -i "$search_string" {} \;