WHITE="\[\e[97m\]"
RED="\[\e[91m\]"
YELLOW="\[\e[93m\]"
DEFAULT="\[\e[39m\]"

GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_THEME=Solarized
GIT_PROMPT_START="${WHITE}\w${DEFAULT}"
GIT_PROMPT_END=" ${RED}\$${DEFAULT} "

if [ -f "/opt/homebrew/opt/bash-git-prompt/share/gitprompt.sh" ]
then
    __GIT_PROMPT_DIR="/opt/homebrew/opt/bash-git-prompt/share"
    source "/opt/homebrew/opt/bash-git-prompt/share/gitprompt.sh"
else
    echo "bash-git-prompt is not installed, please install it."
    echo "see: https://github.com/magicmonty/bash-git-prompt#installation"
fi
