# Vars
export JAVA_HOME="$(/usr/libexec/java_home -v 9)"

if [ ! -f ~/.creds ]; then
    touch ~/.creds
fi
. ~/.creds

# Git
alias gush="git push"
alias gull="git pull"
alias ga="git add"
alias gc="git commit"
alias gst="git status"
alias gdif="git diff"
alias gch="git checkout"
alias grhh="git reset --hard head"

# General aliases
alias ..="cd .."
alias ...="cd ../.."
alias ls='ls -GFh'
alias la="ls -GFalh"
alias l='ls -GFh'
alias sl="ls -GFh"
alias fuck='sudo $(history -p \!\!)'
alias pfind='ps aux | grep'
alias gnupath='source $HOME/gnupath.sh'

alias curl='curl -w "\n"'
alias jsonprint='python -m json.tool'

# usage `pdftopngs file.pdf`
alias pdftopngs='gs -dBATCH -dNOPAUSE -sDEVICE=png16m -dGraphicsAlphaBits=4 -dTextAlphaBits=4 -r150 -sOutputFile=output%d.png'

alias flushdns='sudo killall -HUP mDNSResponder'
alias gradle_debug='export GRADLE_OPTS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005'
alias gradle_nodebug='export GRADLE_OPTS='

# AWS

function awsreg() {
    if [[ -z "$1" ]]; then
        echo "usage 'awsreg region-name'"
    else
        export AWS_DEFAULT_REGION="$1"
    fi
}

function awsec2find() {
    aws ec2 describe-instances --filters "Name=tag-value,Values=$1"
}

# MacPorts Installer addition on 2015-08-13_at_17:46:38: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] <$(ec=$?; if [[ $ec = 0 ]]; then printf %s "\[\033[32m\]0\[\033[m\]"; else printf %s "\[\033[31m\]$ec\[\033[m\]"; fi)> \$ '

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. /usr/local/etc/bash_completion

