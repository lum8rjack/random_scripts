#!/bin/bash

# Steps taken from
# https://docs.docker.com/engine/install/ubuntu/

# Update the apt package index and install packages to allow apt to use a repository over HTTPS
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common


# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


# Verify that you now have the key with the fingerprint "9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88"
sudo apt-key fingerprint 0EBFCD88


# Set up the stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"


# Update the apt package index and install the latest version of docker engine and containerd
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


# Use Docker as a non-root user by adding the user to the "docker" group
#sudo usermod -aG docker <put username here>
# You will need to log out and back in for the group change to take effect
