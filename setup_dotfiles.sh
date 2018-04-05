#!/bin/bash
#clear configuration files if already exist
#need to put the dotfile directory just under the home directory
if [ -f "../.bashrc" ];then
rm -rf ~/.bashrc
fi
if [ -f "../.vimrc" ];then
rm -rf ~/.vimrc
fi
if [ ! -d "../.ssh/" ];then
mkdir ~/.ssh
fi
if [ -f "../.ssh/config" ];then
rm -rf ~/.ssh/config
fi

#set symbolic links
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/ssh-config ~/.ssh/config
