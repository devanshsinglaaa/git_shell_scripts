#!/bin/bash

read -p "Enter the file name : " filename

if [ -f $filename ]; then
	echo "File Exists"
else
	echo "File doesn't Exists"
fi

