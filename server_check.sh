#!/bin/bash

service="nginx"

read -p "The service is nginx, do you want to check status ?(y/n)" status

if [ "$status" = "y" ]; then
	sudo systemctl status nginx
elif [ "$status" = "n" ]; then
	echo "service terminated"
else
	echo "Wrong Input"
fi
