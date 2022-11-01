FROM debian:11.5

RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-server=1:10.5.15-0+deb11u1 -y  && \
	apt-get install mariadb-client=1:10.5.15-0+deb11u1 -y && \
	apt-get install vim -y &&\
	apt-get install openrc -y

COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/script.sh /
COPY tools/svconfig /

RUN mkdir -p /run/mysqld/ && chown mysql:mysql /run/mysqld/
CMD ["chmod", "777", "script.sh"]
CMD ["mysqld"]
CMD ["bash", "script.sh"]
