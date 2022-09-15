#!/bin/bash

# Update the AMI Linux2
echo '******Start OS update******'
sudo yum -y update
# Install the Apache Server
echo '#####Start installing Apache#####'
sudo yum install -y httpd.x86_64
echo '#####Start the Apache Service#####'
sudo systemctl start httpd.service
echo '#####Enable the Apache Service#####'
sudo systemctl enable httpd.service
sleep 2
echo -e "\n"
echo '%%%%%%%%%% Create HMTL PAGE %%%%%%%%%%%%%'
echo '<html> <head><title> Welcome to LUIT </title></head>' > /var/www/html/index.html
echo '<body bgcolor="yellow"><h3 style="color:green">Welcome Green Team !!!</h3>' >> /var/www/html/index.html
echo '</html>' >> /var/www/html/index.html
echo '$$$$$$$$$$$$-Check the webpage using the public IP address-$$$$$$$$$$'
