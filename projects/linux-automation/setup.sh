#!/bin/bash

# Update system
sudo yum update -y

# Install Node.js and NPM
sudo yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo yum install -y nodejs
sudo yum install -y npm

# Check versions
node -v
npm -v

# Install Git
sudo yum install -y git

# Install and enable firewall
sudo yum install -y firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld

# Allow only necessary ports
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --reload

# Disable root SSH login
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd

# Check failed login attempts
sudo grep "Failed password" /var/log/secure

# Download web app code from GitHub
git clone https://github.com/contentful/the-example-app.nodejs.git

# Install dependencies and run web application
cd the-example-app.nodejs/ || exit
npm install
npm run start:dev
