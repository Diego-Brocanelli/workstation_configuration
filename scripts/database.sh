#!/bin/bash 

#############################################################
###
### Installing Database
###
### MySQL
###
#############################################################
echo ""
echo ">>> Installing Database"

if [ ${packages[mysql]} = true ]
then
    echo "    MySQL...."
    sudo apt install mysql-client mysql-server -y 1> /dev/null 2> /dev/stdout
fi

if [ ${packages[postgresql]} = true ]
then
    echo "   Postgres...."
    sudo apt-get install postgresql postgresql-contrib
fi

echo ""