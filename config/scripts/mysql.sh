#!/bin/bash
service mysql stop
mysql_install_db
mysqld_safe --skip-grant-tables &
mysql -uroot -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root'); FLUSH PRIVILEGES;"
mysql -uroot -proot -e "set global innodb_file_format = BARRACUDA;"
mysql -uroot -proot -e "set global innodb_large_prefix = ON;"
service mysql stop
service mysql start
service apache2 reload
