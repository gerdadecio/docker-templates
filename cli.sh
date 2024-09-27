#!/bin/bash

# Default source directory (replace this with your actual source path)
SOURCE_DIR="${SOURCE_DIR:-$HOME}"
TEMPLATE_DIR="${SOURCE_DIR:-$HOME}/templates"

# Function to display usage
usage() {
  echo "Usage: $0 -f <folder_name>"
  echo ""
  echo "Available <folder_name>:"
  
  # List folders in the source directory
  for folder in "$TEMPLATE_DIR"/*; do
    if [ -d "$folder" ]; then
      echo "  - $(basename "$folder")"
    fi
  done
  
  exit 1
}

# Parse options
while getopts ":f:" opt; do
  case $opt in
    f)
      FOLDER_NAME="$OPTARG"
      ;;
    *)
      usage
      ;;
  esac
done

# Check if folder name is provided
if [ -z "$FOLDER_NAME" ]; then
  usage
fi

# Destination directory (current working directory)
DEST_DIR="$(pwd)/$FOLDER_NAME"

# Copy the folder
if [ -d "$TEMPLATE_DIR/$FOLDER_NAME" ]; then
  cp -r "$TEMPLATE_DIR/$FOLDER_NAME" "$DEST_DIR"
  echo "Copied $TEMPLATE_DIR/$FOLDER_NAME to $DEST_DIR"
else
  echo "Error: Source folder '$TEMPLATE_DIR/$FOLDER_NAME' does not exist."
  exit 1
fi
