#!/bin/sh

#-----------------
# Access settings
#-----------------

export db_name=nenga-eto_development
export host=localhost
export port=3306
export user=root
export pass=''

#----------------
# MySQL settings
#----------------
function mysql-version(){
  mysql -u root -D mysql -e "SELECT version()"
}

#----------------
# Database
#----------------
alias show-dbs="mysql -u root -e 'show databases;'"

#----------------
# Table
#----------------
function show-tables(){
  mysql -u root $db_name -e 'show tables;'
}

function show-table-data(){
  mysql -u $user $db_name -e "SELECT * FROM $1"
}
