FROM debian:11.5

RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-server=1:10.5.15-0+deb11u1 -y  && \
	apt-get install mariadb-client=1:10.5.15-0+deb11u1 -y && \
	apt-get install vim -y

RUN mkdir -p /run/mysqld/ && chown mysql:mysql /run/mysqld/

CMD ["mysqld", "--user=mysql"]

