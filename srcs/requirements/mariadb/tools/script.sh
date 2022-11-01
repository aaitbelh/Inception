#!/bin/bash
cat .setup 2> /dev/null
if [ $? -ne 0 ];
then
	mysqld  &
	while [ $(ps -aux  | grep mysql | wc -l) -ne 2 ]
	do
		:
	done
	sleep 1
	cat svconfig | mysql -u root
	touch .setup
fi
