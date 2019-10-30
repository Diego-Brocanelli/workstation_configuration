#!/bin/bash 

echo "#############################################################"
echo "###"
echo "### Welcome to"
echo "### Configuration assistant 🤖"
echo "###"
echo "#############################################################"
echo ""
echo $(date +'%Y-%m-%d %T')
echo ""
echo ">>> Software that will be installed"
echo "    + Vim"
echo "    + Git"
echo "    + Snap"
echo "    + Build essential"
echo ""
echo ">>> Software Container that will be installed"
echo "    + Docker <3"
echo ""
echo ">>> Programming languages that will be installed"
echo "    + NVM e Nodejs <3"
echo ""
echo ">>> Tools that will be installed"
echo "    + DataGrip"
echo "    + skype"
echo "    + slack"
echo "    + vscode"
echo "    + Inkskape"
echo "    + PhotoGimp"
echo "    + Remmina"
echo "    + Postman"
echo "    + htop"
echo ""
echo ">>> Do you want to continue with the facilities? (1) Yes (0) No"
read continue

if [ $continue = 0 ]
then
    echo ">>> OK ... process interrupted."
    exit
fi