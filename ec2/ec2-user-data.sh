#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y

# install docker and set up docker user
yum install -y docker
usermod -a -G docker ec2-user
newgrp docker

# install docker-compose
yum install python3-pip
pip3 install docker-compose

# ensure everything is started and enabled
systemctl start docker.service
systemctl enable docker.service

# other useful things
yum install -y git
