#!/bin/bash

#--------------------------------------------------
# Responsible for installing the essential packages
#--------------------------------------------------

echo "    Updating packages...."
sudo apt update -y 1> /devull 2> /dev/stdout

echo "    Installing build-essential package...."
sudo apt install build-essential -y 1> /devull 2> /dev/stdout

echo "    Installing deb-conf-utils package...."
sudo apt install debconf-utils -y 1> /devull 2> /dev/stdout

echo "    Installing binutils package...."
sudo apt install binutils -y 1> /devull 2> /dev/stdout
