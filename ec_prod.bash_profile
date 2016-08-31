#!/bin/sh


# rbenv setting. 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# EC Prod Rails aliases. 
alias app='cd /home/ec2-user/autopost/current'

alias conts='cd /home/ec2-user/autopost/current/app/controllers/'
alias models='cd /home/ec2-user/autopost/current/app/models/'
alias views='cd /home/ec2-user/autopost/current/app/views/'
alias admin='cd /home/ec2-user/autopost/current/app/admin/'

alias js='cd /home/ec2-user/autopost/current/app/assets/javascripts'
alias css='cd /home/ec2-user/autopost/current/app/assets/stylesheets'

alias lib='cd /home/ec2-user/autopost/current/lib'
alias config='cd /home/ec2-user/autopost/current/config'
alias migrate='cd /home/ec2-user/autopost/current/db/migrate/'
alias tools='cd /home/ec2-user/autopost/current/tools/'
alias log='cd /home/ec2-user/autopost/current/log'

alias restart-unicorn='cd /home/ec2-user/autopost/current/tools/unicorn; sh unicorn.sh stop; sh unicorn.sh start'

# MySQL
function show-tables(){
  mysql -u root autopost_development -e 'show tables'
}
function desc-tables(){
  mysql -u root autopost_development -e 'desc articles'
  mysql -u root autopost_development -e 'desc crawl_sites'
}
function show-art-data() {
  mysql -u root autopost_development -e 'select * from articles\G'
}
