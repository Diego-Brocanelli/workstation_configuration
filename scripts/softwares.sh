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

if [ ${packages[synapse]} = true ]
then
    line_echo "Synapse"
    sudo add-apt-repository ppa:synapse-core/ppa -y 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout 
    sudo apt install synapse -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[aws-cli]} = true ]
then
    install_echo "AWS Cli V.2"
    
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "./temp/awscliv2.zip" 1> /dev/null 2> /dev/stdout
    unzip ./temp/awscliv2.zip 1> /dev/null 2> /dev/stdout
    rm ./temp/awscliv2.zip 1> /dev/null 2> /dev/stdout
    rm ./aws 1> /dev/null 2> /dev/stdout

    success_install_echo "AWS Cli V.2"
fi

if [ ${packages[docker]} = true ]
then
    install_echo "Docker"

    sudo apt update 1> /dev/null 2> /dev/stdout
    sudo apt install apt-transport-https ca-certificates curl software-properties-common 1> /dev/null 2> /dev/stdout
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 1> /dev/null 2> /dev/stdout
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" 1> /dev/null 2> /dev/stdout
    sudo apt update 1> /dev/null 2> /dev/stdout
    sudo apt install docker-ce 1> /dev/null 2> /dev/stdout
    sudo systemctl status docker 1> /dev/null 2> /dev/stdout

    success_install_echo "Docker"
fi

echo ""