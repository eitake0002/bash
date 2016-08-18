#!/bin/bash

##### Centos6.5 #####
##### MySQL5.6 #####
sudo yum -y install http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
sudo yum -y install mysql 
sudo yum -y install mysql-devel 
sudo yum -y install mysql-server 
sudo yum -y install mysql-utilities

# Check installed 
rpm -qa | grep mysql
