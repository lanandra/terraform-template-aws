#!/bin/bash

# Shell script to install aws cli from user data when bootstapping ec2
# Script will run on user ubuntu
# Might need to relogin first after you can use aws cli or verify with aws --version
sudo -u ubuntu
sudo apt-get update
sudo apt-get install -y unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install