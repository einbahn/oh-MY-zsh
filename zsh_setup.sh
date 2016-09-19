#!/bin/bash
if hash dnf 2> /dev/null; then
	sudo dnf install zsh git curl
else 
	sudo apt-get install zsh git curl
fi

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install the autocomplete suggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Copy the .zshrc file
cp zshrc /home/$USER/.zshrc
