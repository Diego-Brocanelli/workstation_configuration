#! /bin/bash

function setup_exists()
{
    FILE=./setup.sh
    if [ ! -e $FILE ] ; then
        header_project_echo
        danger_echo "The setup.sh file does not exist!"
        danger_echo "Use the setup.sh.example file as the basis for defining the installation \n requirements."

        exit 0
    fi
}