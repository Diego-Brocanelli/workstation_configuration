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

#
# Percorre os itens a serem instalados, verificando se foram todos instalados com sucesso
#
for package in "${!packages[@]}"
do
    if [ ${packages[$package]} = true ] 
    then

        installed=$(dpkg --get-selections | grep $package )

        if [ -n "$installed" ]
        then
            
            echo -e "    $package .... \e[32m[INSTALLED]\e[39m"

        elif which $package > /dev/null ;
        then
            
            echo -e "    $package .... \e[32m[INSTALLED]\e[39m"
        
        else
        
            echo -e "    $package .... \e[31m[NOT INSTALLED]\e[39m" 
        
        fi
    fi
done

echo ""