mysql -u root -e "create database wordpress;"
mysql -u root -e "create user 'aaitbelh'@'%' identified by '755608';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'aaitbelh'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"