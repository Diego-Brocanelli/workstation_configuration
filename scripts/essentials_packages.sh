#!/bin/bash

#--------------------------------------------------
# Responsible for installing the essential packages
#--------------------------------------------------

sudo apt update -y 1> /dev/null 2> /dev/stdout

title_echo "INSTALLING ESSENTIAL PACKAGES"

install_echo "Updating packages"
success_install_echo "Finished updating packages"

process_install_echo "build-essential" "Build Essential"
process_install_echo "debconf-utils" "Debconf Utils"
process_install_echo "binutils" "Binutils"
process_install_echo "wget" "Wget"
process_install_echo "unzip" "Unzip"

echo ""