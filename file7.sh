#!/bin/bash
echo "Lab 7:memory usage monitor"

echo ""
echo "current Memory status (using free command):"
free -h

echo ""
echo "detailed memory info (using top command):"
top -b -n 1 | grep "MiB Mem"

echo ""
echo "available Memory:"
free -h | grep "Mem" | awk ' {print "Available: " $7}'

