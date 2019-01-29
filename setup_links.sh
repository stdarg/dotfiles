#!/bin/bash
CWD=`pwd`
if [ -f ~/.bashrc ]
then
    mv ~/.bashrc ~/.bashrc.bak
fi
ln -s ${CWD}/bashrc.sh ~/.bashrc

if [ -f ~/.gitconfig ]
then
    mv ~/.gitconfig ~/.gitconfig.bak
fi
ln -s ${CWD}/gitconfig.ini ~/.gitconfig

