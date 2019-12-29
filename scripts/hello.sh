#!/bin/bash 

header_echo "############################################################################"
header_echo "###                                                                        #"
header_echo "### Welcome to                                                             #"
header_echo "### Configuration assistant                                                #"
header_echo "###                                                                        #"
header_echo "### Project: https://github.com/Diego-Brocanelli/workstation_configuration #"
header_echo "### Author: Diego Brocanelli                                               #"
header_echo "###                                                                        #"
header_echo "############################################################################"
echo ""
line_danger_echo "ALERT!!!"
line_danger_echo "THIS SCRIPT WILL UPDATE THE APT PACKAGES ON YOUR COMPUTER!"
echo ""

title_echo "SOFTWARES TO BE INSTALLED"

# Responsible to list the installed programs
for package in "${!packages[@]}"
do
    if [ ${packages[$package]} = true ] 
    then
        line_echo "$package"
    fi
done

echo ""

title_echo "Do you want continue? (1) Yes (0) No"
read continue

if [ $continue = 0 ]
then
    title_echo "OK...process interrupted."
    exit
fi

echo ""