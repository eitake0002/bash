#!/bin/sh


# rbenv setting. 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# AWS keys
export AWS_ACCESS_KEY_ID='AKIAIM2VA2DY252774HA'
export AWS_SECRET_ACCESS_KEY='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'

# EC Prod Rails aliases.
alias app='cd /home/ec2-user/autopost/current'

alias conts='cd /home/ec2-user/autopost/current/app/controllers/'
alias models='cd /home/ec2-user/autopost/current/app/models/'
alias views='cd /home/ec2-user/autopost/current/app/views/'
alias admin='cd /home/ec2-user/autopost/current/app/admin/'

alias js='cd /home/ec2-user/autopost/current/app/assets/javascripts'
alias css='cd /home/ec2-user/autopost/current/app/assets/stylesheets'

alias lib='cd /home/ec2-user/autopost/current/lib'
alias amazon='cd ~/autopost/current/lib/amazon'
alias crawler='cd ~/autopost/current/lib/crawler'
alias scraper='cd ~/autopost/current/lib/scraper'

# Others
alias config='cd /home/ec2-user/autopost/current/config'
alias mig='cd /home/ec2-user/autopost/current/db/migrate/'
alias tools='cd /home/ec2-user/autopost/current/tools/'
alias log='cd /home/ec2-user/autopost/current/log'
alias data='cd ~/autopost/current/data'
alias sc='cd /home/ec2-user/autopost/current/scripts'

# Spec
alias spec='cd ~/autopost/current/spec'
alias spec-lib='cd ~/autopost/current/spec/lib'

alias restart-unicorn='cd /home/ec2-user/autopost/current/tools/unicorn; sh unicorn.sh stop; sh unicorn.sh start'

# Log 
alias vim-ng-access-log='vim /var/log/nginx/access.log'

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
