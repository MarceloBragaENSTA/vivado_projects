#!/bin/bash

# Check if the project name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <name_project>"
    exit 1
fi

# Get the project name
NAME_PROJECT=$1

# Define source and destination directories
SRC_DIR="base_vivado_project"
DST_DIR="$NAME_PROJECT"

# Check if source directory exists
if [ ! -d "$SRC_DIR" ]; then
    echo "Error: Source directory '$SRC_DIR' does not exist."
    exit 1
fi

# Create the new project directory
mkdir -p "$DST_DIR"

# Copy all contents of base_vivado_project to the new directory
cp -r "$SRC_DIR"/* "$DST_DIR"/

# Process the TCL script
TCL_SCRIPT="$DST_DIR/base_vivado_project.tcl"
NEW_TCL_SCRIPT="$DST_DIR/$NAME_PROJECT.tcl"

if [ -f "$TCL_SCRIPT" ]; then
    # Replace all instances of "base_vivado_project" with the new project name
    sed "s/base_vivado_project/$NAME_PROJECT/g" "$TCL_SCRIPT" > "$NEW_TCL_SCRIPT"
    # Remove the old TCL script
    rm "$TCL_SCRIPT"
else
    echo "Warning: TCL script not found in source directory."
fi

echo "Project '$NAME_PROJECT' created successfully."

