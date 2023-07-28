#!/bin/bash

root_dir="$1"

# Function to install requirements
install_requirements() {
    if [[ -f "$1/requirements.txt" ]]; then
        echo "Installing requirements in $1"
        pip3 install -r "$1/requirements.txt"
        echo "Requirements installed successfully in $1"
        echo
    fi
}

# Traverse subdirectories recursively
traverse_directories() {
    for dir in "$1"/*; do
        if [[ -d "$dir" ]]; then
            install_requirements "$dir"
            traverse_directories "$dir"
        fi
    done
}

# Start traversal from the root directory
traverse_directories "$root_dir"
