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

alias fcpush='fleetctl submit'
alias fcstart='fleetctl start'
alias fcload='fleetctl load'
alias fcstop='fleetctl stop'
alias fcdestroy='fleetctl destroy'
alias fcunload='fleetctl unload'
alias fcstatus='fleetctl status'
alias fclm='fleetctl list-machines'
alias fclu='fleetctl list-units'
alias fcluf='fleetctl list-unit-files'
alias fcsel='/Users/dmitry/.fleet/select_tunnel.sh'

alias kubectl='$HOME/work/kubernetes/cluster/kubectl.sh'

# usage `pdftopngs file.pdf`
alias pdftopngs='gs -dBATCH -dNOPAUSE -sDEVICE=png16m -dGraphicsAlphaBits=4 -dTextAlphaBits=4 -r150 -sOutputFile=output%d.png'

# MacPorts Installer addition on 2015-08-13_at_17:46:38: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PS1='\h:\W \u <$?> \$ '

. /usr/local/etc/bash_completion
