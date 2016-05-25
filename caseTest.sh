#!/bin/bash
while :
do
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
