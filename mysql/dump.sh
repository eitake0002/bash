#!/bin/bash
mysqldump -h localhost -P 3306 --single-transaction -u root -p panop > dump.sql

#mysqldump --single-transaction -u DBユーザ名 -p DB名 > 出力先ファイル名
