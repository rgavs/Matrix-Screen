#!/bin/bash
clear
trap "tput sgr0; clear; exit" SIGNINT
while :
  do :
  	printf "Random number: $RANDOM \r\n"
done
