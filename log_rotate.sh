#!/bin/bash

echo "Log rotation Script started"

LOG_DIR=$1

echo "Directory Given : $LOG_DIR"

if [ ! -d "$LOG_DIR" ]; then
	echo "Directory doesn't exist"
	exit 1
fi

echo "Directory is valid"
