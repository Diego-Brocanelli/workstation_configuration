#!/bin/bash 

# Responsible for loading the file containing the information of what will be installed.
source setup.sh

date_start=$(date +'%Y-%m-%d %T')

# Installing 
source scripts/hello.sh

# Installing softwares
source scripts/softwares.sh

# Installing server
source scripts/server.sh

# Installing database
source scripts/database.sh

# Installing programming languages
source scripts/programming_languages.sh

# Installing tools
source scripts/tools.sh

# Installing server configuration
# The server settings is based on the settings made in the server step.
source scripts/server_configuration.sh

if [ ${packages[vim]} = true ]
then
    # Installing vim configuration
    source scripts/vim_configuration.sh
fi

if [ $config_so_dracula_theme = true ]
then
    # Installing config SO dracula theme
    source scripts/config_so_dracula_theme.sh
fi

# Installing checking installed packages
source scripts/checking_installed_packages.sh

# process completion
source scripts/finalization.sh