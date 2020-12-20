#!/bin/bash 

title_echo "Installing Database"

if [ ${packages[mysql]} = true ]
then
    process_install_echo "mysql-serve" "MySql Serve"
    process_install_echo "mysql-client" "MySql Client"
fi

if [ ${packages[postgresql]} = true ]
then
    process_install_echo "postgresql" "PostgreSQL"
    process_install_echo "postgresql-contrib" "PostgreSQL Contrib"
fi

echo ""