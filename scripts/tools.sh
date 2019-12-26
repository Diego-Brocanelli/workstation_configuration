#!/bin/bash 

echo ">>> Installing Tools"

if [ ${packages[mysql-workbench]} == true ]
then
    echo "    MySQL Workbench...."
    sudo apt install mysql-workbench -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[dbeaver]} == true ]
then
    echo "    DBeaver...."
    sudo snap install dbeaver-ce 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[skype]} == true ]
then
    echo "    Skype...."
    sudo snap install skype --classic 1> /dev/null 2> /dev/stdout
fi 

if [ ${packages[slack]} == true ]
then
    echo "    Slack...."
    sudo snap install slack --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[sublime-text]} == true ]
then
    echo "    Sublime Text...."
    sudo snap install sublime-text --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[code]} == true ]
then
    echo "    VSCode...."
    sudo snap install code --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[atom]} == true ]
then
    sudo snap install atom --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[inkscape]} == true ]
then
    echo "    Inkscape...."
    sudo snap install inkscape 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[photogimp]} == true ]
then
    echo "    Photogimp...."
    sudo snap install photogimp 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[remmina]} == true ]
then
    echo "    Remmina...."
    sudo snap install remmina 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[postman]} == true ]
then
    echo "    Postman...."
    sudo snap install postman 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[htop]} == true ]
then
    echo "    htop...."
    sudo snap install htop 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[whatsdesk]} == true ]
then
    echo "    Whatsapp...."
    sudo snap install whatsdesk 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[telegram-desktop]} == true ]
then
    echo "    Telegram...."
    sudo snap install telegram-desktop 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[android-studio]} == true ]
then
    echo "    Android Studio...."
    sudo snap install android-studio --classic  1> /dev/null 2> /dev/stdout
fi

if [ ${packages[gitkraken]} == true ]
then
    echo "    Git Kraken...."
    sudo snap install gitkraken  1> /dev/null 2> /dev/stdout
fi

echo ""