#!/bin/bash

# Installing Linux updates

sudo apt-get update -y

sudo apt-get upgrade -y

# install and enable nginx

sudo apt-get install nginx -y

sudo apt-get start nginx

sudo apt-get enable nginx

# app dependencies

sudo apt-get install python-software-properties

curl -sL  https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install nodejs -y
