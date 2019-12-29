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

line_echo "Create to dir .vim"
mkdir ~/.vim  1> /dev/null 2> /dev/stdout

line_echo "Create to dir .vim/colors"
mkdir ~/.vim/colors  1> /dev/null 2> /dev/stdout

line_echo "Cloning to Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 1> /dev/null 2> /dev/stdout

line_echo "Copy to .vimrc"
cp .vimrc ~/  1> /dev/null 2> /dev/stdout

echo ""