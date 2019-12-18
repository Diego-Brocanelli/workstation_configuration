#!/bin/bash 

#############################################################
###
### Installing Server
###
### Apache2
### Nginx
###
#############################################################
echo ""
echo ">>> Installing Server"

if [ $nginx == true ]
then
    echo "    Nginx...."
    sudo apt install nginx -y 1> /dev/null 2> /dev/stdout
fi

if [ $apache2 == true ]
then
    echo "    Apache2...."
    sudo apt install apache2 -y 1> /dev/null 2> /dev/stdout
fi
echo ""
