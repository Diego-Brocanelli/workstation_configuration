#!/bin/bash 

echo "#############################################################"
echo "###"
echo "### Welcome to"
echo "### Configuration assistant"
echo "###"
echo "#############################################################"
echo ""
echo ">>> Software that will be installed"
echo "    + Vim"
echo "    + Git"
echo "    + Snap"
echo "    + Build essential"
echo ""
echo ">>> Server that will be installed"
echo "    + Nginx"
echo ""
echo ">>> Database that will be installed"
echo "    + MySQL"
echo ""
echo ">>> Programming languages that will be installed"
echo "    + nodejs"
echo "    + npm"
echo "    + Go"
echo "    + PHP5.6"
echo "    + PHP7.2"
echo "    + PHP7.3"
echo "    + Composer"
echo "    + less"
echo "    + sass"
echo ""
echo ">>> Tools that will be installed"
echo "    + mysql workbench"
echo "    + skype"
echo "    + slack"
echo "    + sublime text"
echo "    + vscode"
echo "    + Inkskape"
echo "    + PhotoGimp"
echo "    + Remmina"
echo "    + Postman"
echo "    + htop"
echo ""
echo ">>> Do you want to continue with the facilities? (1) Yes (0) No"
read continue

if [ $continue = 0 ]
then
    echo ">>> OK ... process interrupted."
    exit
fi

#############################################################
###
### Installing software
###
#############################################################

sudo apt update -y 1> /dev/null 2> /dev/stdout
echo ">>> Installing software"
echo "    Updating apt...."

echo "    Vim...."
sudo apt install vim -y 1> /dev/null 2> /dev/stdout

echo "    Git...."
sudo apt install git -y 1> /dev/null 2> /dev/stdout

echo "    SNAP...."
sudo apt install snapd -y 1> /dev/null 2> /dev/stdout

echo "    Build Essential...."
sudo apt install build-essential -y 1> /dev/null 2> /dev/stdout

#############################################################
###
### Installing Server
###
#############################################################
echo ""
echo ">>> Installing Server"
echo "    Nginx...."
sudo apt install nginx -y 1> /dev/null 2> /dev/stdout

#############################################################
###
### Installing Database
###
#############################################################
echo ""
echo ">>> Installing Database"
echo "    MySQL...."
sudo apt install mysql-client mysql-server -y 1> /dev/null 2> /dev/stdout
echo ""

#############################################################
###
### Installing Programming languages
###
#############################################################
echo ">>> Installing Programming languages"

echo "    NodeJS...."
sudo snap install node --channel=10/stable --classic 1> /dev/null 2> /dev/stdout

echo "    Go...."
sudo snap install go --classic 1> /dev/null 2> /dev/stdout

echo "    ppa:ondrej/php...."
sudo apt-get install python-software-properties -y 1> /dev/null 2> /dev/stdout
sudo add-apt-repository ppa:ondrej/php -y 1> /dev/null 2> /dev/stdout
sudo apt update 1> /dev/null 2> /dev/stdout

echo "    PHP5.6...."
sudo apt install php5.6-fpm php5.6 php5.6-dev php5.6-cli -y 1> /dev/null 2> /dev/stdout

echo "    extensions PHP5.6...."
sudo apt-get install -y php5.6-fpm php5.6 php5.6-dev php5.6-cli php5.6-mbstring php5.6-mcrypt php5.6-gd php5.6-curl php5.6-xml php5.6-mysql php5.6-zip -y 1> /dev/null 2> /dev/stdout

echo "    PHP7.2...."
sudo apt install php7.2-fpm php7.2 php7.2-dev php7.2-cli -y 1> /dev/null 2> /dev/stdout

echo "    extensions PHP7.2...."
sudo apt-get install -y php7.2-fpm php7.2 php7.2-dev php7.2-cli php7.2-mbstring php7.2-gd php7.2-curl php7.2-xml php7.2-mysql php7.2-zip -y 1> /dev/null 2> /dev/stdout

echo "    PHP7.3...."
sudo apt install php7.3-fpm php7.3 php7.3-dev php7.3-cli -y 1> /dev/null 2> /dev/stdout

echo "    extensions PHP7.3...."
sudo apt-get install -y php7.3-fpm php7.3 php7.3-dev php7.3-cli php7.3-mbstring php7.3-gd php7.3-curl php7.3-xml php7.3-mysql php7.3-zip -y 1> /dev/null 2> /dev/stdout

echo "    Composer...."
php -r "readfile('https://getcomposer.org/installer');" | php 1> /dev/null 2> /dev/stdout
sudo mv composer.phar /usr/bin/composer 1> /dev/null 2> /dev/stdout

echo "    SASS...."
sudo npm install -g sass 1> /dev/null 2> /dev/stdout

echo "    Less...."
sudo npm install -g less 1> /dev/null 2> /dev/stdout

