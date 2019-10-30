#!/bin/bash 

#############################################################
###
### Checking installed apt packages
###
### snap 
### vim 
### git 
### snapd 
### build-essential 
###
#############################################################

echo ">>> 🌀 Checking installed apt packages "

packages=(snap vim git snapd build-essential) 
for package in "${packages[@]}"
do
    installed=$(dpkg --get-selections | grep $package ) 

    if [ -n "$installed" ] ;
    then
        echo -e "        ◽ $package .... \e[32m[INSTALLED]\e[39m"
    else
        echo -e "        ◽ $package .... \e[31m[NOT INSTALLED]\e[39m"
    fi
done

#############################################################
###
### Checking installed snap packages
###
### skype 
### slack 
### android-studio 
### gitkraken
### datagrip
### code 
### whatsdesk 
### telegram-desktop 
### inkscape 
### photogimp 
### remmina 
### postman
### htop
###
#############################################################
echo ""
echo ">>> 🌀 Checking installed apt packages "

packages=(skype slack android-studio datagrip gitkraken code whatsdesk telegram-desktop inkscape photogimp remmina postman htop)
for package in "${packages[@]}"
do
    if which $package > /dev/null
    then
        echo -e "        ◽ $package .... \e[32m[INSTALLED]\e[39m"
    else
        echo -e "        ◽ $package .... \e[31m[NOT INSTALLED]\e[39m"
    fi
done

echo ""
echo ""