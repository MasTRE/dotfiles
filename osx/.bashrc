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

#source ~/.bashrc.paths

# GPG/SSH
# Add the following to your shell init to set up gpg-agent automatically for every shell
if [ -S "$(gpgconf --list-dirs agent-ssh-socket)" ] && [ -n "$(pgrep gpg-agent)" ]; then
    export SSH_AUTH_SOCK=`gpgconf --list-dirs agent-ssh-socket`
else
    eval $(gpg-agent --daemon)
fi

# https://www.dns.toys/ https://news.ycombinator.com/item?id=31704789
function dy { dig +noall +answer +additional "$1" @dns.toys; }

