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

##### Clorets vagrant #####
alias clo='cd /home/vagrant/clorets-ar'
alias app='cd /home/vagrant/clorets-ar'
alias clo-ex='cd /home/vagrant/clorets-excalibur'
alias conts='cd /home/vagrant/clorets-ar/app/controllers'
alias vim-tro-con='vim /home/vagrant/clorets-ar/app/controllers/site/trophy/subscriber_controller.rb'
alias vim-se-con='vim /home/vagrant/clorets-ar/app/controllers/site/secret_live/subscriber_controller.rb'
alias site-conts='cd /home/vagrant/clorets-ar/app/controllers/site'
alias site-conts-ex='cd /home/vagrant/clorets-excalibur/app/controllers/'
alias site-views='cd /home/vagrant/clorets-ar/app/views/site'
alias site-views-ex='cd /home/vagrant/clorets-excalibur/app/views/site'
alias sub-views-ex='cd /home/vagrant/clorets-excalibur/app/views/site/subscribers'
alias tro-views='cd /home/vagrant/clorets-ar/app/views/site/trophy/subscriber'
alias se-views='cd /home/vagrant/clorets-ar/app/views/site/secret_live/subscriber'
alias sub-views='cd /home/vagrant/clorets-ar/app/views/site/trophy/subscriber'
alias se-sub-views='cd /home/vagrant/clorets-ar/app/views/site/secret_live/subscriber'
alias conts-ex='cd /home/vagrant/clorets-excalibur/app/controllers'
alias api='cd /home/vagrant/clorets-ar/app/controllers/api'
alias api-ex='cd /home/vagrant/clorets-excalibur/app/controllers/vote_api'
alias models='cd /home/vagrant/clorets-ar/app/models'
alias models-ex='cd /home/vagrant/clorets-excalibur/app/models'
alias views='cd /home/vagrant/clorets-ar/app/views'
alias mig='cd /home/vagrant/clorets-ar/db/migrate'
alias admin='cd /home/vagrant/clorets-ar/app/admin'
rbenv shell 2.3.1
function runwebrick(){
  cd /home/vagrant/clorets-ar
  rails s -b 0.0.0.0
}
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
alias config='cd /home/vagrant/clorets-ar/config/'
alias configex='cd /home/vagrant/clorets-excalibur/config/'
alias spec='cd /home/vagrant/clorets-ar/spec'
alias tools='cd /home/vagrant/clorets-ar/tools'
alias lib='cd /home/vagrant/clorets-ar/lib'

alias run-webrick='cd /home/vagrant/clorets-ar; bundle exec rails s -b 0.0.0.0'
alias run-webrick-bg='cd /home/vagrant/clorets-ar; bundle exec rails s -b 0.0.0.0 &'

alias reset-db='cd ~/clorets-ar/; rake db:migrate:reset; rake db:seed'

##### Git #####
git config --global color.ui true

