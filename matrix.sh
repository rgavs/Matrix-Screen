#!/bin/bash
clear

# Initialization of variables
chars=(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 ^)
blue="\033[0;34m"
brightblue="\033[1;34m"
cyan="\033[0;36m"
brightcyan="\033[1;36m"
green="\033[0;32m"
brightgreen="\033[1;32m"
red="\033[0;31m"
brightred="\033[1;31m"
white="\033[1;37m"
black="\033[0;30m"
grey="\033[0;37m"
darkgrey="\033[1;30m"

trap "tput sgr0; clear; exit" SIGNINT

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

count=${#chars[@]}

while :
do
	# Cursor movement
	tput cup 5 20 #move cursor to screen location X,Y (top left is 0,0)
	printf "H"
	tput cup 5 21
	printf "e"
	tput cup 5 22
	printf "l"
	tput cup 5 23
	printf "l"
	tput cup 5 24
	printf "o"
	tput cup 0 0
	printf "Random number: $RANDOM \r\n"
	case $((RANDOM%5+0)) in
		0)
		printf "zero\n\r"
		;;
		1)
		printf "one\n\r"
		;;
		*)
		printf "everything else\n\r"
	esac
done
