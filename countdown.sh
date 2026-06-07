#!/bin/bash

read -p "Enter the number for reverse countdown : " n

while [ $n -ge 0 ]
do
	echo $n
	n=$((n-1))
done
echo "Done, loop finished"
