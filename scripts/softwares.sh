#!/bin/bash 

sudo apt update -y 1> /dev/null 2> /dev/stdout

echo ">>> Installing software"
echo "    Updating apt...."

if [ ${packages[build-essential]} == true ]
then
    echo "    Build Essential...."
    sudo apt install build-essential -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[curl]} == true ]
then
    echo "    cURL...."
    sudo apt install curl -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[vim]} == true ]
then
    echo "    Vim...."
    sudo apt install vim -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[git]} == true ]
then
    echo "    Git...."
    sudo apt install git -y 1> /dev/null 2> /dev/stdout
    echo "    Configuration to vim editor on Git...."
    git config --global core.editor vim
fi

if [ ${packages[snapd]} == true ]
then
    echo "    SNAP...."
    sudo apt install snapd -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[synapse]} == true ]
then
    echo "    Synapse...."
    sudo add-apt-repository ppa:synapse-core/ppa -y 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout 
    sudo apt install synapse -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[aws-cli]} == true ]
then
    echo "    AWS Cli...."
    sudo snap install aws-cli --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[jenkins]} == true ]
then
    echo "    Jenkins...."
    sudo snap install jenkins --classic 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[docker]} == true ]
then
    echo "    Docker...."
    sudo snap install docker 1> /dev/null 2> /dev/stdout
fi