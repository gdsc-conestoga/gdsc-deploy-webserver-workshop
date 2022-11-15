#! /bin/bash

echo "Updating packages"
sudo apt update

echo "Upgrading packages"
sudo apt upgrade -y

echo "Installing apache2"
sudo apt install -y apache2

echo "Enabling and starting apache2"
sudo systemctl enable apache2
sudo a2dissite 000-default.conf
sudo systemctl restart apache2

echo "copying website to /var/www/html/*"
sudo rm -f /var/www/html/index.html
sudo cp -r my_website/* /var/www/html/

echo "Done!"