#!/bin/bash 

title_echo "INSTALLING SERVER"

update_packages

if [ ${packages[nginx]} = true ]
then
    process_install_echo "nginx" "Nginx"
    process_install_echo "fcgiwrap" "Fcgiwrap"

    install_echo "Copying VHost file example PHP5.6"

    sudo cp ./files/nginx/example-php56.development /etc/nginx/sites-available/example-php56.development

    success_install_echo "Finalized copy of PHP5.6 example VHost file"

    install_echo "Copying VHost file example PHP7.4"

    sudo cp ./files/nginx/example-php74.development /etc/nginx/sites-available/example-php74.development

    success_install_echo "Finalized copy of PHP7.4 example VHost file"

    install_echo "Copying VHost file example PHP8.0"

    sudo cp ./files/nginx/example-php80.development /etc/nginx/sites-available/example-php80.development

    success_install_echo "Finalized copy of PHP8.0 example VHost file"
fi

if [ ${packages[apache2]} = true ]
then
    process_install_echo "apache2" "Apache2"
fi

echo ""
