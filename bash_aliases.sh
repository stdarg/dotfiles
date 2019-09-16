# Some useful aliases.

HOST_TYPE=`uname`
VIM=/usr/local/bin/vim
if [ ${HOST_TYPE} = "Linux" ]
then
    VIM=/usr/bin/vim
fi

alias rmorig="find . -name '*.orig' -delete"
alias s="git status -s"
alias sp='source ~/.profile'
alias sb='source ~/.bashrc'
alias vb='${VIM} ~/src/dotfiles/bashrc.sh'
alias vp='${VIM} ~/.profile'
alias mkdir='mkdir -p'
alias h='history'
alias j='jobs -l'
alias which='type -all'
alias path='echo -e ${PATH//:/\\n}'
alias printn='/usr/bin/lp -o nobanner -d $LPDEST'   # Assumes LPDEST is defined
alias pjet='enscript -h -G -fCourier9 -d $LPDEST'  # Pretty-print using enscript
alias du='du -kh'
# alias df='df -kTh'
alias df='cd ~/src/dotfiles'
alias pytestcov='pytest --cov=quoter --cov-report html'

# The 'ls' family (this assumes you use the GNU ls)
alias la='ls -AlG'          # show hidden files
alias ls='ls -hF -G'        # add colors for filetype recognition
alias lx='ls -lXBG'         # sort by extension
alias lk='ls -lSrG'         # sort by size
alias lc='ls -lcrG'         # sort by change time
alias lu='ls -lurG'         # sort by access time
alias lr='ls -lRG'          # recursive ls
alias lt='ls -ltrG'         # sort by date
alias lm='ls -alG |more'    # pipe through 'more'
alias tree='tree -Csu'      # nice alternative to 'ls'
alias l='ls -hF -G'
alias countjs="find . -name "*.js" -exec cat \{\} \; | wc -l"
alias countpy="find . -path ./.tox -prune -o -name "*.py" -exec cat \{\} \; | wc -l"
alias gh="open \`git remote -v | grep git@github.com | grep fetch | head -1 | cut -f2 | cut -d' ' -f1 | sed -e's/:/\//' -e 's/git@/http:\/\//'\`"

# spelling typos - highly personal :-)
alias xs='cd'
alias vf='cd'
alias moer='more'
alias moew='more'

alias grepjsi="grep --include='*.js' -nir "
alias grepjs="grep --include='*.js' -nr "
alias grepc="grep --include='*.h' --include='*.c' -nir "
alias makectags='find . | grep -v node_modules | grep ".js$" | xargs ctags --tag-relative=yes --fields=+akst'
alias notabs="find ./ -type f -exec sed -i 's/\t/    /g' {} \;"
alias src="cd ~/src"
alias gfhs="git flow hotfix start"
alias gfhf="git flow hotfix finish"
alias gffs="git flow feature start"
alias gfff="git flow feature finish"
alias weather="ansiweather"
alias fpep8="autopep8 --in-place --aggressive --aggressive"

function jscountall() {
    local DIR="."
    if ! [ -z "$@" ]
    then
        DIR="$@"
    fi
    find "$DIR" -name *.js | xargs cat 2> /dev/null | wc -l
}

function jscount() {
    local DIR="."
    if ! [ -z "$@" ]
    then
        DIR="$@"
    fi
    find "$DIR" \( -name node_modules -prune \) -o -name "*.js" | xargs cat 2> /dev/null | wc -l
}

function pygrep() {
    find . \( -name __pycache__ -prune \) \( -name .tox -prune \) -o -name "*.py" -exec grep --color -Hn "$@" {} 2>/dev/null \;
}

function jsgrep() {
    find . \( -name node_modules -prune \) -o -name "*.js" -exec grep --color -Hn "$@" {} 2>/dev/null \;
}

function vjsp() {
    FILES=`find . \( -name node_modules -prune \) -o -name "*.js" -exec grep -Hn "$@" {} 2>/dev/null \; | cut -f1 -d: | sort -u`
    vim $FILES
}

function jsp() {
    echo `find . \( -name node_modules -prune \) -o -name "*.js" -exec grep -Hn "$@" {} 2>/dev/null \; | cut -f1 -d: | sort -u`
}


function vi()    { echo -e "\033];$@\007"; ${VIM} $@; echo -e "\033];\007"; }
function vp()    { ${VIM} `grep "$@" * | cut -f1 -d: | sort -u`; }
function vcpp()  { ${VIM} `grep "$@" *.cpp *.h | cut -f1 -d: | sort -u`; }
function vjs()   { ${VIM} `grep "$@" *.js | cut -f1 -d: | sort -u`; }
function vp2()   { ${VIM} `grep "$@" *.php *.inc | cut -f1 -d: | sort -u`; }
function rgrep   { find . -exec grep -iHn "$@" \{\} \;; }
function fvi()   { find . -name "$@" -exec ${VIM} \{\} \; ; }
function pjson() { echo $@ | python -m json.tool ; }
function vijs()  { ${VIM} `grep -nr "$@" *.js  | cut -d: -f1 | sort -u` ; }
function vipy()  { ${VIM} `grep -nr "$@" *.py  | cut -d: -f1 | sort -u` ; }
