#!/bin/bash
if [ -f ~/.bashrc ]
then
    mv ~/.bashrc ~/.bashrc.bak
fi
ln -s bashrc.sh ~/.bashrc

