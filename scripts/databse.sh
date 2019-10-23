#!/bin/bash 

#############################################################
###
### Installing Database
###
### MySQL
###
#############################################################
echo ""
echo ">>> Installing Database"
echo "    MySQL...."
sudo apt install mysql-client mysql-server -y 1> /dev/null 2> /dev/stdout
echo ""