echo ""
echo ">>> Installing Tools"

echo "    MySQL Workbench...."
sudo apt install mysql-workbench -y 1> /dev/null 2> /dev/stdout

echo "    Skype...."
sudo snap install skype --classic 1> /dev/null 2> /dev/stdout

echo "    Slack...."
sudo snap install slack --classic 1> /dev/null 2> /dev/stdout

echo "    Sublime Text...."
sudo snap install sublime-text --classic 1> /dev/null 2> /dev/stdout

echo "    VSCode...."
sudo snap install code --classic 1> /dev/null 2> /dev/stdout

echo "    Inkscape...."
sudo snap install inkscape 1> /dev/null 2> /dev/stdout

echo "    Photogimp...."
sudo snap install photogimp 1> /dev/null 2> /dev/stdout

echo "    Remmina...."
sudo snap install remmina 1> /dev/null 2> /dev/stdout

echo "    Postman...."
sudo snap install postman 1> /dev/null 2> /dev/stdout

echo "    htop...."
sudo snap install htop 1> /dev/null 2> /dev/stdout

echo "    Whatsapp...."
sudo snap install whatsdesk 1> /dev/null 2> /dev/stdout

echo "    Telegram...."
sudo snap install telegram-desktop 1> /dev/null 2> /dev/stdout

echo "    Android Studio...."
sudo snap install android-studio --classic  1> /dev/null 2> /dev/stdout

echo "    Git Kraken...."
sudo snap install gitkraken  1> /dev/null 2> /dev/stdout
echo ""

#############################################################
###
### Server configuration
###
#############################################################

echo ">>> Configurate to server "
echo "    Set user to /var/www directory...."
sudo chown -R diego:diego /var/www 1> /dev/null 2> /dev/stdout

echo "    Restart do nginx...."
sudo service nginx restart 1> /dev/null 2> /dev/stdout

echo "    Configurando PHP7.3 como default no cli...."
sudo update-alternatives --set php /usr/bin/php7.3 1> /dev/null 2> /dev/stdout

echo "    Restart do PHP5.6...."
sudo service php5.6-fpm restart 1> /dev/null 2> /dev/stdout

echo "    Restart do PHP7.2...."
sudo service php7.2-fpm restart 1> /dev/null 2> /dev/stdout

echo "    Restart do PHP7.3...."
sudo service php7.3-fpm restart 1> /dev/null 2> /dev/stdout
echo ""

#############################################################
###
### Vim configuration
###
#############################################################

echo ">>> Configurate to Vim "

echo "    Create to dir .vim...."
mkdir ~/.vim  1> /dev/null 2> /dev/stdout

echo "    Create to dir .vim/colors...."
mkdir ~/.vim/colors  1> /dev/null 2> /dev/stdout

echo "    Cloning to Vundle...."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 1> /dev/null 2> /dev/stdout

echo "    Copy to .vimrc...."
cp .vimrc ~/  1> /dev/null 2> /dev/stdout
echo ""

#############################################################
###
### Configuration SO Dracula Theme
###
#############################################################
echo ">>> Configurate S.O. theme "
echo "    Cloning to Ant-Dracula...."
git clone https://github.com/Diego-Brocanelli/Ant-Dracula.git ~/.themes/Ant-Dracula

echo "    Set to Ant-Dracula theme...."
gsettings set org.gnome.desktop.interface gtk-theme "Ant-Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Ant-Dracula"
echo ""

#############################################################
###
### Checking installed apt packages
###
#############################################################

echo ">>> Checking installed apt packages "

packages=(php5.6 php7.2 php7.3 mysql less snap vim git snapd build-essential nginx mysql-workbench) 
for package in "${packages[@]}"
do
    installed=$(dpkg --get-selections | grep $package ) 

    if [ -n "$installed" ] ;
    then
        echo -e "    $package .... \e[32m[INSTALLED]\e[39m"
    else
        echo -e "    $package .... \e[31m[NOT INSTALLED]\e[39m"
    fi
done

#############################################################
###
### Checking installed snap packages
###
#############################################################
echo ""
echo ">>> Checking installed apt packages "

packages=(sass less composer node npm go skype slack android-studio gitkraken code subl whatsdesk telegram-desktop inkscape photogimp remmina postman htop)
for package in "${packages[@]}"
do
    if which $package > /dev/null
    then
        echo -e "    $package .... \e[32m[INSTALLED]\e[39m"
    else
        echo -e "    $package .... \e[31m[NOT INSTALLED]\e[39m"
    fi
done

echo "Finished installations and configurations"
echo "Thanks"
echo ""
echo "System restart required"
echo ""
echo ">>> Do you want to restart the system now? (1) Yes (0) No"
read restart

if [ $restart = 1 ]
then
    echo ">>> Restarting the system"
    reboot
fi

echo ">>> OK, thanks for using our script :)"
exit