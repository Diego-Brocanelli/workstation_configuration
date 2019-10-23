#!/bin/bash 

#############################################################
###
### Installing tools
###
### MySQL Workbench
### Skype
### Slack
### Sublime Text
### VSCode
### Inkscape
### Photogimp
### Remmina
### Postman
### htop
### Whatsapp
### Telegram
### Android Studio
### Git Kraken
###
#############################################################

echo ">>> Installing Tools"

echo "    MySQL Workbench...."
sudo apt install mysql-workbench -y 1> /dev/null 2> /dev/stdout

echo "    Skype...."
sudo snap install skype --classic 1> /dev/null 2> /dev/stdout

echo "    Slack...."
sudo snap install slack --classic 1> /dev/null 2> /dev/stdout

echo "    Sublime Text...."
sudo snap install sublime-text --classic 1> /dev/null 2> /dev/stdout

echo "    VSCode...."
sudo snap install code --classic 1> /dev/null 2> /dev/stdout

echo "    Inkscape...."
sudo snap install inkscape 1> /dev/null 2> /dev/stdout

echo "    Photogimp...."
sudo snap install photogimp 1> /dev/null 2> /dev/stdout

echo "    Remmina...."
sudo snap install remmina 1> /dev/null 2> /dev/stdout

echo "    Postman...."
sudo snap install postman 1> /dev/null 2> /dev/stdout

echo "    htop...."
sudo snap install htop 1> /dev/null 2> /dev/stdout

echo "    Whatsapp...."
sudo snap install whatsdesk 1> /dev/null 2> /dev/stdout

echo "    Telegram...."
sudo snap install telegram-desktop 1> /dev/null 2> /dev/stdout

echo "    Android Studio...."
sudo snap install android-studio --classic  1> /dev/null 2> /dev/stdout

echo "    Git Kraken...."
sudo snap install gitkraken  1> /dev/null 2> /dev/stdout

echo ""