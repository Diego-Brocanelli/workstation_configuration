#!/bin/bash

function header_log() {
    register_log "Start proccess... $1 $2" 
    register_log "Finish........... $3 $4"
    register_log ""
    register_log "Open vim and execute the command :PluginInstall"
    register_log ""
    register_log "Execute the configuration of IDE"
    register_log ""
    register_log ">>> Installed packages"
}

function footer_log() {
    register_log ""
    register_log "Thank you for using our tool."
    register_log ""
    register_log "Project: https://github.com/Diego-Brocanelli/workstation_configuration"
    register_log ""
    register_log "Author: Diego Brocanelli"
    register_log ""
}


function register_log() {
    echo $1 >> './log/installation_log.txt'
}