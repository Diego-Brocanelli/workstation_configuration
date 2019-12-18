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

if [ $mysql == true ]
then
    echo "    MySQL...."
    sudo apt install mysql-client mysql-server -y 1> /dev/null 2> /dev/stdout
fi

if [ $postgres == true ]
then
    echo "   Postgres...."
    sudo apt-get install postgresql postgresql-contrib
fi

echo ""