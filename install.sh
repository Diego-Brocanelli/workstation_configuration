#!/bin/bash 

# Responsible for loading the file containing the information of what will be installed.
source setup.sh

# Installing 
source scripts/hello.sh

date_start = $(date +'%Y-%m-%d %T')

if [ $softwares == true ]
then
    # Installing softwares
    source scripts/softwares.sh
fi

if [ $server == true ]
then
    # Installing server
    source scripts/server.sh
fi

if [ $database == true ]
then
    # Installing database
    source scripts/database.sh
fi

if [ $programming_languages == true ]
then
    # Installing programming languages
    source scripts/programming_languages.sh
fi

if [ $tools == true ]
then
    # Installing tools
    source scripts/tools.sh
fi

# Installing server configuration
# The server settings is based on the settings made in the server step.
source scripts/server_configuration.sh

if [ ${item[vim]} == true ]
then
# Installing vim configuration
source scripts/vim_configuration.sh
fi

if [ $config_so_dracula_theme == true ]
then
    # Installing config SO dracula theme
    source scripts/config_so_dracula_theme.sh
fi

# Installing checking installed packages
source scripts/checking_installed_packages.sh

# process completion
source scripts/finalization.sh