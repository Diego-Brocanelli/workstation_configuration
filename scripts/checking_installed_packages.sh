#!/bin/bash 

echo ">>> Checking installed packages "

date_end=$(date +'%Y-%m-%d %T')

mkdir ./log

header_log $date_start $date_end

#
# Scroll through the items to be installed, making sure they were all successfully installed.
#
for package in "${!packages[@]}"
do
    if [ ${packages[$package]} = true ] 
    then

        installed=$(dpkg --get-selections | grep $package )

        if [ -n "$installed" ]
        then

            echo -e "    $package .... \e[32m[INSTALLED]\e[39m"

            register_log "    $package ....INSTALLED"

        elif which $package > /dev/null ;
        then

            echo -e "    $package .... \e[32m[INSTALLED]\e[39m"

            register_log "    $package .... INSTALLED"

        else

            echo -e "    $package .... \e[31m[NOT INSTALLED]\e[39m" 

            register_log -e "    $package .... NOT INSTALLED"
        fi
    fi
done

if [ $config_so_dracula_theme = true ]
then
    echo -e "    Dracula theme .... \e[32m[CONFIGURED]\e[39m"

    register_log "    Dracula theme .... CONFIGURED"
fi

footer_log

echo ""