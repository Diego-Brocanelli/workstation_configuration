#!/bin/bash

#--------------------------------------------------
# Responsible for installing the essential packages
#--------------------------------------------------

title_echo "INSTALLING ESSENTIAL PACKAGES"

update_packages

process_install_echo "build-essential" "Build Essential"
process_install_echo "debconf-utils" "Debconf Utils"
process_install_echo "binutils" "Binutils"
process_install_echo "wget" "Wget"
process_install_echo "unzip" "Unzip"

echo ""