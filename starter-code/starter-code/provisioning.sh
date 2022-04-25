#!/bin/bash

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

cd app/app

sudo apt-get install python-software-properties -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs

sudo apt-get update -y

npm install

rm -rf /etc/nginx/sites-available/default

npm start &

# ensuring base operating system is working
#sudo apt-get update -y
#sudo apt-get upgrade -y

# installing and enabling nginx
#sudo apt-get install nginx -y

#sudo systemctl start nginx

#sudo systemctl enable nginx

# installing nodejs (V6)
#sudo apt-get install python-software-properties

#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

#sudo apt-get install nodejs -y

#sudo rm -rf /etc/nginx/sites-available/default

#sudo mv app/app/default_folder/default /etc/nginx/sites-available/

#sudo systemctl restart nginx

#cd app/app

#npm install

#npm start &

