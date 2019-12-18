#!/bin/bash 

#
# tell what you want installed
# If you want a block or item not to be installed, enter false. 
#

# Responsible for indicating which software will be installed. 
softwares=true
build_essential=true
curl=true
vim=true
git=true
snapd=true
synapse=true

# Responsible for indicating which server will be installed.
server=true
nginx=true
apache2=false

# Responsible for indicating which databese will be installed.
database=true
mysql=true
postgres=false

# Responsible for indicating which programming languages will be installed.
programming_languages=true
node=true
go=true 
php56=true
php72=false
php73=true
php74=true
composer=true
sass=true 
less=false

# Responsible for indicating which tools will be installed.
tools=true
mysql_workbench=true
dbeaver=true
skype=true
slack=true
sublime_text=true
code=true
inkscape=true
photogimp=true
remmina=true
postman=true
htop=true
whatsdesk=true
telegram_desktop=true
android_studio=false
gitkraken=true

# Responsible for indicating if the operating system theme will be modified
config_so_dracula_theme=true