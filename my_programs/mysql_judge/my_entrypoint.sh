#!/bin/bash

# 初始化数据目录 /var/lib/mysql
# --initialize-insecure 后续可无密码登录
mysqld --initialize-insecure --default-time-zone=SYSTEM --autocommit=1

# mysqld --daemonize 后台启动
# 默认--socket=/var/run/mysqld/mysqld.sock
if ! mysqld --daemonize --skip-networking --default-time-zone=SYSTEM --socket=/var/run/mysqld/mysqld.sock; then
	echo "Unable to start server." >&2
fi

# init 创建数据库
mysql --protocol=socket -uroot -hlocalhost \
	--socket=/var/run/mysqld/mysqld.sock --comments \
	--batch 2>/dev/null --skip-column-names \
	<<< "CREATE DATABASE IF NOT EXISTS mydb;" > /dev/null


if [ -f /data/init.sql ]; then
	# init 数据库初始化文件
	mysql --protocol=socket -uroot -hlocalhost \
		--socket=/var/run/mysqld/mysqld.sock --comments \
		--batch 2>/dev/null --skip-column-names \
		< /data/init.sql > /dev/null
fi

# 同样的参数中，后面的参数会覆盖前面的参数
# run sql
mysql --protocol=socket -uroot -hlocalhost \
	--socket=/var/run/mysqld/mysqld.sock --comments \
	--batch 2>/dev/null --skip-column-names \
	--database=mydb <<< "$1" \
	| tr '\t' '|' 

# test
# mysql --protocol=socket -uroot -hlocalhost \
# 	--socket=/var/run/mysqld/mysqld.sock --comments \
# 	--batch 2>/dev/null --skip-column-names \
# 	--database=mydb <<< "select 1,2,3,'hello,world'" \
# 	| tr '\t' '|' 
