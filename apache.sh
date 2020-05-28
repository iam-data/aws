#!/bin/bash

yum update -y
yum install -y httpd24 php70 mysql php7-mysqlnd
# Start the Apache web server.
sudo systemctl start httpd
# Use the systemctl command to configure the Apache web server to start at each system boot.
sudo systemctl enable httpd
# verify that httpd is on by running the following command:
sudo systemctl is-enabled httpd
usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www