#!/bin/bash 

title_echo "INSTALLING TOOLS"

sudo apt update -y 1> /dev/null 2> /dev/stdout

if [ ${packages[mysql-workbench]} = true ]
then
    process_install_echo "mysql-workbench" "MySQL Workbench"
fi

if [ ${packages[dbeaver]} = true ]
then
    install_echo "Starting installation: DBeaver"

    wget -c -P ./temp https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb 1> /dev/null 2> /dev/stdout
    sudo dpkg -i ./temp/dbeaver-ce_latest_amd64.deb 1> /dev/null 2> /dev/stdout
    rm ./temp/dbeaver-ce_latest_amd64.deb 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: DBeaver"
fi

if [ ${packages[skype]} = true ]
then
    install_echo "Starting installation: Skype"

    wget -c -P ./temp https://go.skype.com/skypeforlinux-64.deb 1> /dev/null 2> /dev/stdout
    sudo apt install ./temp/skypeforlinux-64.deb 1> /dev/null 2> /dev/stdout
    rm ./temp/skypeforlinux-64.deb 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Skype"
fi 

if [ ${packages[slack]} = true ]
then
    install_echo "Starting installation: Slack"

    wget -c -P ./temp https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.0-amd64.deb
    sudo apt install ./temp https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.0-amd64.deb 1> /dev/null 2> /dev/stdout
    rm ./temp/slack-desktop-4.12.0-amd64.deb 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Skype"
fi

if [ ${packages[sublime-text]} = true ]
then
    install_echo "Starting installation: Sublime Text 3"

    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - 1> /dev/null 2> /dev/stdout
    sudo apt install apt-transport-https 1> /dev/null 2> /dev/stdout
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout
    sudo apt install sublime-text 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Sublime Text 3"
fi

if [ ${packages[code]} = true ]
then
    install_echo "Starting installation: Sublime VSCode"

    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg 1> /dev/null 2> /dev/stdout
    sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ 1> /dev/null 2> /dev/stdout
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' 1> /dev/null 2> /dev/stdout
    sudo apt install apt-transport-https 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout
    sudo apt install code 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: VSCode"
fi

if [ ${packages[atom]} = true ]
then
    install_echo "Starting installation: Atom"

    sudo apt update -y 1> /dev/null 2> /dev/stdout
    sudo apt install software-properties-common apt-transport-https wget 1> /dev/null 2> /dev/stdout
    wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add - 1> /dev/null 2> /dev/stdout
    sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" 1> /dev/null 2> /dev/stdout
    sudo apt install atom 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Atom"
fi

if [ ${packages[inkscape]} = true ]
then
    install_echo "Starting installation: Inkscape"

    sudo add-apt-repository ppa:inkscape.dev/stable-daily 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout
    sudo apt install inkscape 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Inkscape"
fi

if [ ${packages[gimp]} = true ]
then
    install_echo "Starting installation: Gimp"

    sudo apt autoremove gimp gimp-plugin-registry 1> /dev/null 2> /dev/stdout
    sudo add-apt-repository ppa:otto-kesselgulasch/gimp 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout
    sudo apt install gimp 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Gimp"
fi

if [ ${packages[remmina]} = true ]
then
    install_echo "Starting installation: Remmina"

    sudo apt-add-repository ppa:remmina-ppa-team/remmina-next 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout
    sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Remmina"
fi

if [ ${packages[insomnia]} = true ]
then
    install_echo "Starting installation: Insomnia"

    echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
        | sudo tee -a /etc/apt/sources.list.d/insomnia.list 1> /dev/null 2> /dev/stdout

    wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
        | sudo apt-key add - 1> /dev/null 2> /dev/stdout

    sudo apt update -y 1> /dev/null 2> /dev/stdout
    sudo apt install insomnia 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Insomnia"
fi

if [ ${packages[htop]} = true ]
then
    install_echo "Starting installation: htop"

    sudo apt install htop 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: htop"
fi

if [ ${packages[telegram-desktop]} = true ]
then
    install_echo "Starting installation: Telegram"

    sudo add-apt-repository ppa:atareao/telegram 1> /dev/null 2> /dev/stdout
    sudo apt update -y 1> /dev/null 2> /dev/stdout
    sudo apt install telegram 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Telegram"
fi

if [ ${packages[gitkraken]} = true ]
then
    install_echo "Starting installation: Git Kraken"

    wget -c -P ./temp https://release.gitkraken.com/linux/gitkraken-amd64.deb 1> /dev/null 2> /dev/stdout
    sudo dpkg -i gitkraken-amd64.deb 1> /dev/null 2> /dev/stdout
    rm ./temp/gitkraken-amd64.deb 1> /dev/null 2> /dev/stdout

    success_install_echo "Finished installation: Git Kraken"
fi

echo ""