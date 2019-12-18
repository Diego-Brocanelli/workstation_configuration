#!/bin/bash 

#############################################################
###
### Installing Programming languages
###
### NodeJS
### Go
### PHP5.6
### PHP7.2
### PHP7.3
### PHP7.4
### Composer
### SASS
### LESS
###
#############################################################
echo ">>> Installing Programming languages"

if [ $node == true ]
then
    echo "    NodeJS...."
    sudo snap install node --channel=10/stable --classic 1> /dev/null 2> /dev/stdout
fi

if [ $go == true ]
then
    echo "    Go...."
    sudo snap install go --classic 1> /dev/null 2> /dev/stdout
    mkdir $HOME/go 1> /dev/null 2> /dev/stdout
fi

if [ $php56 == true || $php72 == true || $php73 == true || $php74 == true ]
then
    echo "    ppa:ondrej/php...."
    sudo apt-get install python-software-properties -y 1> /dev/null 2> /dev/stdout
    sudo add-apt-repository ppa:ondrej/php -y 1> /dev/null 2> /dev/stdout
    sudo apt update 1> /dev/null 2> /dev/stdout
fi

if [ $php56 == true ]
then
    echo "    PHP5.6...."
    sudo apt install php5.6-fpm php5.6 php5.6-dev php5.6-cli -y 1> /dev/null 2> /dev/stdout
    echo "    extensions PHP5.6...."
    sudo apt-get install -y php5.6-fpm php5.6 php5.6-dev php5.6-cli php5.6-mbstring php5.6-mcrypt php5.6-gd php5.6-curl php5.6-xml php5.6-mysql php5.6-zip php5.6-xdebug -y 1> /dev/null 2> /dev/stdout
fi

if [ $php72 == true ]
then
    echo "    PHP7.2...."
    sudo apt install php7.2-fpm php7.2 php7.2-dev php7.2-cli -y 1> /dev/null 2> /dev/stdout
    echo "    extensions PHP7.2...."
    sudo apt-get install -y php7.2-fpm php7.2 php7.2-dev php7.2-cli php7.2-mbstring php7.2-gd php7.2-curl php7.2-xml php7.2-mysql php7.2-zip php7.2-xdebug -y 1> /dev/null 2> /dev/stdout
fi

if [ $php73 == true ]
then
    echo "    PHP7.3...."
    sudo apt install php7.3-fpm php7.3 php7.3-dev php7.3-cli -y 1> /dev/null 2> /dev/stdout
    echo "    extensions PHP7.3...."
    sudo apt-get install -y php7.3-fpm php7.3 php7.3-dev php7.3-cli php7.3-mbstring php7.3-gd php7.3-curl php7.3-xml php7.3-mysql php7.3-zip php7.3-xdebug -y 1> /dev/null 2> /dev/stdout
fi

if [ $php74 == true ]
then
    echo "    PHP7.4...."
    sudo apt install php7.4-fpm php7.4 php7.4-dev php7.4-cli -y 1> /dev/null 2> /dev/stdout
    echo "    extensions PHP7.4...."
    sudo apt-get install -y php7.4-fpm php7.4 php7.4-dev php7.4-cli php7.4-mbstring php7.4-gd php7.4-curl php7.4-xml php7.4-mysql php7.4-zip php7.4-xdebug -y 1> /dev/null 2> /dev/stdout
fi

if [ $php56 == true || $php72 == true || $php73 == true || $php74 == true ]
then
    echo "    Composer...."
    php -r "readfile('https://getcomposer.org/installer');" | php 1> /dev/null 2> /dev/stdout
    sudo mv composer.phar /usr/bin/composer 1> /dev/null 2> /dev/stdout
fi

if [ $sass == true ]
then
    echo "    SASS...."
    sudo npm install -g sass 1> /dev/null 2> /dev/stdout
fi

if [ $less == true ]
then
    echo "    Less...."
    sudo npm install -g less 1> /dev/null 2> /dev/stdout
fi

echo ""