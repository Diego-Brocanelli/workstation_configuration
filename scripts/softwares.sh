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
    sudo add-apt-repository ppa:synapse-core/ppa -y 1> /dev/null 2> /dev/stdout
    update_packages
    process_install_echo "synapse" "Synapse"
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

    sudo apt update -y 1> /dev/null 2> /dev/stdout

    sudo apt -y install apt-transport-https ca-certificates curl software-properties-common 1> /dev/null 2> /dev/stdout

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 1> /dev/null 2> /dev/stdout

    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable" 1> /dev/null 2> /dev/stdout

    sudo apt update -y 1> /dev/null 2> /dev/stdout

    sudo apt-get -y install docker-ce 1> /dev/null 2> /dev/stdout

    sudo usermod -aG docker $USER 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Docker"
fi

if [ ${packages[docker]} = true ]
then
    install_echo "Starting installation: Docker Compose"

    sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 1> /dev/null 2> /dev/stdout
    sudo chmod +x /usr/local/bin/docker-compose 1> /dev/null 2> /dev/stdout
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Docker Compose"
fi

if [ ${packages[zsh]} = true ]
then
    process_install_echo "zsh" "Zsh"
fi

if [ ${packages[set-default-zsh]} = true ]
then
    sudo usermod -s /usr/bin/zsh $(whoami) 1> /dev/null 2> /dev/stdout
fi

echo ""