#!/bin/bash 

echo ">>> Checking installed apt packages "

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

        elif which $package > /dev/null ;
        then

            echo -e "    $package .... \e[32m[INSTALLED]\e[39m"

        else

            echo -e "    $package .... \e[31m[NOT INSTALLED]\e[39m" 

        fi
    fi
done

if [ $config_so_dracula_theme = true ]
then
    echo -e "    \e[32m[Dracula theme configured]\e[39m .... "
fi

echo ""