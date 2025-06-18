#!/bin/bash

# Update and install Apache
sudo apt update
sudo apt install -y apache2

# Enable and start Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Create sample web page
echo "<h1>Welcome to WebVM hosted on Azure!</h1>" | sudo tee /var/www/html/index.html

