#!/bin/sh

# MySQLが準備完了するのを待つ
echo "Waiting for MySQL to be ready..."
dockerize -wait tcp://$MYSQL_HOST:$MYSQL_TCP_PORT -timeout 60s

# sqldefを実行してスキーマを適用
echo "Running sqldef..."
mysqldef --user=$MYSQL_USER --password=$MYSQL_PWD --host=$MYSQL_HOST $MYSQL_DATABASE < $SQL_FILE_TO_MIGRATE_APPLICATION_DATABASE
