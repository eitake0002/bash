#!/bin/sh


# AWS keys
export AWS_ACCESS_KEY_ID='AKIAIM2VA2DY252774HA'
export AWS_SECRET_ACCESS_KEY='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'

# MySQL
db_name=autopost_production
host_name=autopost-production.coxocuskmguu.ap-northeast-1.rds.amazonaws.com
user_name=autopost_prod
pass=autopost

function  mysql-prod-access(){
  mysql -h $host_name -P 3306 -u $user_name -p'autopost' $db_name
}
function show-tables(){
  mysql -h $host_name -P 3306 -u $user_name -p'autopost' $db_name -e 'show tables'
}
function desc-tables(){
  mysql -u root autopost_development -e 'desc articles'
  mysql -u root autopost_development -e 'desc crawl_sites'
}
function desc-table(){
  mysql -h $host_name -P 3306 -u $user_name -p'autopost' $db_name -e "desc $1"
}
function show-art-data() {
  mysql -u root autopost_development -e 'select * from articles\G'
}
