#!/bin/bash 

#
# tell what you want installed
# If you want a block or item not to be installed, enter false. 
#

declare -A packages

# Responsible for indicating which software will be installed. 
softwares=true

packages[build-essential]=true
packages[curl]=true
packages[vim]=true
packages[git]=true
packages[snapd]=true
packages[synapse]=true
packages[aws-cli]=false
packages[jenkins]=false
packages[docker]=false

# Responsible for indicating which server will be installed.
server=true

packages[nginx]=true
packages[apache2]=false

# Responsible for indicating which databese will be installed.
database=true

packages[mysql]=true
packages[postgresql]=false

# Responsible for indicating which programming languages will be installed.
programming_languages=true

packages[node]=true
packages[go]=true 
packages[php5.6-fpm]=true
packages[php7.2-fpm]=false
packages[php7.3-fpm]=true
packages[php7.4-fpm]=true
packages[composer]=true
packages[sass]=true 
packages[less]=false
packages[rust]=false
packages[typescript]=false

# Responsible for indicating which tools will be installed.
tools=true

packages[mysql-workbench]=true
packages[dbeaver]=true
packages[skype]=true
packages[slack]=true
packages[subl]=true
packages[code]=true
packages[inkscape]=true
packages[photogimp]=true
packages[remmina]=true
packages[postman]=true
packages[htop]=true
packages[whatsdesk]=true
packages[telegram-desktop]=true
packages[android-studio]=false
packages[gitkraken]=true

# Responsible for indicating if the operating system theme will be modified
config_so_dracula_theme=true