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

sudo apt update -y 1> /dev/null 2> /dev/stdout

if [ ${packages[nginx]} == true ]
then
    echo "    Nginx...."
    sudo apt install nginx -y 1> /dev/null 2> /dev/stdout
    #copy example PHP 5.6
    echo "    Copying VHost file example PHP5.6...."
    sudo cp ./files/nginx/example-php56.development /etc/nginx/sites-available/example-php56.development
    echo "    Copying VHost file example PHP7.4...."
    #copy example PHP 7.4
    sudo cp ./files/nginx/example-php74.development /etc/nginx/sites-available/example-php74.development
fi

if [ ${packages[apache2]} == true ]
then
    echo "    Apache2...."
    sudo apt install apache2 -y 1> /dev/null 2> /dev/stdout
fi
echo ""
