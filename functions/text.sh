#!/bin/bash

function title_echo() {
    echo -e "\033[01;32m \u29BF \033[01;37m \033[01;34m $1" 
}

function line_echo() {
    echo -e "\033[01;36m \u00BB \033[01;37m $1" 
}

function danger_echo() {
    echo -e "\033[01;31m \u26A0 \033[01;37m $1"
}

function header_echo() {
    echo -e "\033[01;32m$1\033[01;37m" 
}

function question_echo() {
    echo -e "\033[01;32m \u003F \033[01;37m $1"
}

function exclamation_echo() {
    tput cuu1; tput dl1 
    echo ""
    echo -e "\033[01;32m \u0021 \033[01;37m $1"
}

function error_install_echo() {
    tput cuu1; tput dl1 
    echo -e "\033[0;31m \u274C $1"
}

function success_install_echo() {
    tput cuu1; tput dl1 
    echo -e " \u2705 \033[01;32m $1"
}

function install_echo() {
    echo -e " \u231B \033[01;34m $1"
} 

function process_install_echo() {
    install_echo "Starting installation: $2"
    sleep 2
    if sudo apt install -y $1 1> /dev/null 2> /dev/stdout
    then
        success_install_echo "Finished installation: $2"
    else
        error_install_echo "Error in installation: $2"
    fi
}

function header_project_echo()
{
    header_echo "############################################################################"
    header_echo "###                                                                        #"
    header_echo "### Welcome to                                                             #"
    header_echo "### Configuration assistant                                                #"
    header_echo "###                                                                        #"
    header_echo "### Project: https://github.com/Diego-Brocanelli/workstation_configuration #"
    header_echo "### Author: Diego Brocanelli                                               #"
    header_echo "###                                                                        #"
    header_echo "############################################################################"
}