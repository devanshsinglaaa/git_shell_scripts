#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Greeting to <name>"
else
	echo "Greeting, $1"
fi
