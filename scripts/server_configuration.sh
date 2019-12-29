#!/bin/bash 

title_echo "CONFIGURATE TO SERVER "

line_echo "Set user to /var/www directory...."
sudo chown -R $USER:$USER /var/www 1> /dev/null 2> /dev/stdout

if [ ${packages[nginx]} = true ]
then
    line_echo "Restart nginx"
    sudo service nginx restart 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[apache2]} = true ]
then
    line_echo "Restart apache2"
    sudo service apache2 restart 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php5.6-fpm]} = true ]
then
    line_echo "Restart PHP5.6"
    sudo service php5.6-fpm restart 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php7.2-fpm]} = true ]
then
    line_echo "Restart PHP7.2"
    sudo service php7.2-fpm restart 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php7.3-fpm]} = true ]
then
    line_echo "Restart PHP7.3"
    sudo service php7.3-fpm restart 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php7.4-fpm]} = true ]
then
    line_echo "Restart PHP7.4"
    sudo service php7.4-fpm restart 1> /dev/null 2> /dev/stdout

    line_echo "Configurando PHP7.4 como default no cli"
    sudo update-alternatives --set php /usr/bin/php7.4 1> /dev/null 2> /dev/stdout
fi

echo ""