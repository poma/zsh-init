#!/bin/bash

apt-get update
apt-get install -y git zsh
apt-get install -y fzf bat

git clone https://github.com/robbyrussell/oh-my-zsh /opt/oh-my-zsh
pushd /opt/oh-my-zsh/custom/plugins
	git clone https://github.com/zsh-users/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-completions
  git clone https://github.com/poma/custom-completions
  # git clone https://github.com/poma/docker-machine
popd

cp ./files/.zshrc ~/
cp ./files/.dircolors ~/

# chsh -s /bin/zsh root
zsh