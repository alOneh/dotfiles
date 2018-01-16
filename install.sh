#!/bin/bash

NOCOLOR='\e[0m'
REDCOLOR='\e[37;41m'

if [[ $EUID -ne 0 ]]; then
   echo -e "Run this bash script as root"
    IS_ROOT=0
else
    IS_ROOT=1
fi

DOTFILES=`pwd`

touch $DOTFILES/.private-gitconfig

echo 'Create $HOME symlink'
ln -sf $DOTFILES/.ackrc               ~/.ackrc
ln -sf $DOTFILES/.dinghy              ~/.dinghy
ln -sf $DOTFILES/.gitconfig           ~/.gitconfig
ln -sf $DOTFILES/.tmux.conf           ~/.tmux.conf
ln -sf $DOTFILES/.tmuxinator          ~/.tmuxinator
ln -sf $DOTFILES/.vimrc               ~/.vimrc
ln -sf $DOTFILES/.zshrc               ~/.zshrc
if [[ ! -d ~/.git-template ]]; then
    ln -sf $DOTFILES/git-template ~/.git-template
fi

if [[ $IS_ROOT = 1 ]]; then
    if [[ `which php` ]] ; then
        if [[ ! -f /usr/local/bin/composer ]]; then
            echo 'Install composer'
            curl -sS https://getcomposer.org/installer | php
            mv composer.phar /usr/local/bin/composer
        fi
    fi
fi
