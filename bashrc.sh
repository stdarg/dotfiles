# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# INTERACTIVE STUFF FOLLOWS
export DOT_FILES_DIR="~/src/dotfiles"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# load environment variables
if [ -f ${DOT_FILES_DIR}/.bash_aliases ]
then
    . ${DOT_FILES_DIR}/.bash_aliases
fi

# load aliases
if [ -f ${DOT_FILES_DIR}/.bash_aliases ]
then
    . ${DOT_FILES_DIR}/.bash_aliases
fi

# load colors
if [ -f ${DOT_FILES_DIR}/.bash_prompt.sh ]
then
    source ${DOT_FILES_DIR}/.bash_prompt.sh
fi

# load work-specific stuff
if [ -f ${DOT_FILES_DIR}/.bash_work.sh ]
then
    source ${DOT_FILES_DIR}/.bash_work.sh


# load any secrets
if [ -f ${DOT_FILES_DIR}/.bash_secrets.sh ]
then
    source ${DOT_FILES_DIR}/.bash_secrets.sh
fi

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


printf "\e[0;36m%s\e[0m\n" "`fortune`"
