#!/bin/sh

# Edit this file.
alias bashedit-mysql='vim ~/bash_profile/mysql.sh'

#-----------------------------------------
# Access settings
# Paste below variables in ~/.bash_profile
#-----------------------------------------
#export db_name=database
#export host=localhost
#export port=3306
#export user=root
#export pass=pass

#-----------------------------------------
# Install MySQL5.6
#-----------------------------------------
function my-install(){
  sudo yum -y install http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
  sudo yum -y install mysql
  sudo yum -y install mysql-devel
  sudo yum -y install mysql-server
  sudo yum -y install mysql-utilities
}

#----------------------------------
# Base command
#----------------------------------
function base-command(){
  mysql -h $host -P $port -u $user $db_name -e "$1"
}

#----------------------------------
# MySQL settings
#----------------------------------

# Check my.cnf places
alias my-conf='mysql --help | grep my.cnf'

# Check mysql version.
function my-version(){
  mysql -u root -D mysql -e "SELECT version()"
}

# Show global status.
function global-status(){
  base-command 'SHOW GLOBAL STATUS'
}

# Show global variables.
function global-var(){
  base-command 'SHOW GLOBAL VARIABLES'
}

# Check mysql charactors.
function my-chars(){
  base-command "show variables like 'chara%'"
}

# Show datatime
function my-datetime(){
  base-command "SELECT CURRENT_DATE()"
}

#----------------------------------
# Connect to DB server
#---------------------------------- 
function my-connect(){
  mysql -h $host -P $port -u $user $db_name
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
  base-command "show tables"
}

function desc-table(){
  base-command "desc $1"
}

# Desc multiple tables.
# ex: desc-tables table_1 table_2
function desc-tables(){
  for x in "$@"
  do
    base-command "desc $x"
  done
}

# Desc all tables in database.
function desc-all-tables(){
  i=`expr 1`
  for table in `show-tables`; do
    if [ $i -ne 1 ]; then # Skip first row.
      echo $table
      base-command "desc $table"
    fi
    i=`expr $i + 1`
  done
}

#-----------------------------------------
# Exec query
#-----------------------------------------
function my-qry(){
  base-command "$1"
}

#-----------------------------------------
# Select.
#-----------------------------------------
function sel-table-data(){
  base-command "SELECT * FROM $1"
}

