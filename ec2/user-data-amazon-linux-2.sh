#!/bin/bash

# Shell script to install several applications from user data when bootstapping ec2
# Applications that will be installed consist of aws cli, docker container runtime

# Install aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

sleep 5

# Install docker container runtime
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo gpasswd -M ec2user,ssm-user docker
