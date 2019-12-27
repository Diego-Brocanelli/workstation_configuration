#!/bin/bash 

#
# tell what you want installed
# If you want a block or item not to be installed, enter false. 
#

declare -A packages

#
# Softwares
#
packages[build-essential]=true
packages[curl]=true
packages[vim]=true
packages[git]=true
packages[snapd]=true
packages[synapse]=true
packages[aws-cli]=false
packages[jenkins]=false
packages[docker]=false

#
# Servers
#
packages[nginx]=true
packages[apache2]=false

#
# Databases
#
packages[mysql]=true
packages[postgresql]=false

#
# Programming Languages
#
packages[node]=false
packages[go]=false 
packages[php5.6-fpm]=true
packages[php7.2-fpm]=false
packages[php7.3-fpm]=true
packages[php7.4-fpm]=true
packages[composer]=true
packages[sass]=false 
packages[less]=false
packages[rust]=false

#
# Tools
#
packages[mysql-workbench]=true
packages[dbeaver]=false
packages[skype]=false
packages[slack]=false
packages[code]=true
packages[sublime-text]=true
packages[atom]=false
packages[inkscape]=false
packages[photogimp]=false
packages[remmina]=false
packages[postman]=true
packages[htop]=true
packages[whatsdesk]=false
packages[telegram-desktop]=false
packages[android-studio]=false
packages[gitkraken]=true

#
# Configure Dracula theme to SO
#
config_so_dracula_theme=true