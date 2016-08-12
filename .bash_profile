# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/go/bin
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export GOPATH=$HOME/go_program
eval "$(rbenv init -)"

export RAILS_ENV=development
export RAILS_APP=/home/ec2-user/autopost/current
export MECAB_PATH=/usr/lib64/libmecab.so.2

# Set original aliases.
alias app='cd /home/ec2-user/autopost/current/'
alias config='cd /home/ec2-user/autopost/current/config'
alias conts='cd /home/ec2-user/autopost/current/app/controllers/'
alias models='cd /home/ec2-user/autopost/current/app/models/'
alias views='cd /home/ec2-user/autopost/current/app/views/'
alias migrate='cd /home/ec2-user/autopost/current/db/migrate/'
alias lib='cd /home/ec2-user/autopost/current/lib/'
alias log='cd /home/ec2-user/autopost/current/log/'
alias spec='cd /home/ec2-user/autopost/current/spec/'
#alias tools='cd /home/ec2-user/autopost/current/tools/'
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
PS1='ec-dev \W$ '

##### UTIL  #####
alias sr='source ~/.bash_profile'
alias global='curl inet-ip.info'
alias bashedit='vim ~/.bash_profile'
function count(){
  while [ 1 == 1 ]
  do
    date
    sleep 1
  done
}

##### PYTHON #####
alias jango='cd /home/ec2-user/py/'
alias runjango='cd /home/ec2-user/py/; python manage.py runserver 0.0.0.0:8000 &'
alias ju='cd /home/ec2-user/py/autopost/jupyter'
alias runju='cd /home/ec2-user/py/autopost/jupyter; jupyter notebook &'
alias auto='cd /home/ec2-user/py/autopost'
alias com='cd /home/ec2-user/py/autopost/management/commands'
alias debugsql='cd /home/ec2-user/py/; python manage.py debugsqlshell'
alias tools='cd /home/ec2-user/py/tools'
alias rds='cd /home/ec2-user/py/tools/mysql'
#alias when you want to sync change to db. python manage.py migrate --run-syncdb
alias mig='cd /home/ec2-user/py/autopost/migrations;'
# Create super user on django admin.
# python manage.py createsuperuser
alias api='cd /home/ec2-user/py/mysite/api;'
alias mysite='cd /home/ec2-user/py/mysite/mysite/'

##### Hadoop #####
export HADOOP_HOME=/usr/hadoop-2.7.1
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$JAVA_HOME/bin:$PATH

alias hd='cd /usr/hadoop-2.7.1/'
