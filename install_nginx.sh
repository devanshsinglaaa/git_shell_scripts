#!/bin/bash

sudo apt-get install update
sudo apt-get install nginx -y
sudo systemctl nginx
sudo systemctl enable nginx


