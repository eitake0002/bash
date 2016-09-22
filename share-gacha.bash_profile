#!/bin/sh

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Ruby settings.
PATH=$PATH:$HOME/bin
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

##### Rails settings #####
export RAILS_ENV=development
export RAILS_APP=/home/ec2-user/autopost/current
export MECAB_PATH=/usr/lib64/libmecab.so.2
rbenv shell 2.3.1

##### Prompt setting #####
host_name=`hostname`
PS1="${host_name} \W$ "

##### Clorets vagrant #####

# cd aliases
alias clo='cd /home/vagrant/share-gacha'
alias clo-ex='cd /home/vagrant/clorets-excalibur'
alias app='cd /home/vagrant/share-gacha'

# controllers
alias conts='cd /home/vagrant/share-gacha/app/controllers'
alias api='cd /home/vagrant/share-gacha/app/controllers/api/v1'
# admins
alias admin='cd /home/vagrant/share-gacha/app/admin'
alias admin-ex='cd /home/vagrant/clorets-excalibur/app/admin'

# views
alias views='cd /home/vagrant/share-gacha/app/views'

# models
alias models='cd /home/vagrant/share-gacha/app/models'

# Rspec
alias spec-models='cd ~/share-gacha/spec/models'
alias spec-api='cd ~/share-gacha/spec/controllers/api'
alias spec-conts='cd ~/share-gacha/spec/controllers/'
alias spec-lib='cd ~/share-gacha/spec/lib'

# others. 
alias mig='cd /home/vagrant/share-gacha/db/migrate'
alias sc='cd /home/vagrant/share-gacha/script'
alias log='cd ~/share-gacha/log'
alias pub='cd ~/share-gacha/public/'
alias config='cd /home/vagrant/share-gacha/config/'
alias ini='cd /home/vagrant/share-gacha/config/initializers'
alias loc='cd /home/vagrant/share-gacha/config/locales'
alias spec='cd /home/vagrant/share-gacha/spec'
alias tools='cd /home/vagrant/share-gacha/tools'
alias lib='cd /home/vagrant/share-gacha/lib'

# vim aliases
alias vim-tro-con='vim /home/vagrant/share-gacha/app/controllers/site/trophy/subscriber_controller.rb'
alias vim-se-con='vim /home/vagrant/share-gacha/app/controllers/site/secret_live/subscriber_controller.rb'
alias vim-seed='vim ~/share-gacha/db/seeds.rb'
alias vim-car='vim /home/vagrant/share-gacha/config/initializers/carrierwave.rb'
alias vim-routes='vim ~/share-gacha/config/routes.rb'

# Web server
alias run-webrick='cd /home/vagrant/share-gacha; bundle exec rails s -b 0.0.0.0'
alias run-webrick-bg='cd /home/vagrant/share-gacha; bundle exec rails s -b 0.0.0.0 &'
function kill-job(){
  kill -9 "%$1"
}
function runwebrick(){
  cd /home/vagrant/share-gacha
  rails s -b 0.0.0.0
}

# MySQL database.
db_name=share_gacha_development
alias reset-db='cd ~/share-gacha/; rake db:migrate:reset; rake db:seed' 

function show-vote-data() {
  mysql -u root clorets_ar_dev -e 'select * from neta_movies'
  mysql -u root clorets_ar_dev -e 'select * from neta_votes'
}
function desc-tables(){
  mysql -u root share_gacha_development -e 'desc statuses'
  mysql -u root $db_name -e 'desc gacha_statuses'
  mysql -u root share_gacha_development -e 'desc qr_codes'
}
function show-tables(){
  mysql -u root share_gacha_development -e 'show tables;'
}
function show-data(){
  mysql -u root $db_name -e 'select * from statuses'
  mysql -u root $db_name -e 'select * from gacha_statuses'
  mysql -u root $db_name -e 'select * from qr_codes'
}
function update-data(){
  mysql -u root $db_name -e 'update gacha_statuses set current_status = 1'
  mysql -u root $db_name -e 'select * from gacha_statuses'
}
