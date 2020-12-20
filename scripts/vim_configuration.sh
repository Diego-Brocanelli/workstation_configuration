#!/bin/bash 

#############################################################
###
### Vim configuration
###
### Create to dir .vim
### Create to dir .vim/colors
### Cloning to Vundle
### Copy to .vimrc
###
#############################################################

title_echo "CONFIGURATE TO VIM"

install_echo "Create to dir .vim"
mkdir ~/.vim  1> /dev/null 2> /dev/stdout
success_install_echo "Finished creating the .vim directory"

install_echo "Create to dir .vim/colors"
mkdir ~/.vim/colors  1> /dev/null 2> /dev/stdout
success_install_echo "Finished creating the .vim/colors directory"

install_echo "Cloning Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 1> /dev/null 2> /dev/stdout
success_install_echo "Cloned Vundle finished"

install_echo "Copying .vimrc file to the ~ / directory"
cp .vimrc ~/  1> /dev/null 2> /dev/stdout
success_install_echo "Finished copying .vimrc file to the ~ / directory"

if [ ${packages[set-vim-git]} = true ]
then
    install_echo "Setting vim as the default editor in Git"
    git config --global core.editor vim
    success_install_echo "Finalized definition of vim as default editor in Git"
fi

echo ""