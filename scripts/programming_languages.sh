#!/bin/bash 

#############################################################
###
### Installing Programming languages
###
### NodeJS
###
#############################################################
echo ">>> 📦 Installing Programming languages"
echo "        🚀 NVM...."
curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash 1> /dev/null 2> /dev/stdout
echo "        🚀 Node...."
nvm install node 1> /dev/null 2> /dev/stdout
echo ""
echo ""