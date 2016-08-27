#!/bin/sh

alias start-unicorn='cd /home/ec2-user/autopost/current/tools/unicorn; sh unicorn.sh restart'

# Set original aliases.
alias app='cd /home/ec2-user/autopost/current'
alias config='cd /home/ec2-user/autopost/current/config'
alias conts='cd /home/ec2-user/autopost/current/app/controllers/'
alias models='cd /home/ec2-user/autopost/current/app/models/'
alias views='cd /home/ec2-user/autopost/current/app/views/'
alias migrate='cd /home/ec2-user/autopost/current/db/migrate/'
alias tools='cd /home/ec2-user/autopost/current/tools/'
alias log='cd /home/ec2-user/autopost/current/log'
alias uni='cd /home/ec2-user/autopost/current/tools/unicorn; sh unicorn.sh stop; sh unicorn.sh start'
alias js='cd /home/ec2-user/autopost/current/app/assets/javascripts'
alias css='cd /home/ec2-user/autopost/current/app/assets/stylesheets'
alias admin='cd /home/ec2-user/autopost/current/app/admin/'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
