#!/bin/bash
#mysqldump -u ユーザー名 -p -t データベース名 テーブル1 テーブル2 ... > ダンプファイル名
mysqldump -u root -t autopost_development crawl_sites > /home/ec2-user/autopost/current/data/crawl_sites_dump.sql
