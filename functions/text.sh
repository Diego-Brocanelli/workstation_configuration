#!/bin/bash

#--------------------------------------------------------
# Function: title_echo
# Description: Responsible for displaying formatted title
#--------------------------------------------------------
function title_echo() {
    echo -e "\033[01;32m>>> $1\033[01;37m" 
}

#--------------------------------------------------------
# Function: line_echo
# Description: Responsible for displaying formatted line
#--------------------------------------------------------
function line_echo() {
    echo -e "\033[01;36m....$1\033[01;37m" 
}

#--------------------------------------------------------
# Function: line_echo
# Description: Responsible for displaying formatted line
#--------------------------------------------------------
function line_danger_echo() {
    echo -e "\033[01;31m$1\033[01;37m" 
}

function header_echo() {
    echo -e "\033[01;32m$1\033[01;37m" 
}