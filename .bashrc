# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# some more ls aliases
alias ll='ls -lAh'
#alias la='ls -A'
#alias l='ls -CF'
alias mv='mv -i'
alias rm='rm -i'
alias egrep='egrep --color'
# this is needed so that vim can use 256 colors inside tmux
alias tmux='tmux -2'

# set prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# also, set the MYSQL prompt
export MYSQL_PS1='\h/\d>\_'

# colors I can see in iTerm
export CLICOLOR=1
export LSCOLORS="GxGxBxDxCxEgEdxbxgxcxd"

source ~/.bashrc.paths

