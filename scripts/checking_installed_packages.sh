#!/bin/bash 

title_echo "CHECKING INSTALLED PACKAGES"

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

        if [ $package = "set-vim-git" ] || [ $package = "set-default-zsh" ]
        then
            continue
        fi

        installed=$(dpkg --get-selections | grep $package )

        if [ -n "$installed" ]
        then

            echo -e " \u2705 $package"

            register_log "    $package ....INSTALLED"

        elif which $package > /dev/null ;
        then

            echo -e " \u2705 $package"

            register_log "    $package .... INSTALLED"

        else

            echo -e " \u274C $package" 

            register_log "    $package .... NOT INSTALLED"
        fi
    fi
done

if [ $config_so_dracula_theme = true ]
then
    echo -e " \u2705 Dracula theme"

    register_log "    Dracula theme .... CONFIGURED"
fi

footer_log

echo ""