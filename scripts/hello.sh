#!/bin/bash 

echo "#############################################################"
echo "###"
echo "### Welcome to"
echo "### Configuration assistant"
echo "###"
echo "#############################################################"
echo ""
echo $(date +'%Y-%m-%d %T')
echo ""
echo ">>> Software that will be installed"
echo "    + Vim"
echo "    + Git"
echo "    + Snap"
echo "    + cURL"
echo "    + Build essential"
echo "    + Synapse"
echo ""
echo ">>> Server that will be installed"
echo "    + Apache2"
echo "    + Nginx"
echo ""
echo ">>> Database that will be installed"
echo "    + MySQL"
echo "    + PostgreSQL"
echo ""
echo ">>> Programming languages that will be installed"
echo "    + nodejs"
echo "    + npm"
echo "    + Go"
echo "    + PHP5.6"
echo "    + PHP7.2"
echo "    + PHP7.3"
echo "    + PHP7.4"
echo "    + Composer"
echo "    + less"
echo "    + sass"
echo ""
echo ">>> Tools that will be installed"
echo "    + dbeaver"
echo "    + mysql workbench"
echo "    + skype"
echo "    + slack"
echo "    + sublime text"
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