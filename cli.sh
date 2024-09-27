#!/bin/bash

# Default source directory (replace this with your actual source path)
SOURCE_DIR="/Volumes/GD-APFS/WORK/UTILS/docker-templates"

# Function to display usage
usage() {
  echo "Usage: $0 -f <folder_name>"
  echo "Available dir
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
if [ -d "$SOURCE_DIR/$FOLDER_NAME" ]; then
  cp -r "$SOURCE_DIR/$FOLDER_NAME" "$DEST_DIR"
  echo "Copied $SOURCE_DIR/$FOLDER_NAME to $DEST_DIR"
else
  echo "Error: Source folder '$SOURCE_DIR/$FOLDER_NAME' does not exist."
  exit 1
fi
