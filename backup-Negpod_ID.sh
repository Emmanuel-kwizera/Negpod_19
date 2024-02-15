#!/bin/bash

# Configuration
SOURCE_DIR="./Negpod_id-q1"
DEST_HOST="2f05c1f8800b.3be8ebfc.alu-cod.online"
DEST_USER="2f05c1f8800b"
DEST_DIR="/summative/1023-2024j"
PASSWORD="d4a1d225d0abda9549d8"

# Input validation (optional)
read -p "Confirm directory copy (y/n): " confirmation
if [[ $confirmation != "y" ]]; then
  exit 0
fi

# Error handling
scp -r "$SOURCE_DIR" "$DEST_USER@$DEST_HOST:$DEST_DIR" || exit 1

echo "Directory copied successfully."




