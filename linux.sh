#!/bin/sh

# Edit this file.
alias bashedit-li='vim ~/bash_profile/linux.sh'

# Edit ~/.bash_profile
alias bashedit='vim ~/.bash_profile'

# Move to bash_profile
alias bs='cd ~/bash_profile'

#----------------------------------
# Common settings.
#----------------------------------

# Set prompt name
PS1="`hostname` \W$ "

# Read .bash_profile
alias sr='cd ~; source ~/.bash_profile'

#----------------------------------
# System(OS)
#----------------------------------
# Add ruby command
export PATH=$PATH:$HOME/bin
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Description:
#   Check OS version on RHEL(AWS).
# Usage:
#   check-os-version
function check-os-version()
{
  cat /etc/system-release
}

# Description:
#   Check OS architecture.
# Usage:
#   check-os-arch
function check-os-arch()
{
  arch
}

# Description:
#   Check OS info.
# Usage:
#   check-os-info
function check-os-info()
{
  uname -a
}

#----------------------------------
# ssh
#----------------------------------
function vag-ssh-config(){
  vagrant ssh-config
}

function vag-scp(){
  scp -r $1 vagrant@$2:~/
}

#----------------------------------
# yum
#----------------------------------

# Description:
#   Install epel repository on RHEL7.0 or later.
# Usage:
#   yum-add-epel
function yum-add-epel()
{
  wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
  rpm -ivh epel-release-latest-7.noarch.rpm
}

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

function yum-list-installed()
{
  yum list installed
}

function yum-search(){
  sudo yum search $1
}

#------------------------------------------------------------
# network 
#------------------------------------------------------------
alias global='curl inet-ip.info'
alias check-open-port='netstat -an | grep LISTEN'

#------------------------------------------------------------
# Process
#------------------------------------------------------------

# Get process id with name
# ex: get-pid rails
function get-pid(){
  ps -e -o pid,cmd | grep $1 | grep -v grep | awk '{ print $1 }'
}

# Kill process with above get-pid function.
# ex: kill-pid rails
function kill-proc(){
  process_id=`ps -e -o pid,cmd | grep $1 | grep -v grep | awk '{ print $1 }'`
  kill -9 $process_id
}

#------------------------------------------------------------
# memory
#------------------------------------------------------------
function mem-size(){
  free -tm
}

# show process memory size
function process-mem-size(){
  echo "MEM  : VSZ : RSS : COMMAND"
  ps aux | grep $1 | awk '{print $4 "% :", $5/1000 "vsz(MB) :", $6/1000 "rss(MB) :", $11}'
}

# show process total memory size
function process-mem-total(){
  ps aux | grep $1 | awk '{sum += $6}END{print sum/1000}'
}

