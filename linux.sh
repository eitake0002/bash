#!/bin/sh

# Edit this file.
alias bashedit-li='vim ~/bash_profile/linux.sh'

#----------------------------------
# Common settings.
#----------------------------------

# Set prompt name
PS1="`hostname` \W$ "

# Read .bash_profile
alias sr='cd ~; source ~/.bash_profile'

#----------------------------------
# OS settins
#----------------------------------
# Add ruby command
export PATH=$PATH:$HOME/bin
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#----------------------------------
# yum
#----------------------------------
function yum-ins(){
  sudo yum -y install $1
}

alias yum-update='sudo yum -y update'

function yum-rem(){
  sudo yum -y remove $1
}

function yum-info(){
  sudo yum info $1
}

alias yum-installed='sudo yum list installed'

function yum-search(){
  sudo yum search $1
}

#----------------------------------
# ssh
#----------------------------------
alias ssh-config='vim ~/.ssh/config'

#----------------------------------
# Network 
#----------------------------------
alias global='curl inet-ip.info'
alias check-open-port='netstat -an | grep LISTEN'

#----------------------------------
# Process
#----------------------------------

# Get process id with name
# ex: get-pid rails
function get-pid(){
  ps -e -o pid,cmd | grep $1 | grep -v grep | awk '{ print $1 }'
}

# Kill process with above get-pid function.
# ex: kill-pid rails
function kill-pid(){
  process_id=`ps -e -o pid,cmd | grep $1 | grep -v grep | awk '{ print $1 }'`
  kill -9 $process_id
}

#----------------------------------
# Storage
#----------------------------------
function disc-size(){
  df -h
}

#----------------------------------
# Memory
# ----------------------------------
function mem-size(){
  free -m
}

#----------------------------------
# Search
# ----------------------------------
# Search file/diretory name.
function fi(){
  find / -name $1
}

# Search word in multiple files
function fin() {
  find ./ -type f -print | xargs grep $2
}