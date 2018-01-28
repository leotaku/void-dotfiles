# configure oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="bira"
plugins=(
	git	
)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# load zplug
#source ~/.zplug/init.zsh

# load plugins

# Load theme file
#zplug "miekg/lean", as:theme

# Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

# Source plugins and add commands to $PATH
#zplug load

# aliases
# manually add some oh-my-zsh-provided aliases i like
#alias ...=../..
#alias ....=../../..
#alias .....=../../../..
#alias ......=../../../../..

#alias ls='ls --color=tty'
#alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
