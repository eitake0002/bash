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
alias clo='cd /home/vagrant/clorets-ar'
alias clo-ex='cd /home/vagrant/clorets-excalibur'
alias app='cd /home/vagrant/clorets-ar'

# controllers
alias conts='cd /home/vagrant/clorets-ar/app/controllers'
alias conts='cd ~/clorets-excalibur/app/controllers/'
alias site-conts='cd /home/vagrant/clorets-ar/app/controllers/site'
alias site-conts-ex='cd /home/vagrant/clorets-excalibur/app/controllers/'

# apis
alias api='cd /home/vagrant/clorets-ar/app/controllers/api'
alias api-ex='cd /home/vagrant/clorets-excalibur/app/controllers/vote_api'

# admins
alias admin='cd /home/vagrant/clorets-ar/app/admin'
alias admin-ex='cd /home/vagrant/clorets-excalibur/app/admin'

# views
alias views='cd /home/vagrant/clorets-ar/app/views'
alias site-views='cd /home/vagrant/clorets-ar/app/views/site'
alias site-views-ex='cd /home/vagrant/clorets-excalibur/app/views/site'
alias sub-views-ex='cd /home/vagrant/clorets-excalibur/app/views/site/subscribers'
alias tro-views='cd /home/vagrant/clorets-ar/app/views/site/trophy/subscriber'
alias se-views='cd /home/vagrant/clorets-ar/app/views/site/secret_live/subscriber'
alias sub-views='cd /home/vagrant/clorets-ar/app/views/site/trophy/subscriber'
alias se-sub-views='cd /home/vagrant/clorets-ar/app/views/site/secret_live/subscriber'

# models
alias models='cd /home/vagrant/clorets-ar/app/models'
alias models-ex='cd /home/vagrant/clorets-excalibur/app/models'

# others. 
alias mig='cd /home/vagrant/clorets-ar/db/migrate'
alias sc='cd /home/vagrant/clorets-ar/script'
alias dep='cd ~/clorets-ar/config/deploy'

# vim aliases
alias vim-tro-con='vim /home/vagrant/clorets-ar/app/controllers/site/trophy/subscriber_controller.rb'
alias vim-se-con='vim /home/vagrant/clorets-ar/app/controllers/site/secret_live/subscriber_controller.rb'
alias vim-seed='vim ~/clorets-ar/db/seeds.rb'
alias config='cd /home/vagrant/clorets-ar/config/'
alias config-ex='cd /home/vagrant/clorets-excalibur/config/'
alias loc='cd /home/vagrant/clorets-ar/config/locales' 
alias spec='cd /home/vagrant/clorets-ar/spec'
alias tools='cd /home/vagrant/clorets-ar/tools'
alias lib='cd /home/vagrant/clorets-ar/lib'

# Web server
alias run-webrick='cd /home/vagrant/clorets-ar; bundle exec rails s -b 0.0.0.0'
alias run-webrick-bg='cd /home/vagrant/clorets-ar; bundle exec rails s -b 0.0.0.0 &'
function runwebrick(){
  cd /home/vagrant/clorets-ar
  rails s -b 0.0.0.0
}

# MySQL database.
alias reset-db='cd ~/clorets-ar/; rake db:migrate:reset; rake db:seed' 

function show-vote-data() {
  mysql -u root clorets_ar_dev -e 'select * from neta_movies'
  mysql -u root clorets_ar_dev -e 'select * from neta_votes'
}
function show-tro-data(){
  mysql -u root clorets_ar_dev -e 'select * from trophy_applies\G'
}
function show-secret-data(){
  mysql -u root clorets_ar_dev -e 'select * from secret_live_applies\G'
}
function desc-tables(){
  mysql -u root clorets_ar_dev -e 'desc neta_movies'
  mysql -u root clorets_ar_dev -e 'desc neta_votes'
  mysql -u root clorets_ar_dev -e 'desc secret_live_applies'
  mysql -u root clorets_ar_dev -e 'desc trophy_applies' 
}
function show-tables(){
  mysql -u root clorets_ar_dev -e 'show tables;'
}

