#!/bin/bash 

#############################################################
###
### Configuration SO Dracula Theme
###
#############################################################
echo ">>> 📦 Configurate S.O. theme "
echo "        📡  Cloning to Ant-Dracula...."
git clone https://github.com/Diego-Brocanelli/Ant-Dracula.git ~/.themes/Ant-Dracula 1> /dev/null 2> /dev/stdout

echo "        📜 Set to Ant-Dracula theme...."
gsettings set org.gnome.desktop.interface gtk-theme "Ant-Dracula" 1> /dev/null 2> /dev/stdout
gsettings set org.gnome.desktop.wm.preferences theme "Ant-Dracula" 1> /dev/null 2> /dev/stdout
echo "        📜 Set to Dracula wallpaper...."
cp img/dracula_wallpaper.png $HOME/Imagens/ 1> /dev/null 2> /dev/stdout
gsettings set org.gnome.desktop.background picture-uri file://$HOME/Downloads/dracula_wallpaper.png 1> /dev/null 2> /dev/stdout
echo ""