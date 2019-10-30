#!/bin/bash 

echo "🏁 Finished installations and configurations"
echo ""
echo ⌚ $(date +'%Y-%m-%d %T')
echo ""
echo "Open vim and execute the command :PluginInstall"
echo "Execute the configuration of VSCode"
echo "Thanks"
echo ""
echo "System restart required"
echo ""
echo " ❓ Do you want to restart the system now? [1] Yes [0] No"
read restart

if [ $restart = 1 ]
then
    echo ">>> Restarting the system"
    reboot
fi

echo ">>> OK, thanks for using our script 😎"
exit