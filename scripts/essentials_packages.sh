#!/bin/bash

#--------------------------------------------------
# Responsible for installing the essential packages
#--------------------------------------------------

sudo apt update -y 1> /dev/null 2> /dev/stdout

title_echo "INSTALLING ESSENTIAL PACKAGES"

line_echo "Updating packages"

line_echo "build-essential package"
sudo apt install build-essential -y 1> /dev/null 2> /dev/stdout

line_echo "deb-conf-utils package"
sudo apt install debconf-utils -y 1> /dev/null 2> /dev/stdout

line_echo "binutils package"
sudo apt install binutils -y 1> /dev/null 2> /dev/stdout

echo ""