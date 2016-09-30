#!/bin/sh

#bashedit-li='vim ~/bash_profile/linux.sh'

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
# ssh
#----------------------------------
alias ssh-config='vim ~/.ssh/config'

#----------------------------------
# Network 
#----------------------------------
alias global='curl inet-ip.info'

#----------------------------------
# Process
#----------------------------------
alias ps=ps

#----------------------------------
# Storage
#----------------------------------
function disc-size(){
  df -hm
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
