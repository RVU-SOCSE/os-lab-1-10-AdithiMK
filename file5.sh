#!/bin/bash

echo "---- File Permission & Ownership ----"

echo "Enter file name:"
read file

if [ ! -f "$file" ]; then   # fixed spacing
    echo "File not found!"
    exit 1
fi

echo "Enter permission (e.g., 755):"
read perm

chmod "$perm" "$file"

echo "Enter new owner name:"
read owner

sudo chown "$owner" "$file"   # may require sudo

echo "Updated file details:"
ls -l "$file"
