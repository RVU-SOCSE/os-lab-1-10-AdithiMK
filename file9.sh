#!/bin/bash

echo "Lap 9: I/0 Redirection Demo "

# Output redirection (overwrite)
echo "hello, this is OS Lab" > filel.txt
echo "content written to filel.txt"

# Append output
echo "appending new line" >> filel.txt
echo "content appended to filel.txt"

# Input redirection
echo ""
echo "reading from filel.txt using input redirection:"
cat < filel.txt

# Error redirection
echo ""
echo "trying to read non-existing file:"
cat file_not_exist.txt 2> error.txt
echo "error message stored in error.txt"

# Display error file
echo ""
echo "error file content:"
cat error.txt
