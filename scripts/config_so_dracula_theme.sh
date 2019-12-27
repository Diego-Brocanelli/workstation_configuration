#!/bin/bash 

#############################################################
###
### Configuration SO Dracula Theme
###
#############################################################
echo ">>> Configurate S.O. theme "

echo "    Cloning to Ant-Dracula...."

sudo mkdir ~/.themes

sudo git clone https://github.com/Diego-Brocanelli/Ant-Dracula.git ~/.themes/Ant-Dracula 1> /dev/null 2> /dev/stdout

echo "    Set to Ant-Dracula theme...."

sudo gsettings set org.gnome.desktop.interface gtk-theme "Ant-Dracula" 1> /dev/null 2> /dev/stdout
sudo gsettings set org.gnome.desktop.wm.preferences theme "Ant-Dracula" 1> /dev/null 2> /dev/stdout

echo "    Set to Dracula wallpaper...."

sudo cp ./img/dracula_wallpaper.png $HOME/Imagens/ 1> /dev/null 2> /dev/stdout
sudo gsettings set org.gnome.desktop.background picture-uri file://$HOME/Imagens/dracula_wallpaper.png 1> /dev/null 2> /dev/stdout

echo ""