#!/bin/bash 

#############################################################
###
### Installing software
###
### Update apt packages
### Build Essential
### cURL
### Git
### Snap
### Vim
### Synapse
###
#############################################################

sudo apt update -y 1> /dev/null 2> /dev/stdout
echo ">>> Installing software"
echo "    Updating apt...."

if [ $build_essential == true ]
then
    echo "    Build Essential...."
    sudo apt install build-essential -y 1> /dev/null 2> /dev/stdout
fi

if [ $curl == true ]
then
    echo "    cURL...."
    sudo apt install curl -y 1> /dev/null 2> /dev/stdout
fi

if [ $vim == true ]
then
    echo "    Vim...."
    sudo apt install vim -y 1> /dev/null 2> /dev/stdout
fi

if [ $git == true ]
then
    echo "    Git...."
    sudo apt install git -y 1> /dev/null 2> /dev/stdout
    echo "    Configuration to vim editor on Git...."
    git config --global core.editor vim
fi

if [ $snapd == true ]
then
    echo "    SNAP...."
    sudo apt install snapd -y 1> /dev/null 2> /dev/stdout
fi

if [ $synapse == true ]
then
    echo "    Synapse...."
    sudo add-apt-repository ppa:synapse-core/ppa -y 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout 
    sudo apt install synapse -y 1> /dev/null 2> /dev/stdout
fi
