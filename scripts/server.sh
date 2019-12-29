#!/bin/bash 

title_echo "INSTALLING SERVER"

sudo apt update -y 1> /dev/null 2> /dev/stdout

if [ ${packages[nginx]} = true ]
then
    line_echo "Nginx"
    sudo apt install nginx -y 1> /dev/null 2> /dev/stdout

    line_echo "Installing fcgiwrap package"
    sudo apt install fcgiwrap -y 1> /dev/null 2> /dev/stdout

    line_echo "Copying VHost file example PHP5.6"
    sudo cp ./files/nginx/example-php56.development /etc/nginx/sites-available/example-php56.development

    line_echo "Copying VHost file example PHP7.4"
    sudo cp ./files/nginx/example-php74.development /etc/nginx/sites-available/example-php74.development
fi

if [ ${packages[apache2]} = true ]
then
    line_echo "Apache2"
    sudo apt install apache2 -y 1> /dev/null 2> /dev/stdout
fi

echo ""
