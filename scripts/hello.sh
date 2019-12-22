#!/bin/bash 

echo "#############################################################"
echo "###"
echo "### Welcome to"
echo "### Configuration assistant"
echo "###"
echo "#############################################################"
echo ""
echo ">>> Softwares to be installed"

# Responsible to list the installed programs
for package in "${!packages[@]}"
do
    if [ ${packages[$package]} = true ] 
    then
        echo "...."$package
    fi
done

echo ""
echo ">>> Do you want continue? (1) Yes (0) No"
read continue

if [ $continue = 0 ]
then
    echo ">>> OK ... process interrupted."
    exit
fi