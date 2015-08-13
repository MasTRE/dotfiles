
# some more ls aliases
alias ll='ls -lAh'
#alias la='ls -A'
#alias l='ls -CF'
alias mv='mv -i'
alias rm='rm -i'
alias egrep='egrep --color'

# set prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# also, set the MYSQL prompt
export MYSQL_PS1='\h/\d>\_'

# colors I can see in iTerm
export CLICOLOR=1
export LSCOLORS="GxGxBxDxCxEgEdxbxgxcxd"

source ~/.bashrc.paths

# GPG/SSH
`/usr/bin/killall -d gpg-agent &> /dev/null`
if [ $? -ne 0 ]; then
    echo 'Starting up gpg-agent w/ ssh support';
    gpg-agent --daemon --enable-ssh-support --write-env-file ~/.gpg-agent-info
else
    echo 'gpg-agent already running, doing nothing';
fi
if [ -f "${HOME}/.gpg-agent-info" ]; then
     . "${HOME}/.gpg-agent-info"
       export GPG_AGENT_INFO
       export SSH_AUTH_SOCK
       export SSH_AGENT_PID
fi
