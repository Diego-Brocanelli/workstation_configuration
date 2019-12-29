#!/bin/bash 

title_echo "INSTALLING TOOLS"

sudo apt update -y 1> /dev/null 2> /dev/stdout

if [ ${packages[mysql-workbench]} = true ]
then
    line_echo "MySQL Workbench"
    sudo apt install mysql-workbench -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[dbeaver]} = true ]
then
    line_echo "DBeaver"
    sudo snap install dbeaver-ce 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[skype]} = true ]
then
    line_echo "Skype"
    sudo snap install skype --classic 1> /dev/null 2> /dev/stdout
fi 

if [ ${packages[slack]} = true ]
then
    line_echo "Slack"
    sudo snap install slack --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[sublime-text]} = true ]
then
    line_echo "Sublime Text"
    sudo snap install sublime-text --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[code]} = true ]
then
    line_echo "VSCode"
    sudo snap install code --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[atom]} = true ]
then
    line_echo "Atom"
    sudo snap install atom --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[inkscape]} = true ]
then
    line_echo "Inkscape"
    sudo snap install inkscape 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[photogimp]} = true ]
then
    line_echo "Photogimp"
    sudo snap install photogimp 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[remmina]} = true ]
then
    line_echo "Remmina"
    sudo snap install remmina 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[postman]} = true ]
then
    line_echo "Postman"
    sudo snap install postman 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[htop]} = true ]
then
    line_echo "htop"
    sudo snap install htop 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[whatsdesk]} = true ]
then
    line_echo "Whatsapp"
    sudo snap install whatsdesk 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[telegram-desktop]} = true ]
then
    line_echo "Telegram"
    sudo snap install telegram-desktop 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[android-studio]} = true ]
then
    line_echo "Android Studio"
    sudo snap install android-studio --classic  1> /dev/null 2> /dev/stdout
fi

if [ ${packages[gitkraken]} = true ]
then
    line_echo "Git Kraken"
    sudo snap install gitkraken  1> /dev/null 2> /dev/stdout
fi

echo ""