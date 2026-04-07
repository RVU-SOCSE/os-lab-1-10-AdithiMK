#!/bin/bash

echo "lab 6: Directory management"
while true
do
echo ""
echo "1. Create a directory"
echo "2. List directory"
echo "3.Delete Directory"
echo "4.Exit"

echo "Enter your choice:"
read choice

case $choice in
1)

echo "Enter directory name to create:"
read dirname
mkdir "$dirname"
if [ $? -eq 0 ]; then
echo "Directory '$dirname' created successfully."
else
echo "Error creating directory."
fi
;;

2)
echo "directories in current location:"
ls -d */
;;

3)
echo "Enter Directory name to delete:"
read dirname
rmdir "$dirname"
if [$? -eq 0 ]; then
echo "Directory '$dirname'deleted successfully."
else
echo "error deleting directory (may not be empty)."
fi
;;

4)
echo "exiting program..."
break
;;

*)
echo "Invalid choice. Try again!"
;;
esac
done

