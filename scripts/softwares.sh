#!/bin/bash 

#############################################################
###
### Installing software
###
### Update apt packages
### Build Essential
### cURL
### Git
### Snap
### Vim
###
#############################################################

sudo apt update -y 1> /dev/null 2> /dev/stdout
echo ">>> Installing software"
echo "    Updating apt...."

echo "    Build Essential...."
sudo apt install build-essential -y 1> /dev/null 2> /dev/stdout

echo "    cURL...."
sudo apt install curl -y 1> /dev/null 2> /dev/stdout

echo "    Vim...."
sudo apt install vim -y 1> /dev/null 2> /dev/stdout

echo "    Git...."
sudo apt install git -y 1> /dev/null 2> /dev/stdout

echo "    Configuration to vim editor on Git...."
git config --global core.editor vim

echo "    SNAP...."
sudo apt install snapd -y 1> /dev/null 2> /dev/stdout

echo "    Synapse...."
sudo add-apt-repository ppa:synapse-core/ppa -y && sudo apt-get update -y  && sudo apt-get install synapse -y 1> /dev/null 2> /dev/stdout
