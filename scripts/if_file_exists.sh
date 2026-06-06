#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please pass atleast one arguements"
else
	if [ -f $1 ]; then
		echo "file exists"
	else
		echo "file doesn't exists"
	fi
fi
