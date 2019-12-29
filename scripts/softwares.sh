#!/bin/bash 

sudo apt update -y 1> /dev/null 2> /dev/stdout

title_echo "INSTALLING SOFTWARE"

if [ ${packages[curl]} = true ]
then
    line_echo "Curl"
    sudo apt install curl -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[vim]} = true ]
then
    line_echo "Vim"
    sudo apt install vim -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[git]} = true ]
then
    line_echo "Git"
    sudo apt install git -y 1> /dev/null 2> /dev/stdout

    line_echo "Configuration to vim editor on Git"
    git config --global core.editor vim
fi

if [ ${packages[snapd]} = true ]
then
    line_echo "SNAP"
    sudo apt install snapd -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[synapse]} = true ]
then
    line_echo "Synapse"
    sudo add-apt-repository ppa:synapse-core/ppa -y 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout 
    sudo apt install synapse -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[aws-cli]} = true ]
then
    line_echo "AWS Cli"
    sudo snap install aws-cli --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[jenkins]} = true ]
then
    line_echo "Jenkins"
    sudo snap install jenkins --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[docker]} = true ]
then
    line_echo "Docker"
    sudo snap install docker 1> /dev/null 2> /dev/stdout
fi

echo ""