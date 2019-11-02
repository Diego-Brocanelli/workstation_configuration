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

echo ">>> 📦 Configurate to Vim "
echo "        📂 Create to dir .vim...."
mkdir ~/.vim  1> /dev/null 2> /dev/stdout
echo "        📂 Create to dir .vim/colors...."
mkdir ~/.vim/colors  1> /dev/null 2> /dev/stdout
echo "        📡 Cloning to Vundle...."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 1> /dev/null 2> /dev/stdout
echo "        📜 Copy to .vimrc...."
cp .vimrc ~/  1> /dev/null 2> /dev/stdout
echo ""