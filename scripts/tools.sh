#!/bin/bash 

#############################################################
###
### Installing tools
###
### DBeaver
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

if [ $mysql_workbench == true]
then
    echo "    MySQL Workbench...."
    sudo apt install mysql-workbench -y 1> /dev/null 2> /dev/stdout
fi

if [ $dbeaver == true ]
then
    echo "    DBeaver...."
    sudo snap install dbeaver-ce --edge
fi

if [ $skype == true ]
then
    echo "    Skype...."
    sudo snap install skype --classic 1> /dev/null 2> /dev/stdout
fi 

if [ $slack == true ]
then
    echo "    Slack...."
    sudo snap install slack --classic 1> /dev/null 2> /dev/stdout
fi

if [ $sublime_text == true ]
then
    echo "    Sublime Text...."
    sudo snap install sublime-text --classic 1> /dev/null 2> /dev/stdout
fi

if [ $code == true ]
then
    echo "    VSCode...."
    sudo snap install code --classic 1> /dev/null 2> /dev/stdout
fi

if [ $inkscape == true ]
then
    echo "    Inkscape...."
    sudo snap install inkscape 1> /dev/null 2> /dev/stdout
fi

if [ $photogimp == true ]
then
    echo "    Photogimp...."
    sudo snap install photogimp 1> /dev/null 2> /dev/stdout
fi

if [ $remmina == true ]
then
    echo "    Remmina...."
    sudo snap install remmina 1> /dev/null 2> /dev/stdout
fi

if [ $postman == true ]
then
    echo "    Postman...."
    sudo snap install postman 1> /dev/null 2> /dev/stdout
fi

if [ $htop == true ]
then
    echo "    htop...."
    sudo snap install htop 1> /dev/null 2> /dev/stdout
fi

if [ $whatsdesk == true ]
then
    echo "    Whatsapp...."
    sudo snap install whatsdesk 1> /dev/null 2> /dev/stdout
fi

if [ $telegram_desktop == true ]
then
    echo "    Telegram...."
    sudo snap install telegram-desktop 1> /dev/null 2> /dev/stdout
fi

if [ $android_studio == true ]
then
    echo "    Android Studio...."
    sudo snap install android-studio --classic  1> /dev/null 2> /dev/stdout
fi

if [ $gitkraken == true ]
then
    echo "    Git Kraken...."
    sudo snap install gitkraken  1> /dev/null 2> /dev/stdout
fi

echo ""