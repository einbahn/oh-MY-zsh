#!/bin/bash
if hash dnf 2> /dev/null; then
	sudo dnf install zsh git curl autojump
else 
	sudo apt-get install zsh git curl autojump
fi

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install the autocomplete suggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

SCRIPT=$(readlink -f "$0")
# Absolute path this script is in
SCRIPTPATH=$(dirname "$SCRIPT")

# Copy the .zshrc file
sudo ln -s $SCRIPTPATH/zshrc ~/.zshrc
