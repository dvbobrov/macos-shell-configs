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
alias la="ls -al"
alias sl="ls"
alias fuck='sudo $(history -p \!\!)'
alias pfind='ps aux | grep'
alias gnupath='source $HOME/gnupath.sh'

alias curl='curl -w "\n"'
alias jsonprint='python -m json.tool'

# usage `pdftopngs file.pdf`
alias pdftopngs='gs -dBATCH -dNOPAUSE -sDEVICE=png16m -dGraphicsAlphaBits=4 -dTextAlphaBits=4 -r150 -sOutputFile=output%d.png'

# MacPorts Installer addition on 2015-08-13_at_17:46:38: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PS1='\h:\W \u <$?> \$ '
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export DOCKER_HOST=tcp://buildserver.local:2376 DOCKER_TLS_VERIFY=1

. /usr/local/etc/bash_completion
