FROM debian:11.5

RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-server mariadb-client -y

RUN mkdir -p /run/mysqld/ && chown mysql:mysql /run/mysqld/

CMD ["mysqld", "--user=mysql"]

