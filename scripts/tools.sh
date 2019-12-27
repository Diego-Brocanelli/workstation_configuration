#!/bin/bash 

echo ">>> Installing Tools"

sudo apt update -y 1> /dev/null 2> /dev/stdout

if [ ${packages[mysql-workbench]} -eq true ]
then
    echo "    MySQL Workbench...."
    sudo apt install mysql-workbench -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[dbeaver]} -eq true ]
then
    echo "    DBeaver...."
    sudo snap install dbeaver-ce 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[skype]} -eq true ]
then
    echo "    Skype...."
    sudo snap install skype --classic 1> /dev/null 2> /dev/stdout
fi 

if [ ${packages[slack]} -eq true ]
then
    echo "    Slack...."
    sudo snap install slack --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[sublime-text]} -eq true ]
then
    echo "    Sublime Text...."
    sudo apt install sublime-text 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[code]} -eq true ]
then
    echo "    VSCode...."
    sudo snap install code --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[atom]} -eq true ]
then
    sudo snap install atom --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[inkscape]} -eq true ]
then
    echo "    Inkscape...."
    sudo snap install inkscape 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[photogimp]} -eq true ]
then
    echo "    Photogimp...."
    sudo snap install photogimp 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[remmina]} -eq true ]
then
    echo "    Remmina...."
    sudo snap install remmina 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[postman]} -eq true ]
then
    echo "    Postman...."
    sudo snap install postman 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[htop]} -eq true ]
then
    echo "    htop...."
    sudo snap install htop 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[whatsdesk]} -eq true ]
then
    echo "    Whatsapp...."
    sudo snap install whatsdesk 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[telegram-desktop]} -eq true ]
then
    echo "    Telegram...."
    sudo snap install telegram-desktop 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[android-studio]} -eq true ]
then
    echo "    Android Studio...."
    sudo snap install android-studio --classic  1> /dev/null 2> /dev/stdout
fi

if [ ${packages[gitkraken]} -eq true ]
then
    echo "    Git Kraken...."
    sudo snap install gitkraken  1> /dev/null 2> /dev/stdout
fi

echo ""