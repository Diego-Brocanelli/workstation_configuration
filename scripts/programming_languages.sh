#!/bin/bash 

title_echo "INSTALLING PROGRAMMING LANGUAGES"

update_packages

if [ ${packages[node]} = true ]
then
    process_install_echo "nodejs" "NodeJS"
fi

if [ ${packages[go]} = true ]
then
    install_echo "Starting installation: Go"

    wget -c -P ./temp wget https://golang.org/dl/go1.15.6.linux-amd64.tar.gz 1> /dev/null 2> /dev/stdout
    rm ./temp/go1.15.6.linux-amd64.tar.gz
    mkdir $HOME/go 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Go"
fi

if [ ${packages[php5.6-fpm]} = true ] || [ ${packages[php7.2-fpm]} = true ] || [ ${packages[php7.3-fpm]} = true ] || [ ${packages[php7.4-fpm]} = true ] || [ ${packages[php8.0-fpm]} = true ]
then
    install_echo "Starting installation: ppa:ondrej/php"

    sudo apt-get install python-software-properties -y 1> /dev/null 2> /dev/stdout
    sudo add-apt-repository ppa:ondrej/php -y 1> /dev/null 2> /dev/stdout
    sudo apt update 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: pa:ondrej/php"
fi

if [ ${packages[php5.6-fpm]} = true ]
then
    install_echo "Starting installation: PHP5.6"
    sudo apt install php5.6-fpm php5.6 php5.6-dev php5.6-cli -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: PHP5.6"

    install_echo "Starting installation: Extensions PHP5.6"
    sudo apt-get install -y php5.6-fpm php5.6 php5.6-dev php5.6-cli php5.6-mbstring php5.6-mcrypt php5.6-gd php5.6-curl php5.6-xml php5.6-mysql php5.6-zip php5.6-xdebug -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: Extensions PHP5.6"

    if [ ${packages[nginx]} = true ]
    then
        install_echo "Starting Changing the php.ini file"
        sudo sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/5.6/fpm/php.ini
        success_install_echo "Finished Changing the php.ini file"
    fi

    sudo update-alternatives --set php /usr/bin/php5.6 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php7.2-fpm]} = true ]
then
    install_echo "Starting installation: PHP7.2"
    sudo apt install php7.2-fpm php7.2 php7.2-dev php7.2-cli -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: PHP7.2"
    
    install_echo "Starting installation: Extensions PHP7.2"
    sudo apt-get install -y php7.2-fpm php7.2 php7.2-dev php7.2-cli php7.2-mbstring php7.2-gd php7.2-curl php7.2-xml php7.2-mysql php7.2-zip php7.2-xdebug -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: Extensions PHP7.2"

    if [ ${packages[nginx]} = true ]
    then
        install_echo "Starting Changing the php.ini file"
        sudo sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.2/fpm/php.ini
        success_install_echo "Finished Changing the php.ini file"
    fi

    sudo update-alternatives --set php /usr/bin/php7.2 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php7.3-fpm]} = true ]
then
    install_echo "Starting installation: PHP7.3"
    sudo apt install php7.3-fpm php7.3 php7.3-dev php7.3-cli -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: PHP7.3"

    install_echo "Starting installation: Extensions PHP7.3"
    sudo apt-get install -y php7.3-fpm php7.3 php7.3-dev php7.3-cli php7.3-mbstring php7.3-gd php7.3-curl php7.3-xml php7.3-mysql php7.3-zip php7.3-xdebug -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: Extensions PHP7.3"

    if [ ${packages[nginx]} = true ]
    then
        install_echo "Starting Changing the php.ini file"
        sudo sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.3/fpm/php.ini
        success_install_echo "Finished Changing the php.ini file"
    fi

    sudo update-alternatives --set php /usr/bin/php7.3 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php7.4-fpm]} = true ]
then
    install_echo "Starting installation: PHP7.4"
    sudo apt install php7.4-fpm php7.4 php7.4-dev php7.4-cli -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: PHP7.4"

    install_echo "Starting installation: Extensions PHP7.4"
    sudo apt-get install -y php7.4-fpm php7.4 php7.4-dev php7.4-cli php7.4-mbstring php7.4-gd php7.4-curl php7.4-xml php7.4-mysql php7.4-zip php7.4-xdebug -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: Extensions PHP7.4"

    if [ ${packages[nginx]} = true ]
    then
        install_echo "Starting Changing the php.ini file"
        sudo sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.4/fpm/php.ini
        success_install_echo "Finished Changing the php.ini file"
    fi

    sudo update-alternatives --set php /usr/bin/php7.4 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php8.0-fpm]} = true ]
then
    install_echo "Starting installation: PHP8.0"
    sudo apt install php8.0-fpm php8.0 php8.0-dev php8.0-cli -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: PHP8.0"

    install_echo "Starting installation: Extensions PHP8.0"
    sudo apt-get install -y php8.0-fpm php8.0 php8.0-dev php8.0-cli php8.0-mbstring php8.0-gd php8.0-curl php8.0-xml php8.0-mysql php8.0-zip php8.0-xdebug -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: Extensions PHP8.0"

    if [ ${packages[nginx]} = true ]
    then
        install_echo "Starting Changing the php.ini file"
        sudo sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/8.0/fpm/php.ini
        success_install_echo "Finished Changing the php.ini file"
    fi

    sudo update-alternatives --set php /usr/bin/php8.0 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[php5.6-fpm]} = true ] || [ ${packages[php7.2-fpm]} = true ] || [ ${packages[php7.3-fpm]} = true ] || [ ${packages[php7.4-fpm]} = true ] || [ ${packages[php8.0-fpm]} = true ]
then
    install_echo "Starting installation: Composer"
    php -r "readfile('https://getcomposer.org/installer');" | php 1> /dev/null 2> /dev/stdout
    sudo mv composer.phar /usr/bin/composer 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: Composer"
fi

if [ ${packages[sass]} = true ]
then
    install_echo "Starting installation: SASS"
    sudo npm install -g sass 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: SASS"
fi

if [ ${packages[less]} = true ]
then
    install_echo "Starting installation: Less"
    sudo npm install -g less 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished installation: Less"
fi

if [ ${packages[rust]} = true ]
then
    process_install_echo "rustc" "Rust"
fi

echo ""