#!/bin/sh

# Rails common aliases. 

#-----------------
# Global settings.
#-----------------

# Edit this file
alias bashedit-rails='vim ~/bash_profile/rails_common.bash_profile'

# Load rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Rails application name
export app_name=eto-maker

# AWS keys setting.
export AWS_ACCESS_KEY_ID='AKIAIM2VA2DY252774HA'
export AWS_SECRET_ACCESS_KEY='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'

#-------------------------
# Deirectory move aliases
#-------------------------

# Common directory move. 
alias app='cd ~/$app_name/'
alias conts='cd ~/$app_name/app/controllers/'
alias models='cd ~/$app_name/app/models/'
alias views='cd ~/$app_name/app/views/'
alias admin='cd ~/$app_name/app/admin/'
alias lib='cd ~/$app_name/lib/'

# Move to configs
alias config='cd ~/$app_name/config/'
alias config-init='cd ~/$app_name/config/initializers'

# Routing
alias vim-routes='vim ~/$app_name/config/routes.rb'

# Move to databases
alias mig='cd ~/$app_name/db/migrate/'

# Edit db/seeds.rb
alias vim-seed='vim ~/autopost/current/db/seeds.rb'

# Spec
alias spec='cd ~/autopost/current/spec'
alias spec-lib='cd ~/autopost/current/spec/lib'

#-----------------
# Server commands
#-----------------
alias restart-unicorn='cd /home/ec2-user/autopost/current/tools/unicorn; sh unicorn.sh stop; sh unicorn.sh start'
alias run-webrick='cd ~/$app_name/; bundle exec rails s -b 0.0.0.0'
alias run-webrick-bg='cd ~/$app_name/; bundle exec rails s -b 0.0.0.0 &'

