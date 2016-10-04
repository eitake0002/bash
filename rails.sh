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
# export rails_app_name=clorets-ar

#----------------------------------
# Frequently used directories
#----------------------------------
alias app='cd ~/$rails_app_name/'
alias conts='cd ~/$rails_app_name/app/controllers/'
alias models='cd ~/$rails_app_name/app/models/'
alias views='cd ~/$rails_app_name/app/views/'
alias admin='cd ~/$rails_app_name/app/admin/'
alias lib='cd ~/$rails_app_name/lib/'
alias config='cd ~/$rails_app_name/config/'
alias config-init='cd ~/$rails_app_name/config/initializers'
alias mig='cd ~/$rails_app_name/db/migrate/'
alias spec='cd ~/autopost/current/spec'
alias spec-lib='cd ~/autopost/current/spec/lib'

#----------------------------------
# Frequently used files
#----------------------------------
alias vim-routes='vim ~/$rails_app_name/config/routes.rb'
alias vim-seed='vim ~/$rails_app_name/db/seeds.rb'

#----------------------------------
# Server commands
#----------------------------------
alias restart-unicorn='cd /home/ec2-user/autopost/current/tools/unicorn; sh unicorn.sh stop; sh unicorn.sh start'
alias run-webrick='cd ~/$rails_app_name/; bundle exec rails s -b 0.0.0.0'
alias run-webrick-bg='cd ~/$rails_app_name/; bundle exec rails s -b 0.0.0.0 &'
