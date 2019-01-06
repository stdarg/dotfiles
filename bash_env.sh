# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# for run-tests.sh script
if [ -f /usr/bin/vim ]
then
    export GIT_EDITOR=/usr/bin/vim


if [ -f /usr/local/bin/vim ]
then
    export GIT_EDITOR=/usr/local/bin/vim
fi

export TMP="/tmp"

# For the Node.js version manager
export NVM_DIR="$HOME/.nvm"

# see man ls for color info
export LSCOLORS="hxfxcxdxBxegedabagacad"
