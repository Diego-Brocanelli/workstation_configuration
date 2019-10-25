#!/bin/bash 

#############################################################
###
### Installing Software Container
###
### Docker
###
#############################################################
echo ""
echo ">>> Installing Software Container"
echo "    Docker...."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 1> /dev/null 2> /dev/stdout
echo "        > Add PPA...."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu disco stable" 1> /dev/null 2> /dev/stdout
echo "        > Installing...."
sudo apt install docker-ce -y 1> /dev/null 2> /dev/stdout
echo "        > Add Current User (${USER}) to Docker Group...."
sudo usermod -aG docker ${USER} 1> /dev/null 2> /dev/stdout
