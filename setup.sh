#!/bin/bash 

#
# tell what you want installed
# If you want a block or item not to be installed, enter false. 
#

declare -A packages

#
# Softwares
#
packages[curl]=true
packages[vim]=true
packages[set-vim-git]=true
packages[git]=true
packages[synapse]=true
packages[aws-cli]=false
packages[docker]=false
packages[zsh]=true
packages[set-default-zsh]=true

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
packages[php5.6-fpm]=false
packages[php7.2-fpm]=false
packages[php7.3-fpm]=false
packages[php7.4-fpm]=false
packages[php8.0-fpm]=true
packages[composer]=true
packages[sass]=false 
packages[less]=false
packages[rust]=false

#
# Tools
#
packages[mysql-workbench]=false
packages[dbeaver]=true
packages[skype]=false
packages[slack]=false
packages[code]=true
packages[sublime-text]=true
packages[atom]=false
packages[inkscape]=false
packages[gimp]=false
packages[remmina]=false
packages[insomnia]=true
packages[htop]=true
packages[telegram-desktop]=false
packages[gitkraken]=false

#
# Configure Dracula theme to SO
#
config_so_dracula_theme=true