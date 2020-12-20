#!/bin/bash 

line_echo "Finished installations and configurations"
echo ""
line_echo "Start proccess..." $date_start
line_echo "Finish..........." $(date +'%Y-%m-%d %T')
echo ""
line_echo "Log file generated in ./log/installation_log.txt"
echo ""
line_echo "Open vim and execute the command :PluginInstall"
line_echo "Execute the configuration of IDE"
line_echo "Thanks!"
echo ""
line_echo "System restart required"
echo ""
title_echo "Do you want to restart the system now? (1) Yes (0) No"

read restart

if [ $restart = 1 ]
then
    title_echo "Restarting the system"
    reboot
fi
title_echo "OK, thanks for using our script :)"
exit