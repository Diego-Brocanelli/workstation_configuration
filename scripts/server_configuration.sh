#!/bin/bash 

#############################################################
###
### Server configuration
###
### Set user to /var/www directory
### Restart do nginx
### Configurando PHP7.3 como default no cli
### Restart do PHP5.6
### Restart do PHP7.2
### Restart do PHP7.3
###
#############################################################

echo ">>> Configurate to server "
echo "    Set user to /var/www directory...."
sudo chown -R $USER:$USER /var/www 1> /dev/null 2> /dev/stdout

if [ $nginx == true ]
then
    echo "    Restart do nginx...."
    sudo service nginx restart 1> /dev/null 2> /dev/stdout
fi

if [ $apache2 == true ]
then
    echo "    Restart do apache2...."
    sudo service apache2 restart 1> /dev/null 2> /dev/stdout
fi

if [ $php56 == true ]
then
    echo "    Restart do PHP5.6...."
    sudo service php5.6-fpm restart 1> /dev/null 2> /dev/stdout
fi

if [ $php72 == true ]
then
    echo "    Restart do PHP7.2...."
    sudo service php7.2-fpm restart 1> /dev/null 2> /dev/stdout
fi

if [ $php73 == true ]
then
    echo "    Restart do PHP7.3...."
    sudo service php7.3-fpm restart 1> /dev/null 2> /dev/stdout
fi

if [ $php74 == true ]
then
    echo "    Restart do PHP7.4...."
    sudo service php7.4-fpm restart 1> /dev/null 2> /dev/stdout

    echo "    Configurando PHP7.4 como default no cli...."
    sudo update-alternatives --set php /usr/bin/php7.4 1> /dev/null 2> /dev/stdout
fi

echo ""