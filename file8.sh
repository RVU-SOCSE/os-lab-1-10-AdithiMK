#!/bin/bash

echo "Lab 8:Environment Variables Demo "

# Setting variable
name="adithi"
course="Operating systems"

echo ""
echo "Local Variables:"
echo "Name: $name"
echo "Course: $course"

# Exporting variables
export name
export course

echo ""
echo "Using printenv command:"
printenv name
printenv course

echo ""
echo "all environment Variables (using env):"
env
