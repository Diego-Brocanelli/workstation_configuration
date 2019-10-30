#!/bin/bash 

#############################################################
###
### Installing Z-shell
###
### NodeJS
###
#############################################################
echo ">>> 📦 Installing ZSH"

echo "        🚀 ZSH...."
sudo apt install zsh -y 1> /dev/null 2> /dev/stdout
echo "        🚀 Oh my Zsh...."
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended 1> /dev/null 2> /dev/stdout
echo "        📜 Config NVM's Path in ZSHRC file...."=
echo "" >> /home/${USER}/.zshrc
echo "" >> /home/${USER}/.zshrc
echo "        📜 NVM CONFIG" >> /home/${USER}/.zshrc
tee -a /home/${USER}/.zshrc > /dev/null <<EOT
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This l>
EOT
echo ""
echo ""