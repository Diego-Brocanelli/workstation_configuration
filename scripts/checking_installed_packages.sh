#!/bin/bash 

echo ">>> Checking installed packages "

regsiter_log "Start proccess..." $date_start
regsiter_log "Finish..........." $(date +'%Y-%m-%d %T')
regsiter_log "Open vim and execute the command :PluginInstall"
regsiter_log "Execute the configuration of IDE"
regsiter_log "Thanks"

regsiter_log ">>> Checking installed packages"

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

            regsiter_log -e "    $package .... \e[32m[INSTALLED]\e[39m"

        elif which $package > /dev/null ;
        then

            echo -e "    $package .... \e[32m[INSTALLED]\e[39m"

            regsiter_log -e "    $package .... \e[32m[INSTALLED]\e[39m"

        else

            echo -e "    $package .... \e[31m[NOT INSTALLED]\e[39m" 

            regsiter_log -e "    $package .... \e[31m[NOT INSTALLED]\e[39m"
        fi
    fi
done

if [ $config_so_dracula_theme = true ]
then
    echo -e "    Dracula theme .... \e[32m[CONFIGURED]\e[39m"

    regsiter_log -e "    Dracula theme .... \e[32m[CONFIGURED]\e[39m"
fi

echo ""