# If not running interactively, don't do anything
[ -z "$PS1" ] && return

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(pyenv init --path)"

# INTERACTIVE STUFF FOLLOWS

# Must be fully qualified on MacOS
export DOT_FILES_DIR="${HOME}/src/dotfiles"

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

# set up node env
if [ -f /usr/local/bin/nodenv ]
then
    eval "$(nodenv init -)"
    export PATH="$HOME/.nodenv/bin:$PATH"
    export NODENV_VERSION=15.8.0
    printf "Node version available is: $NODENV_VERSION\n\n"
fi

# Pithy fortune
printf "\e[0;36m%s\e[0m\n" "`fortune`"
