#!/bin/bash

read -p "Enter the number : " n

if [ $n -gt 0 ]; then
	echo "Positive Number"
elif [ $n -lt 0 ]; then
	echo "Negative Number"
else
	echo "Zero"
fi
	

