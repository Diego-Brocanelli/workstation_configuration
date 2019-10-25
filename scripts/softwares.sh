#!/bin/bash 

#############################################################
###
### Installing software
###
### Update apt packages
### Build Essential
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

echo "    Git...."
sudo apt install git -y 1> /dev/null 2> /dev/stdout

echo "    CURL...."
sudo apt install curl -y 1> /dev/null 2> /dev/stdout

echo "    Vim...."
sudo apt install vim -y 1> /dev/null 2> /dev/stdout

echo "    Installing some prerequisite packages that can use packages via HTTPS...."
sudo apt  apt-transport-https -y 1> /dev/null 2> /dev/stdout
sudo apt ca-certificates -y 1> /dev/null 2> /dev/stdout
sudo apt software-properties-common -y 1> /dev/null 2> /dev/stdout
