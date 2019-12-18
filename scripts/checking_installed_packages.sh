#!/bin/bash 

#############################################################
###
### Checking installed apt packages
###
### php5.6 
### php7.2 
### php7.3 
### php7.4
### mysql 
### postgres
### less 
### snap 
### vim 
### git 
### snapd 
### build-essential 
### nginx 
### mysql-workbench
### dbeaver
###
#############################################################

echo ">>> Checking installed apt packages "

packages=(php5.6 php7.2 php7.3 php7.4 mysql less snap vim git snapd build-essential apache2 nginx dbeaver mysql-workbench curl) 
for package in "${packages[@]}"
do
    installed=$(dpkg --get-selections | grep $package ) 

    if [ -n "$installed" ] ;
    then
        echo -e "    $package .... \e[32m[INSTALLED]\e[39m"
    else
        echo -e "    $package .... \e[31m[NOT INSTALLED]\e[39m"
    fi
done

#############################################################
###
### Checking installed snap packages
###
### sass 
### less 
### composer 
### node 
### npm 
### go 
### skype 
### slack 
### android-studio 
### gitkraken 
### code 
### subl 
### whatsdesk 
### telegram-desktop 
### inkscape 
### photogimp 
### remmina 
### postman htop
###
#############################################################
echo ""
echo ">>> Checking installed apt packages "

packages=(sass less composer node npm go skype slack android-studio gitkraken code subl whatsdesk telegram-desktop inkscape photogimp remmina postman htop)
for package in "${packages[@]}"
do
    if which $package > /dev/null
    then
        echo -e "    $package .... \e[32m[INSTALLED]\e[39m"
    else
        echo -e "    $package .... \e[31m[NOT INSTALLED]\e[39m"
    fi
done

echo ""