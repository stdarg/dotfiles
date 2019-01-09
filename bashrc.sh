# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# INTERACTIVE STUFF FOLLOWS

# Must be fully qualified on OS X (not sure why yet)
export DOT_FILES_DIR="/Users/edmondmeinfelder/src/dotfiles"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# load environment variables
if [ -f ${DOT_FILES_DIR}/bash_env.sh ]
then
    source ${DOT_FILES_DIR}/bash_env.sh
fi

# load aliases
if [ -f ${DOT_FILES_DIR}/bash_aliases.sh ]
then
    source ${DOT_FILES_DIR}/bash_aliases.sh
fi

# load colors
if [ -f ${DOT_FILES_DIR}/bash_prompt.sh ]
then
    source ${DOT_FILES_DIR}/bash_prompt.sh
fi

# load work-specific stuff
if [ -f ${DOT_FILES_DIR}/bash_work.sh ]
then
    source ${DOT_FILES_DIR}/bash_work.sh
fi

# load any secrets
if [ -f ${DOT_FILES_DIR}/.bash_secrets.sh ]
then
    source ${DOT_FILES_DIR}/bash_secrets.sh
fi

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

printf "\e[0;36m%s\e[0m\n" "`fortune`"
