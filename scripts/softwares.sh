#!/bin/bash 

title_echo "INSTALLING SOFTWARE"

update_packages

if [ ${packages[curl]} = true ]
then
    process_install_echo "curl" "Curl"
fi

if [ ${packages[vim]} = true ]
then
    process_install_echo "vim" "Vim"
fi

if [ ${packages[git]} = true ]
then
    process_install_echo "git" "Git"

    install_echo "Configuration to vim editor on Git"
    git config --global core.editor vim
    success_install_echo "Finalized definition of vim as default editor in Git"
fi

if [ ${packages[synapse]} = true ]
then
    install_echo "Starting installation: Synapse"

    sudo add-apt-repository ppa:synapse-core/ppa -y 1> /dev/null 2> /dev/stdout
    update_packages
    sudo apt install synapse -y 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Synapse"
fi

if [ ${packages[aws-cli]} = true ]
then
    install_echo "Starting installation: AWS Cli V.2"
    
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "./temp/awscliv2.zip" 1> /dev/null 2> /dev/stdout
    unzip ./temp/awscliv2.zip 1> /dev/null 2> /dev/stdout
    rm ./temp/awscliv2.zip 1> /dev/null 2> /dev/stdout
    rm ./aws 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: AWS Cli V.2"
fi

if [ ${packages[docker]} = true ]
then
    install_echo "Starting installation: Docker"

    sudo apt update 1> /dev/null 2> /dev/stdout
    sudo apt install apt-transport-https ca-certificates curl software-properties-common 1> /dev/null 2> /dev/stdout
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 1> /dev/null 2> /dev/stdout
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" 1> /dev/null 2> /dev/stdout
    sudo apt update 1> /dev/null 2> /dev/stdout
    sudo apt install docker-ce 1> /dev/null 2> /dev/stdout
    sudo systemctl status docker 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Docker"
fi

echo ""