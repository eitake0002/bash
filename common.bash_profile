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

##### Go settings#####
export PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/go/bin
export GOPATH=$HOME/go_program

##### Rails settings #####
export RAILS_ENV=development
export RAILS_APP=/home/ec2-user/autopost/current
export MECAB_PATH=/usr/lib64/libmecab.so.2

##### Autopost settings #####
alias app='cd /home/ec2-user/autopost/current/'
alias config='cd /home/ec2-user/autopost/current/config'
alias conts='cd /home/ec2-user/autopost/current/app/controllers/'
alias models='cd /home/ec2-user/autopost/current/app/models/'
alias views='cd /home/ec2-user/autopost/current/app/views/'
alias migrate='cd /home/ec2-user/autopost/current/db/migrate/'
alias lib='cd /home/ec2-user/autopost/current/lib/'
alias log='cd /home/ec2-user/autopost/current/log/'
alias spec='cd /home/ec2-user/autopost/current/spec/'
alias uni='cd /home/ec2-user/autopost/current/tools/unicorn/;sh unicorn.sh stop; sh unicorn.sh start'
alias gg='cd /home/ec2-user/gg/'
alias css='cd /home/ec2-user/autopost/current/app/assets/stylesheets'
alias helper='cd /home/ec2-user/autopost/current/app/helpers'
alias js='cd /home/ec2-user/autopost/current/app/assets/javascripts'
alias vend='cd /home/ec2-user/autopost/current/vendor/'
alias stamp='cd /home/ec2-user/stamp_template/stamp-v1/stamp-html/gradient-bg/6-home-style-six'
alias admin='cd /home/ec2-user/autopost/current/app/admin/'
alias spec='cd /home/ec2-user/autopost/current/spec'
alias ipadic='cd /usr/lib64/mecab/dic/ipadic/'
alias emr='cd /home/ec2-user/emr/'
alias gogo='cd /home/ec2-user/go_program/'
alias jango='cd /home/ec2-user/django/mybook'
alias si='cd /home/ec2-user/sibyl/'
alias src='cd /home/ec2-user/go_program/src'
alias mg='cd /home/ec2-user/go_program/src/mongo'
alias cr='cd /home/ec2-user/go_program/src/crawler'
alias cl='cd /home/ec2-user/clang/'
alias py='cd /home/ec2-user/py'

##### Prompt setting #####
host_name=`hostname`
PS1="${host_name} \W$ "

##### UTILS #####
alias sr='cd; source ~/.bash_profile'
alias global='curl inet-ip.info'
alias bashedit='vim ~/.bash_profile'
alias bs='cd ~/bash_profile'
alias bashcp='cp ~/.bash_profile ~/bash_profile/bash_profile'
function count(){
  while [ 1 == 1 ]
  do
    date
    sleep 1
  done
}
function fin() {
  find ./ -type f -print | xargs grep $1
}
alias sql='cd /home/vagrant/bash_profile/mysql'
alias killju='pgrep jupyter | xargs kill -9'

##### MySQL #####
alias showdbs="mysql -u root -e 'show databases;'"
function showtables(){
  mysql -u root $1 -e 'show tables;'
}

##### Django #####
alias jango='cd /home/ec2-user/py/'
alias jango-version='python -c "import django; print(django.get_version())"'
alias runjango='cd /home/ec2-user/py/; python manage.py runserver 0.0.0.0:8000 &'
alias debugsql='cd /home/ec2-user/py/; python manage.py debugsqlshell'
alias create-super-user='python manage.py createsuperuser'
alias api='cd /home/ec2-user/py/mysite/api;'
alias mysite='cd /home/ec2-user/py/mysite/mysite/'
alias mig='cd /home/ec2-user/py/autopost/migrate/'

##### Jupyter #####
alias ju='cd /home/ec2-user/py/autopost/jupyter'
alias runju='cd /home/ec2-user/py/autopost/jupyter; jupyter notebook --debug > jupyter_log.log 2>&1 &'

#### Python ####
alias auto='cd /home/ec2-user/py/autopost'
alias com='cd /home/ec2-user/py/autopost/management/commands'
alias tools='cd /home/ec2-user/py/tools'
alias rds='cd /home/ec2-user/py/tools/mysql'

##### Hadoop #####
export HADOOP_HOME=/usr/hadoop-2.7.1
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$JAVA_HOME/bin:$PATH
alias hd='cd /usr/hadoop-2.7.1/'

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

