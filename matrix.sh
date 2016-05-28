#!/bin/bash
trap "tput sgr0; clear; exit" SIGNINT
clear
# Initialization of variables
chars=(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 ^)
count=${#chars[@]}
# Color variables
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


# Get the size of the terminal window
arr=($(stty size | tr " " "\n"))
height=${arr[0]}
width=${arr[1]}

while :
do
	# Cursor movement
	y=$(($RANDOM % $height))
	x=$(($RANDOM % $width))
	echo $x $y
	tmp=$(($RANDOM % $count))
	echo $tmp ${arr[$(echo $tmp)]}
	tput cup $y $x ${arr[$(($RANDOM % $count))]}
	exit 0
	# case $((RANDOM % $count)) in
	# 	0)
	# 	printf "zero\n\r"
	# 	;;
	# 	1)
	# 	printf "one\n\r"
	# 	;;
	# 	*)
	# 	printf "everything else\n\r"
	# esac
done
