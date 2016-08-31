#!/bin/sh

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

##### Rails settings #####
export RAILS_ENV=development
export RAILS_APP=/home/ec2-user/autopost/current
export MECAB_PATH=/usr/lib64/libmecab.so.2

##### Prompt setting #####
host_name=`hostname`
PS1="${host_name} \W$ "

##### UTILS #####

# bash utils. 
alias sr='cd ~; source ~/.bash_profile'
alias bashedit='vim ~/.bash_profile'
alias bashedit-com='vim ~/bash_profile/common.bash_profile'
alias bashedit-clo='vim ~/bash_profile/clorets.bash_profile'
alias bs='cd ~/bash_profile'
alias bashcp='cp ~/.bash_profile ~/bash_profile/bash_profile'

# network. 
alias global='curl inet-ip.info'

# sleep count. 
function count(){
  while [ 1 == 1 ]
  do
    date
    sleep 1
  done
}

# search. 
function fin() {
  find ./ -type f -print | xargs grep $1
}

# Ruby settings. 
PATH=$PATH:$HOME/bin
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

##### Rails settings #####
export RAILS_ENV=development
export RAILS_APP=/home/ec2-user/autopost/current
export MECAB_PATH=/usr/lib64/libmecab.so.2

##### MySQL #####
alias show-dbs="mysql -u root -e 'show databases;'"
function showtables(){
  mysql -u root $1 -e 'show tables;'
}

##### Git #####
git config --global color.ui true

