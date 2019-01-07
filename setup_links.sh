#!/bin/bash
if [ -f ~/.bashrc ]
then
    mv ~/.bashrc ~/.bashrc.bak
fi
cp bashrc.sh ~/.bashrc

if [ -f ~/.bash_env.sh ]
then
    mv ~/.bash_env.sh ~/.bash_env.sh.bak
fi
cp bash_env.sh ~/.bash_env

if [ -f ~/.bash_aliases.sh ]
then
    mv .bash_aliases.sh ~/.bash_aliases.sh.bak
fi
cp .bash_aliases.sh ~/.bash_aliases.sh

if [ -f ~/.bash_prompt.sh ]
then
    mv .bash_prompt.sh ~/.bash_prompt.sh.bak
fi
cp .bash_prompt.sh ~/.bash_prompt.sh

if [ ! -f ~/.bash_work.sh ]
then
    touch ~/.bash_work.sh
fi

if [ ! -f ~/.bash_secrets.sh ]
then
    touch ~/.bash_secrets.sh
fi
