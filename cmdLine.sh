#!/bin/bash
# Command Line help option
# $0 = name of the file
# $1 = arg 1 value
# $2 = arg 2 value
if [[ $1 = -h ]]; then
	echo "Display a Matrix Screen"
	echo "Usage: matrix [color]"
	echo "Example: matrix green"
	exit 0 # exit the script
fi
