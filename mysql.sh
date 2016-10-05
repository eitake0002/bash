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

# Select table.
function sel(){
  base-command "SELECT * FROM $1"
}

# Select table with specified column.
# param1: table_name
# param2: column
# Ex: sel-col users id
function sel-col(){
  base-command "SELECT $2 FROM $1"
}

# Select table with where clause.
# param1: table_name
# param2: column
# param3: value
# Ex: sel_wh users id 1
function sel-wh(){
  base-command "SELECT * FROM $1 WHERE $2 = $3"
}

# Select table with desc order.
# param1: table_name
# param2: column
# Ex: sel-ord-d users id
function sel-ord-d(){
  base-command "SELECT * FROM $1 ORDER BY $2 DESC"
}

# Select table with asc order.
# param1: table_name
# param2: column
# Ex: sel-ord-a users id
function sel-ord-a(){
  base-command "SELECT * FROM $1 ORDER BY $2 ASC"
}

#-----------------------------------------
# Case
#-----------------------------------------

# Simple case query.
# param1: table_name
# param2: column : default = id
# param3: value  : default = 1
# Ex: case-simple users id 1
function case-simple(){
  column=`[ $2 ] && $2 || echo "id"`
  value=`[ $3 ] && $3 ||  echo "1"`

  base-command "
    SELECT
      (
        CASE WHEN $column = 1 THEN 'yes'
             ELSE 'no' END
      )
    FROM $1
  "
}
