#!/bin/bash

# ensuring base operating system is working
sudo apt-get update -y
sudo apt-get upgrade -y

# installing and enabling nginx
sudo apt-get install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

# installing nodejs (V6)
sudo apt-get install python-software-properties

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install nodejs -y