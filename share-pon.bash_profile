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
alias clo='cd /home/vagrant/share-pon'
alias clo-ex='cd /home/vagrant/clorets-excalibur'
alias app='cd /home/vagrant/share-pon'

# controllers
alias conts='cd /home/vagrant/share-pon/app/controllers'

# admins
alias admin='cd /home/vagrant/share-pon/app/admin'
alias admin-ex='cd /home/vagrant/clorets-excalibur/app/admin'

# views
alias views='cd /home/vagrant/share-pon/app/views'

# models
alias models='cd /home/vagrant/share-pon/app/models'

# Rspec
alias spec-models='cd ~/share-pon/spec/models'
alias spec-api='cd ~/share-pon/spec/controllers/api'
alias spec-conts='cd ~/share-pon/spec/controllers/'
alias spec-lib='cd ~/share-pon/spec/lib'

# others. 
alias mig='cd /home/vagrant/share-pon/db/migrate'
alias sc='cd /home/vagrant/share-pon/script'
alias log='cd ~/share-pon/log'
alias pub='cd ~/share-pon/public/'
alias config='cd /home/vagrant/share-pon/config/'
alias ini='cd /home/vagrant/share-pon/config/initializers'
alias loc='cd /home/vagrant/share-pon/config/locales'
alias spec='cd /home/vagrant/share-pon/spec'
alias tools='cd /home/vagrant/share-pon/tools'
alias lib='cd /home/vagrant/share-pon/lib'

# vim aliases
alias vim-tro-con='vim /home/vagrant/share-pon/app/controllers/site/trophy/subscriber_controller.rb'
alias vim-se-con='vim /home/vagrant/share-pon/app/controllers/site/secret_live/subscriber_controller.rb'
alias vim-seed='vim ~/share-pon/db/seeds.rb'
alias vim-car='vim /home/vagrant/share-pon/config/initializers/carrierwave.rb'

# Web server
alias run-webrick='cd /home/vagrant/share-pon; bundle exec rails s -b 0.0.0.0'
alias run-webrick-bg='cd /home/vagrant/share-pon; bundle exec rails s -b 0.0.0.0 &'
function kill-job(){
  kill -9 "%$1"
}
function runwebrick(){
  cd /home/vagrant/share-pon
  rails s -b 0.0.0.0
}

# MySQL database.
alias reset-db='cd ~/share-pon/; rake db:migrate:reset; rake db:seed' 

function show-vote-data() {
  mysql -u root clorets_ar_dev -e 'select * from neta_movies'
  mysql -u root clorets_ar_dev -e 'select * from neta_votes'
}
function show-tro-data(){
  mysql -u root clorets_ar_dev -e 'select * from trophies\G'
}
function show-tro-data-count(){
  mysql -u root clorets_ar_dev -e 'select count(*) from trophies'
}
function del-tro-data(){
  mysql -u root clorets_ar_dev -e 'delete from trophies'
}
function show-se-data(){
  mysql -u root clorets_ar_dev -e 'select * from secret_lives\G'
}
function del-se-data(){
  mysql -u root clorets_ar_dev -e 'delete from secret_lives'
}
function desc-tables(){
  mysql -u root clorets_ar_dev -e 'desc neta_movies'
  mysql -u root clorets_ar_dev -e 'desc neta_votes'
  mysql -u root clorets_ar_dev -e 'desc secret_lives'
  mysql -u root clorets_ar_dev -e 'desc trophies' 
}
function show-tables(){
  mysql -u root clorets_ar_dev -e 'show tables;'
}

