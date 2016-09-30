#!/bin/sh

# Edit this file
alias bashedit-rails='vim ~/bash_profile/rails.sh'

#----------------------------------
# Settings.
#----------------------------------

# Load rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Rails application name
export app_name=eto-maker

#----------------------------------
# Frequently used directories
#----------------------------------
alias app='cd ~/$app_name/'
alias conts='cd ~/$app_name/app/controllers/'
alias models='cd ~/$app_name/app/models/'
alias views='cd ~/$app_name/app/views/'
alias admin='cd ~/$app_name/app/admin/'
alias lib='cd ~/$app_name/lib/'
alias config='cd ~/$app_name/config/'
alias config-init='cd ~/$app_name/config/initializers'
alias mig='cd ~/$app_name/db/migrate/'
alias spec='cd ~/autopost/current/spec'
alias spec-lib='cd ~/autopost/current/spec/lib'

#----------------------------------
# Frequently used files
#----------------------------------
alias vim-routes='vim ~/$app_name/config/routes.rb'
alias vim-seed='vim ~/autopost/current/db/seeds.rb'

#----------------------------------
# Server commands
#----------------------------------
alias restart-unicorn='cd /home/ec2-user/autopost/current/tools/unicorn; sh unicorn.sh stop; sh unicorn.sh start'
alias run-webrick='cd ~/$app_name/; bundle exec rails s -b 0.0.0.0'
alias run-webrick-bg='cd ~/$app_name/; bundle exec rails s -b 0.0.0.0 &'
