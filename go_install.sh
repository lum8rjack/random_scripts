#!/bin/bash

# Steps taken from
# https://golang.org/doc/install

# If you have a previous version of Go installed, be sure to remove it before installing another

# Download Go version 1.15.3 for linux
wget https://golang.org/dl/go1.15.3.linux-amd64.tar.gz

# Extract the archive into /usr/local, creating a Go tree in /usr/local/go
tar -C /usr/local -zxf go1.15.3.linux-amd64.tar.gz

# Add /usr/local/go/bin to the PATH environment variable
# You can do this by adding the following line to your $HOME/.profile or /etc/profile (for a system-wide installation)
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile

# Verify Go is installed
go version

# Clean up by removing the Go archive
rm go1.15.3.linux-amd64.tar.gz


