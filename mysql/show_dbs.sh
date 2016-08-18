#!/bin/bash
mysql -h localhost \
      -P 3306 \
      -u root \
      -e 'show databases;'
