#!/bin/sh

alias bashedit-mysql='vim ~/bash_profile/mysql/mysql.bash_profile'

#----------------------------------
# Access settings
#----------------------------------
function setup(){
  echo 'export db_name=database'
  echo 'export host=localhost'
  echo 'export port=3306'
  echo 'export user=root'
  echo 'export pass='
}

#----------------------------------
# MySQL settings
#----------------------------------

# Check my.cnf places
aliase check-my-conf='mysql --help | grep my.cnf'

# Check mysql version.
function mysql-version(){
  mysql -u root -D mysql -e "SELECT version()"
}

#----------------------------------
# Base command
#----------------------------------
function base-command(){
  mysql -h $host -P $port -u $user $db_name -e "$1"
}

#----------------------------------
# Database
#----------------------------------
function show-dbs(){
  base-command 'show databases'
}

#----------------------------------
# Table
#----------------------------------
function show-tables(){
  base-command 'show tables'
}

function desc-table(){
  base-command "desc $1"
}

function show-table-data(){
  base-command "SELECT * FROM $1"
}
