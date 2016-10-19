#!/bin/sh

# ----------------------------------
# How to use.
# Paste below in ~/.bash_profile.
# ----------------------------------
<< COM
export rails_app_name_list=(rails_app_name_1 rails_app_name_2)
export rails_app_name=${rails_app_name_list[0]}
COM

# ----------------------------------
# rails app.
# ----------------------------------

# synopsis:
#   show rails_app_names.
#
# description:
#   show rails app list and check current app "*".
function show-app-list(){

  # loop app_name_rails_list.
  i=1
  for item in ${rails_app_name_list[@]}; do

    # check current app_name.
    if [ $rails_app_name = $item ]; then
      echo "${i} : " ${item} "*"
    else
      echo "${i} : " ${item}
    fi

    i=$(( i + 1 ))
  done
  return 0
}

# sysnopsic:
#   switch rails_app_name env. and show list after switching.
# options:
#   first: number of rails_app.
function sw-app(){
  export rails_app_name=${rails_app_name_list[$1 - 1]}
  show-app-list
  return 0
}

# ----------------------------------
# Edit this file
# ----------------------------------

alias bashedit-rails='vim ~/bash_profile/rails.sh'

#----------------------------------
# read rbenv
#----------------------------------

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#----------------------------------
# Frequently used directories
#----------------------------------

# app
alias app='cd ~/$rails_app_name/'

# controllers
alias conts='cd ~/$rails_app_name/app/controllers/'

# controllers/concerns
alias conc='cd ~/$rails_app_name/app/controllers/concerns'

# models
alias models='cd ~/$rails_app_name/app/models/'

# views
alias views='cd ~/$rails_app_name/app/views/'

# active admin app/admin
alias admin='cd ~/$rails_app_name/app/admin/'

# lib/original libraries.
alias lib='cd ~/$rails_app_name/lib/'

# config
alias config='cd ~/$rails_app_name/config/'
alias config-init='cd ~/$rails_app_name/config/initializers'

# migration
alias mig='cd ~/$rails_app_name/db/migrate/'

# rspec
alias spec='cd ~/$rails_app_name/spec'
alias spec-lib='cd ~/$rails_app_name/spec/lib'

# public
alias pub='cd ~/$rails_app_name/public/'

#----------------------------------
# Frequently used files
#----------------------------------

# config/routes.rb
alias vim-routes='vim ~/$rails_app_name/config/routes.rb'

# db/seeds.rb
alias vim-seed='vim ~/$rails_app_name/db/seeds.rb'

#----------------------------------
# Server commands
#----------------------------------
alias restart-unicorn='cd ~/$rails_app_name/tools/unicorn; sh unicorn.sh stop; sh unicorn.sh start'
alias run-webrick='cd ~/$rails_app_name/; bundle exec rails s -b 0.0.0.0'
alias run-webrick-bg='cd ~/$rails_app_name/; bundle exec rails s -b 0.0.0.0 &'
