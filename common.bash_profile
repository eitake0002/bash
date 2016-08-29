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

##### Go settings#####
export PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/go/bin
export GOPATH=$HOME/go_program

##### Rails settings #####
export RAILS_ENV=development
export RAILS_APP=/home/ec2-user/autopost/current
export MECAB_PATH=/usr/lib64/libmecab.so.2

##### Prompt setting #####
host_name=`hostname`
PS1="${host_name} \W$ "

##### UTILS #####
alias sr='cd; source ~/.bash_profile'
alias global='curl inet-ip.info'
alias bashedit='vim ~/.bash_profile'
alias bashedit-com='vim ~/bash_profile/common.bash_profile'
alias bs='cd ~/bash_profile'
alias bashcp='cp ~/.bash_profile ~/bash_profile/bash_profile'
function count(){
  while [ 1 == 1 ]
  do
    date
    sleep 1
  done
}
function fin() {
  find ./ -type f -print | xargs grep $1
}

##### MySQL #####
alias showdbs="mysql -u root -e 'show databases;'"
function showtables(){
  mysql -u root $1 -e 'show tables;'
}

##### Hadoop #####
export HADOOP_HOME=/usr/hadoop-2.7.1
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$JAVA_HOME/bin:$PATH
alias hd='cd /usr/hadoop-2.7.1/'

##### Git #####
git config --global color.ui true

