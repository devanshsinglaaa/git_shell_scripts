#!/bin/bash

packages=(nginx curl wget)

for pkg in "${packages[@]}"
do
	if dpkg -s $pkg &> /dev/null; then
		echo "Package already installed"
		sudo systemctl status $pkg
	else
		sudo apt-get update
		sudo apt-get install $pkg
	fi
done
