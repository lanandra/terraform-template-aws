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
sudo amazon-linux-extras install -y docker
sudo service docker start
sudo gpasswd -M ssm-user docker

sleep 5

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
