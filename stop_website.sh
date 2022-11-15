#! /bin/bash

echo "Stopping and disabling apache2"
sudo systemctl stop apache2
sudo systemctl disable apache2

echo "Removing website from /var/www/html"
sudo rm -rf /var/www/html/
sudo mkdir /var/www/html

echo "Removing apache2 from system"
sudo apt remove -y apache2

echo "Done!"