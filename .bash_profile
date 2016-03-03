# Vars
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export EC2_HOME="/usr/local/ec2/ec2-api-tools-1.7.5.0"
export PATH="$PATH:$EC2_HOME/bin"

. ~/.creds

# Git
alias gush="git push"
alias gull="git pull"
alias ga="git add"
alias gc="git commit"
alias gst="git status"
alias gdif="git diff"
alias gch="git checkout"

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

# MacPorts Installer addition on 2015-08-13_at_17:46:38: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] <$(ec=$?; if [[ $ec = 0 ]]; then printf %s "\[\033[32m\]0\[\033[m\]"; else printf %s "\[\033[31m\]$ec\[\033[m\]"; fi)>$(__git_ps1 " (%s)") \n\$ '

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export DOCKER_HOST=tcp://buildserver.local:2376 DOCKER_TLS_VERIFY=1

. /usr/local/etc/bash_completion

if ! declare -F __git_ps1 &> /dev/null; then
    alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*#\)/(\1)/'"
fi
